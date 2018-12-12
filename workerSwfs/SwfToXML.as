package {
	import flash.display.Sprite;
	import flash.system.MessageChannel;
	import flash.system.Worker;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import app.swfTool.SWF10Reader;
	import app.swfTool.SWFReadResult;
	import app.swfTool.swf.tags.SWFTag;
	import app.swfTool.SWFByteArray;

	public class SwfToXML extends Sprite{
		
		private var _commandChannel:MessageChannel;
		private var _progressChannel:MessageChannel;
		private var _resultChannel:MessageChannel;
		
		public function SwfToXML(){
			super();
			init();
		}
		
		private function init():void{
			_commandChannel=Worker.current.getSharedProperty("commandChannel") as MessageChannel;
			_progressChannel=Worker.current.getSharedProperty("progressChannel") as MessageChannel;
			_resultChannel=Worker.current.getSharedProperty("resultChannel") as MessageChannel;
			if(_commandChannel){
				_commandChannel.addEventListener(Event.CHANNEL_MESSAGE,onCommandMessage);
			}
		}
		
		private function onCommandMessage(e:Event):void{
			if(!_commandChannel.messageAvailable)return;
			
			var message:Array=_commandChannel.receive() as Array;
			if(message&&message[0]=="start"){
				var bytes:ByteArray=message[1];
				//
				var swfReader:SWF10Reader=new SWF10Reader();
				var swfBytes:SWFByteArray=new SWFByteArray(bytes);
				var swfReadResult:SWFReadResult=swfReader.read(swfBytes);
				//
				var i:int=swfReadResult.tagMetadata.length;
				var tags:Vector.<SWFTag>=swfReadResult.swf.tags;
				var xml:XML=<Root />;
				for(i=0;i<tags.length;i++){
					xml.appendChild(XML(tags[i].toXMLString()));
				}
				_resultChannel.send(xml);
				
				onDestroy();
			}
		}
		
		private function onDestroy():void{
			if(_commandChannel){
				_commandChannel.removeEventListener(Event.CHANNEL_MESSAGE,onCommandMessage);
				_commandChannel=null;
			}
			_progressChannel=null;
			_resultChannel=null;
			
		}
		
		
	};
}