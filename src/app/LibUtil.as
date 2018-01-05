package app{
	import flash.display.MovieClip;
	import flash.system.ApplicationDomain;

	public class LibUtil{
		
		static public function getDefMovie(defName:String):MovieClip{
			return getDefObj(defName) as MovieClip;
		}
		
		static public function getDefObj(defName:String):*{
			var domain:ApplicationDomain=ApplicationDomain.currentDomain;
			var c:Class=domain.getDefinition(defName) as Class;
			return new c();
		}
	};
}