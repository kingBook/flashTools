package app.swfTool{
	import flash.system.Worker;
	import flash.system.WorkerDomain;
	import flash.system.MessageChannel;
	import flash.system.WorkerState;
	import flash.utils.ByteArray;
	import flash.events.Event;
	
	public class WorkerSwfToXML{
		
		[Embed(source="../../../workerSwfs/SwfToXML.swf", mimeType="application/octet-stream")]
		private static const SwfToXML_ByteClass:Class;
		
		private var _commandChannel:MessageChannel;
		private var _progressChannel:MessageChannel;
		private var _resultChannel:MessageChannel;
		private var _bytes:ByteArray;
		private var _swfName:String;
		private var _onComplete:Function;
		private var _worker:Worker;
		
		public function WorkerSwfToXML(){
			super();
		}
		
		/**
		 * 解析swf字节数组转为xml
		 * @param bytes swf字节数组
		 * @param swfName swf名称
		 * @param onComplete function(swfName:String,xml:XML):void;
		 **/
		public function parseSwfToXML(bytes:ByteArray,swfName:String,onComplete:Function):void{
			_bytes=bytes;
			_swfName=swfName;
			_onComplete=onComplete;
			
			_worker=WorkerDomain.current.createWorker(new SwfToXML_ByteClass());
			
			_commandChannel=Worker.current.createMessageChannel(_worker);
			_worker.setSharedProperty("commandChannel",_commandChannel);
			
			_progressChannel=_worker.createMessageChannel(Worker.current);
			_progressChannel.addEventListener(Event.CHANNEL_MESSAGE, onProgressMessage);
			_worker.setSharedProperty("progressChannel", _progressChannel);
			
			_resultChannel=_worker.createMessageChannel(Worker.current);
			_resultChannel.addEventListener(Event.CHANNEL_MESSAGE, onResultMessage);
			_worker.setSharedProperty("resultChannel", _resultChannel);
			
			_worker.addEventListener(Event.WORKER_STATE,onWorkerStateChange);
			_worker.start();
		}
		
		private function onWorkerStateChange(e:Event):void{
			var worker:Worker=e.target as Worker;
			if(worker.state==WorkerState.RUNNING){
				_commandChannel.send(["start",_bytes]);
			}
		}
		
		private function onProgressMessage(e:Event):void{
			trace("onProgressMessage:",_progressChannel.receive());
		}
		
		private function onResultMessage(e:Event):void{
			var result:XML=_resultChannel.receive() as XML;
			if(_onComplete!=null){
				_onComplete(_swfName,result);
			}
			onDestroy();
		}
		
		private function onDestroy():void{
			if(_worker){
				_worker.removeEventListener(Event.WORKER_STATE,onWorkerStateChange);
				_worker=null;
			}
			if(_progressChannel){
				_progressChannel.removeEventListener(Event.CHANNEL_MESSAGE, onProgressMessage);
				_progressChannel=null;
			}
			if(_resultChannel){
				_resultChannel.removeEventListener(Event.CHANNEL_MESSAGE, onResultMessage);
				_resultChannel=null;
			}
			_commandChannel=null;
			_bytes=null;
			_onComplete=null;
		}
		
		
	};
}