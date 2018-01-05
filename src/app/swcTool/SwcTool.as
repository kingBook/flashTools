package app.swcTool {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import fl.controls.ComboBox;
	import fl.controls.TextArea;
	import app.LocalUtil;
	import app.FileUtil;
	import zip.fzip.FZip;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	import flash.display.Loader;
	import flash.system.LoaderContext;
	import flash.system.ApplicationDomain;
	import flash.utils.Endian;
	import flash.display.LoaderInfo;
	
	
	public class SwcTool extends MovieClip {
		
		private var _comboBox_swc:ComboBox;
		private var _comboBox_exportRequest:ComboBox;
		private var _fzip:FZip;
		private var _loader:Loader;
		private var _classNames:Vector.<String>;
		private var _curSwcPaths:Vector.<String>;
		private var _curLoadId:int=0;
		
		public function SwcTool() {
			if(stage)init();
			else addEventListener(Event.ADDED_TO_STAGE,init);
		}
		private function init(e:Event=null):void{
			e&&removeEventListener(Event.ADDED_TO_STAGE,init);
			this.addEventListener(Event.REMOVED_FROM_STAGE,removedFromStage);
			
			_comboBox_swc=this["swcComboBox"];
			_comboBox_exportRequest=this["exportRequestComboBox"];
			export();
			
		}

		private function export():void{
			trace("export");
			getSwcPathsClassNames(new <String>["aa.swc"]);
			this.addEventListener("allComplete",allComplete);
		}
		
		private function allComplete(e:Event):void{
			trace(_classNames);
		}
		
		private function getSwcPathsClassNames(swcPathList:Vector.<String>):void{
			_curSwcPaths=swcPathList;
			loadSwc();
		}
		
		private function loadSwc():void{
			var swcPath:String=_curSwcPaths[_curLoadId];
			_fzip=new FZip();
			_fzip.load(new URLRequest(swcPath));
			_fzip.addEventListener(Event.COMPLETE, swcLoaded);
			_curLoadId++;
		}
		
		private function swcLoaded(e:Event):void{
			_fzip.removeEventListener(Event.COMPLETE, swcLoaded);
			var swfData:ByteArray=_fzip.getFileByName("library.swf").content;
			_fzip=null;
						
			var context:LoaderContext = new LoaderContext();
			context.allowCodeImport=true;
			context.applicationDomain = ApplicationDomain.currentDomain;
			_loader=new Loader();
			_loader.loadBytes(swfData, context);
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, swfLoaded);
		}
		
		private function swfLoaded(e:Event):void{
			e.target.removeEventListener(Event.COMPLETE, swfLoaded);
			_loader=null;
			
			//获取加载完swf的所有类名
			var bytes:ByteArray=LoaderInfo(e.target).bytes;
            bytes.endian=Endian.LITTLE_ENDIAN;
            bytes.writeBytes(bytes,8);
            //bytes.uncompress();
            bytes.position=Math.ceil(((bytes[0]>>>3)*4+5)/8)+4;
            while(bytes.bytesAvailable>2){
                var head:int=bytes.readUnsignedShort();
                var size:int=head&63;
                if (size==63)size=bytes.readInt();
                if (head>>6!=76)bytes.position+=size;
                else {
                    head=bytes.readShort();
                    for(var i:int=0;i<head;i++){
                        bytes.readShort();
                        size=bytes.position;
                        while(bytes.readByte()!=0){}
                        size=bytes.position-(bytes.position=size);
						_classNames||=new Vector.<String>();
						_classNames.push(bytes.readUTFBytes(size));
                    }
                }
            }
			
			//回调加载swc，一直加载到最后一个swc
			if(_curLoadId<_curSwcPaths.length-1){
				loadSwc();
			}else{
				_curSwcPaths=null;
				_curLoadId=0;
				this.dispatchEvent(new Event("allComplete"));
			}
		}
		
		private function removedFromStage(e:Event):void{
			this.removeEventListener(Event.REMOVED_FROM_STAGE,removedFromStage);
			if(_fzip)_fzip.removeEventListener(Event.COMPLETE,swcLoaded);
			if(_loader)_loader.removeEventListener(Event.COMPLETE, swfLoaded);
			this.removeEventListener("allComplete",allComplete);
		}
	}
	
}
