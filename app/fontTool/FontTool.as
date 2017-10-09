package app.fontTool {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import fl.controls.Button;
	import fl.controls.ComboBox;
	import flash.events.MouseEvent;
	import fl.controls.TextArea;
	import app.LocalUtil;
	import app.FileUtil;
	import flash.filesystem.File;
	import flash.net.FileFilter;
	import flash.filesystem.FileStream;
	import flash.filesystem.FileMode;
	
	
	public class FontTool extends MovieClip {
		
		private var _btn_selectFont:Button;
		private var _comboBox_font:ComboBox;
		//private var _comboBox_exportRequest:ComboBox;
		private var _btn_export:Button;
		private var _btn_addNum:Button;
		private var _btn_addUpper:Button;
		private var _btn_addLower:Button;
		private var _btn_clear:Button;
		private var _textArea:TextArea;
		
		public function FontTool() {
			if(stage)init();
			else addEventListener(Event.ADDED_TO_STAGE,init);
		}
		private function init(e:Event=null):void{
			e&&removeEventListener(Event.ADDED_TO_STAGE,init);
			this.addEventListener(Event.REMOVED_FROM_STAGE,removedFromStage);
			
			_btn_selectFont=this.selectFontButton;
			_comboBox_font=this.fontComboBox;
			//_comboBox_exportRequest=this.exportRequestComboBox;
			_btn_export=this.exportButton;
			_btn_addNum=this.addNumButton;
			_btn_addUpper=this.addUpperButton;
			_btn_addLower=this.addLowerButton;
			_btn_clear=this.clearButton;
			_textArea=this.textArea;
			this.addEventListener(MouseEvent.CLICK,clickHandler);
						
			//添加系统字体到列表
			var file:File=new File("C:\\Windows\\Fonts");
			var fileList:Array=file.getDirectoryListing();
			for(var i:int=0;i<fileList.length;i++){
				var temFile:File=File(fileList[i]);
				if(temFile.extension.toLowerCase()=="ttf"){
					_comboBox_font.addItem({label:temFile.name,data:temFile.nativePath});
				}
			}
		}
		
		private function clickHandler(e:MouseEvent):void{
			switch(e.target){
				case _btn_selectFont:
					selectFont();
					break;
				case _btn_clear:
					clear();
					break;
				case _btn_addNum:
					addNum();
					break;
				case _btn_addUpper:
					addUpper();
					break;
				case _btn_addLower:
					addLower();
					break;
				case _btn_export:
					export();
					break;
				default:
			}
		}
		
		private function selectFont():void{
			var fileFilter:FileFilter=new FileFilter("字体","*.ttf;*.TTF","*.ttf;*.TTF");
			FileUtil.browseForOpen("选择字体",[fileFilter],selectFonted);
		}
		private function selectFonted(file:File):void{
			var item:*={label:file.name,data:file.nativePath};
			_comboBox_font.addItemAt(item,0);
			_comboBox_font.selectedItem=item;
		}
		
		private function clear():void{
			_textArea.text="";
		}
		private function addNum():void{
			_textArea.text+=LocalUtil.getNumStrings();
		}
		private function addUpper():void{
			_textArea.text+=LocalUtil.getUpperStrings();
		}
		private function addLower():void{
			_textArea.text+=LocalUtil.getLowerStrings();
		}
		
		private function export():void{
			//在flashIDE中调试是无效的，必须发布后才有效
			FileUtil.browseForSave("另存为",saveFont);
		}
		private function saveFont(file:File):void{
			var oldFontFile:String=_comboBox_font.selectedItem.data;
			
			//新文件
			var newFontName:String=file.name;
			var newFontExtension:String=".ttf";
			if(newFontName.match(/[.TTF]|[.ttf]/g).length>0)newFontExtension="";//如果文件名有扩展名.ttf/.TTF,则不加扩展名保存
			var newFontFile:String=file.parent.nativePath+"\\"+newFontName+newFontExtension;
			
			//命令行
			//java -jar sfnttool.jar -s "这是要提取的字符 " C:\Windows\Fonts\ahronbd.ttf C:\Users\Administrator\Desktop\ad.ttf
			var cmd:String="java -jar sfnttool.jar -s "
			+"\""  +_textArea.text+" "  +"\" "
			+oldFontFile+" "
			+newFontFile;
			//trace(cmd);
			FileUtil.runDos(cmd,function():void{
				FileUtil.openDirectoryWithFile(new File(newFontFile));
			});
			
		}
		
		private function removedFromStage(e:Event):void{
			this.removeEventListener(Event.REMOVED_FROM_STAGE,removedFromStage);
			
		}
	}
	
}
