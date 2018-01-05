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
	
	
	public class SwfTool extends MovieClip {
		
		private var _btn_selectSwf:Button;
		private var _comboBox_swf:ComboBox;
		private var _comboBox_exportRequest:ComboBox;
		private var _btn_export:Button;
		
		public function SwfTool() {
			if(stage)init();
			else addEventListener(Event.ADDED_TO_STAGE,init);
		}
		private function init(e:Event=null):void{
			e&&removeEventListener(Event.ADDED_TO_STAGE,init);
			this.addEventListener(Event.REMOVED_FROM_STAGE,removedFromStage);
			
			_btn_selectSwf=this["selectSwfButton"];
			_comboBox_swf=this["swfComboBox"];
			_comboBox_exportRequest=this["exportRequestComboBox"];
			_btn_export=this["exportButton"];
			this.addEventListener(MouseEvent.CLICK,clickHandler);
		}
		
		private function clickHandler(e:MouseEvent):void{
			switch(e.target){
				case _btn_selectSwf:
					selectSwf();
					break;
				case _btn_export:
					export();
					break;
				default:
			}
		}
		
		private function selectSwf():void{
			FileUtil.browseForOpen("选择swf文件",[new FileFilter("swf文件","*.swf")],selected);
		}
		private function selected(file:File):void{
			//trace(file.nativePath);
			var loaderContext:LoaderContext=new LoaderContext();
			loaderContext.allowCodeImport=true;
			loaderContext.allowLoadBytesCodeExecution=true;
			
			var loader:Loader=new Loader();
			loader.load(new URLRequest(file.nativePath),loaderContext);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadSwfComplete);
			
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
			var swfReader:SWFReader=new SWFReader();
			
			var swfBytes:SWFByteArray=new SWFByteArray(loaderInfo.bytes);
			var swfReadResult:SWFReadResult=swfReader.read(swfBytes);
			
			//
			var i:int=swfReadResult.tagMetadata.length;
			
			while(--i>=0){
				//trace(swfReadResult.tagMetadata[i] is);
			}
            
            trace(swfReadResult.swf.tags[1]);
		}
		
		
		
		private function export():void{
			
		}
		
		private function removedFromStage(e:Event):void{
			this.removeEventListener(Event.REMOVED_FROM_STAGE,removedFromStage);
			
		}
	}
	
}
