package app.swfTool {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import fl.controls.Button;
	import fl.controls.ComboBox;
	import flash.events.MouseEvent;
	import fl.controls.TextArea;
	import app.LocalUtil;
	import app.FileUtil;
	import flash.net.FileFilter;
	import flash.filesystem.File;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.display.LoaderInfo;
	import flash.utils.ByteArray;
	import app.swfTool.SWFReader;
	import app.swfTool.SWFReadResult;
	import flash.system.LoaderContext;
	import app.swfTool.swf.tags.SWFTag;
	import fl.controls.List;
	import flash.utils.getTimer;
	import flash.utils.Dictionary;
	
	public class SwfTool extends MovieClip {
		
		private var _isUseWorkerParse:Boolean=true;
		private var _btn_addSwf:Button;
		private var _btn_addSwfFolder:Button;
		private var _list_swf:List;
		private var _btn_deleteInvalidItems:Button;
		private var _btn_deleteSelectedItems:Button;
		private var _btn_deleteAllItems:Button;
		private var _btn_selectExportFolder:Button;
		private var _comboBox_exportFolder:ComboBox;
		private var _btn_export:Button;
		private var _textArea:TextArea;
		//
		private var _swfReadResult:SWFReadResult;
		
		public function SwfTool() {
			if(stage)init();
			else addEventListener(Event.ADDED_TO_STAGE,init);
		}
		private function init(e:Event=null):void{
			e&&removeEventListener(Event.ADDED_TO_STAGE,init);
			this.addEventListener(Event.REMOVED_FROM_STAGE,removedFromStage);
			
			_btn_addSwf=this["addSwfButton"];
			_btn_addSwfFolder=this["addSwfFolderButton"];
			_list_swf=this["swfList"];
			_btn_deleteInvalidItems=this["deleteInvalidItemsButton"];
			_btn_deleteSelectedItems=this["deleteSelectedItemsButton"];
			_btn_deleteAllItems=this["deleteAllItemsButton"];
			_btn_selectExportFolder=this["selectExportFolderButton"];
			_comboBox_exportFolder=this["exportFolderComboBox"];
			_btn_export=this["exportButton"];
			_textArea=this["textArea"];
			this.addEventListener(MouseEvent.CLICK,clickHandler);
			//
			//
			//导出位置为空时，默认导出到桌面
			if(_comboBox_exportFolder.length<=0){
				_comboBox_exportFolder.addItemAt({label:File.desktopDirectory.nativePath},0);
			}
		}
		
		/**添加swf文件到列表 */
		private function addItemToSwfList(swfFile:File):void{
			if(hasItem(swfFile))return;
			_list_swf.addItem({label:swfFile.nativePath});
		}
		
		/**检查swf列表中是否有指定swf文件 */
		private function hasItem(swfFile:File):Boolean{
			var result:Boolean=false;
			for(var i:int=0;i<_list_swf.length;i++){
				var item:*=_list_swf.getItemAt(i);
				if(item.label==swfFile.nativePath){
					result=true;
					break;
				}
			}
			return result;
		}
		
		private function clickHandler(e:MouseEvent):void{
			switch(e.target){
				case _btn_addSwf:
					FileUtil.browseForOpenMultiple("选择swf文件",[new FileFilter("swf文件","*.swf")],selectedSwfs);
					break;
				case _btn_addSwfFolder:
					FileUtil.browseForDirectory("选择包含swf的文件夹",selectedSwfFolder);
					break;
				case _btn_deleteInvalidItems:
					
					break;
				case _btn_deleteSelectedItems:
					var items:Array=_list_swf.selectedItems;
					for(var i:uint=0;i<items.length;i++){
						_list_swf.removeItem(items[i]);
					}
					break;
				case _btn_deleteAllItems:
					_list_swf.removeAll();
					break;
				case _btn_selectExportFolder:
					FileUtil.browseForDirectory("选择导出位置",selectedExportFolder);
					break;
				case _btn_export:
					export();
					break;
				default:
			}
		}
		
		private function selectedSwfs(files:Array):void{
			for(var i:uint=0;i<files.length;i++){
				var file:File=files[i];
				//trace(file.nativePath);
				//
				addItemToSwfList(file);
			}
			
		}
		private function selectedSwfFolder(folderFile:File):void{
			var list:Array=folderFile.getDirectoryListing();
			for(var i:uint=0;i<list.length;i++){
				var file:File=list[i];
				if(file.extension&&file.extension.toLocaleLowerCase()=="swf"){
					addItemToSwfList(file);
				}
			}
			//trace(file.nativePath);
		}
		private function selectedExportFolder(file:File):void{
			//trace(file.nativePath);
			_comboBox_exportFolder.addItemAt({label:file.nativePath},0);
		}
		private function loadSwfComplete(e:Event):void{
			e.target.removeEventListener(Event.COMPLETE,loadSwfComplete);
			//
			var loaderInfo:LoaderInfo=LoaderInfo(e.target);
			//
			//var bytes:ByteArray=loaderInfo.bytes;
			//bytes.position=8;
			//
			this.stage.addChild(loaderInfo.content);
			
			var swfName:String=loaderInfo.url.substring(loaderInfo.url.lastIndexOf("/")+1,loaderInfo.url.lastIndexOf("."));
			var xml:XML;
			if(_isUseWorkerParse){
				var workerSwfToXML:WorkerSwfToXML=new WorkerSwfToXML();
				workerSwfToXML.parseSwfToXML(loaderInfo.bytes,swfName,onWorkerSwfToXMLComplete);
				//trace("start convert "+swfName);
			}else{
				var swfReader:SWF10Reader=new SWF10Reader();
				
				var swfBytes:SWFByteArray=new SWFByteArray(loaderInfo.bytes);
				var time:int=getTimer();
				var swfReadResult:SWFReadResult=swfReader.read(swfBytes);
				trace("swfReadResult:",getTimer()-time);
				_swfReadResult=swfReadResult;
				//
				var i:int=swfReadResult.tagMetadata.length;
				//
				time=getTimer();
				var tags:Vector.<SWFTag>=swfReadResult.swf.tags;
				xml=<Root />;
				for(i=0;i<tags.length;i++){
					xml.appendChild(XML(tags[i].toXMLString()));
				}
				trace("out xml:",getTimer()-time);
				//trace(path);
				time=getTimer();
				saveSwfXML(swfName,xml);
				trace("saveXML:",getTimer()-time);
			}
		}
		
		private function onWorkerSwfToXMLComplete(swfName:String,xml:XML):void{
			saveSwfXML(swfName,xml);
			//计算进度
			print(swfName+".swf =====complete");
		}
		
		private function saveSwfXML(swfName:String,xml:XML):void{
			var path:String=_comboBox_exportFolder.getItemAt(0).label+"\\"+swfName+".xml";
			var xmlString:String="<?xml version=\"1.0\" encoding=\"UTF_8\"?>\n";
			xmlString+=xml.toXMLString();
			FileUtil.writeFile(path,xmlString);
				
		}
		
		private function export():void{
			var loaderContext:LoaderContext=new LoaderContext();
			loaderContext.allowCodeImport=true;
			loaderContext.allowLoadBytesCodeExecution=true;
			for(var i:uint=0;i<_list_swf.length;i++){
				var item:*=_list_swf.getItemAt(i);
				var loader:Loader=new Loader();
				loader.load(new URLRequest(item.label),loaderContext);
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadSwfComplete);
			}
		}
		
		private function print(text:String,color:String="#0000ff"):void{
			var date:Date=new Date();
			_textArea.htmlText+=(date.hours+":"+date.minutes+":"+date.seconds+" ")+"<font color=\'"+color+"\'>"+text+"</font>\n"
		}
		
		private function removedFromStage(e:Event):void{
			this.removeEventListener(Event.REMOVED_FROM_STAGE,removedFromStage);
			
		}
	}
	
}
