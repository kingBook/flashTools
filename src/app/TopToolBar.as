package app {
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import fl.controls.ComboBox;
	import flash.events.Event;
	
	public class TopToolBar{
		private var _comboBox_list:ComboBox;
		private var _parent:Sprite;
		private var _curTool:MovieClip;
		private var _toolParent:Sprite;
		public static function create(parent:Sprite):TopToolBar{
			var instance:TopToolBar=new TopToolBar(parent);
			return instance;
		}
		
		public function TopToolBar(parent:Sprite){
			_parent=parent;
			var mc:MovieClip=LibUtil.getDefMovie("TopToolBar_mc");
			_parent.addChild(mc);
			_comboBox_list=mc.getChildByName("comboBox_list") as ComboBox;
			_comboBox_list.addItem({label:"字体精简工具",data:"字体精简工具"});
			_comboBox_list.addItem({label:"box2d节点工具",data:"box2d节点工具"});
			_comboBox_list.addItem({label:"图片调整工具",data:"图片调整工具"});
			_comboBox_list.addItem({label:"swf解析工具",data:"swf解析工具"});
			_comboBox_list.addItem({label:"swc配置工具",data:"swc配置工具"});
			_comboBox_list.addEventListener(Event.CHANGE,comboBoxChange);
			
			_toolParent=new Sprite();
			_toolParent.x=0;
			_toolParent.y=40;
			_parent.addChild(_toolParent);
			
			//默认创建字体精简工具
			//_comboBox_list.selectedItem=_comboBox_list.getItemAt(0);
			//createTool("app.fontTool.FontTool");
			
			//默认创建swf解析工具
			_comboBox_list.selectedItem=_comboBox_list.getItemAt(3);
			createTool("app.swfTool.SwfTool");
			
			//默认创建swc配置工具
			//_comboBox_list.selectedItem=_comboBox_list.getItemAt(4);
			//createTool("app.swcTool.SwcTool");
			
			
		}
		
		/**切换当前工具*/
		private function comboBoxChange(e:Event):void{
			if(_curTool.parent)_curTool.parent.removeChild(_curTool);
			var data:String=_comboBox_list.selectedItem.data;
			switch(data){
				case "字体精简工具":
					createTool("app.fontTool.FontTool");
					break;
				case "box2d节点工具":
					
					break;
				case "图片调整工具":
					
					break;
				case "swf解析工具":
					createTool("app.swfTool.SwfTool");
					break;
				case "swc配置工具":
					createTool("app.swcTool.SwcTool");
				default:
			}
		}
		
		private function createTool(defName:String):void{
			if(_curTool){
				if(_curTool.parent)_curTool.parent.removeChild(_curTool);
			}
			_curTool=LibUtil.getDefMovie(defName);
			_toolParent.addChild(_curTool);
		}
		
		private function dispose():void{
			_comboBox_list.removeEventListener(Event.CHANGE,comboBoxChange);
		}
		
	}
	
}
