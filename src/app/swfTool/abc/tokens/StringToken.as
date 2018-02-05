package app.swfTool.abc.tokens
{

	public class StringToken implements IToken
	{
		public var utf8:String;
		
		public function StringToken(utf8:String = '')
		{
			this.utf8 = utf8;
		}
	}
}