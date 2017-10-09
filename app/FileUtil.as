package app{
	import flash.filesystem.File;
	import flash.filesystem.FileStream;
	import flash.filesystem.FileMode;
	import flash.utils.setTimeout;
	import flash.events.Event;

	public class FileUtil{
		public static var basePath:String;
		public static var path:String;
		public function FileUtil(){}
		
		public static function init():void{
			basePath = File.applicationDirectory.nativePath.replace(/\\/g, "/") + "/";
			path = basePath;
		}
		//===========================================文件===========================================
		/**保存文本文件*/
		public static function writeFile(path:String,content:String,charSet:String="utf-8"):void{
			var stream:FileStream = new FileStream();
			var file:File=new File(formatPath(path));
			stream.open(file, FileMode.WRITE);
			stream.writeMultiByte(content,charSet);
			stream.close();
		}
		/**格式化路径*/
		private static function formatPath(path:String):String{
			if(!RegExp(/^\w\:/).test(path)&&path.indexOf("\"")!=0){
				path = FileUtil.path+path;
			}
			return path;
		}
		/**路径是否存在*/
		public static function pathExists(path:String):Boolean{
			var file:File = new File(formatPath(path));
			return file.exists;
		}
		//===========================================操作===========================================
		/**运行文件*/
		public static function runFile(path:String):void {
			var file:File = new File(formatPath(path));
			file.openWithDefaultApplication();
		}
		/**运行dos命令,在flashIDE中调试是无效的，必须发布后才有效*/
		public static function runDos(cmd:String,complete:Function=null):void {
			var code:String = "set ws=WScript.createObject(\"WScript.Shell\")\n";
			var a:Array = cmd.split("\n");
			for(var i:int = 0;i < a.length;i++){
				var s:String = a[i];
				if(!s) continue;
				code += "ws.run unescape(\"" + escape(s) + "\"),0,true\n";
			}
			runVbs(code,complete);
		}
		//执行vbs,在flashIDE中调试是无效的，必须发布后才有效
		public static function runVbs(code:String,complete:Function):void{
			code+="set fso=createobject(\"Scripting.FileSystemObject\")\n"
				+"set f=fso.getfile(\"" + basePath+"tempRun.vbs" + "\")\n"
				+"f.attributes=0\n"
				+"f.delete()";
			writeFile(basePath+"tempRun.vbs",code);
			runFile(basePath+"tempRun.vbs");
			waitRunDos(complete);
		}
		//等待vbs执行成功,在flashIDE中调试是无效的，必须发布后才有效
		private static function waitRunDos(complete:Function):void{
			if(pathExists(basePath+"tempRun.vbs")){
				setTimeout(waitRunDos,30,complete);
				return;
			}
			if(complete!=null) complete();
		}
		
		/**
		* 显示“打开文件”对话框，用户可从中选择要打开的文件。
		* title: 对话框标题
		* typeFilter: [new FileFilter()]
		* callback: function (file:File):void;
		*/
		public static function browseForOpen(title:String,typeFilter:Array=null,callback:Function=null):void{
			var file:File=new File();
			file.browseForOpen(title,typeFilter);
			file.addEventListener(Event.SELECT,function(e:Event):void{
				e.target.removeEventListener(Event.SELECT,arguments.callee);
				if(callback!=null)callback(file);
			});
		}
		
		/**
		* 显示“保存文件”对话框，用户可从中选择一个文件目标
		* title: 对话框标题
		* callback: function (file:File):void;
		*/
		public static function browseForSave(title:String,callback:Function):void{
			var file:File=new File();
			file.browseForSave(title);
			file.addEventListener(Event.SELECT,function(e:Event):void{
				e.target.removeEventListener(Event.SELECT,arguments.callee);
				if(callback!=null)callback(file);
			});
		}
		
		/**打开一个文件所在的文件夹,或打开一个文件夹*/
		public static function openDirectoryWithFile(file:File):void{
			if(file.isDirectory)file.openWithDefaultApplication();
			else file.parent.openWithDefaultApplication();
		}
		
	};
}