package app {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Main extends MovieClip {
		
		
		public function Main() {
			if(stage)init();
			else addEventListener(Event.ADDED_TO_STAGE,init);
		}
		private function init(e:Event=null):void{
			e&&removeEventListener(Event.ADDED_TO_STAGE,init);
			FileUtil.init();
			TopToolBar.create(this);
		}
	}
	
}
