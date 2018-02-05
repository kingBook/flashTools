package app.swfTool.abc
{
	
	import flash.utils.Dictionary;
	import app.swfTool.abc.tokens.IToken;

	public class ABCWriterMetadata
	{
		public var tokens:Dictionary;
		
		public function ABCWriterMetadata()
		{
			tokens = new Dictionary(true);
		}
		
		public function getData(token:IToken):Object
		{
			return tokens[token];
		}
		
		public function setData(token:IToken, start:uint, end:uint, duration:int):void
		{
			tokens[token] = {start: start, length: end - start, duration: duration};
		}
	}
}