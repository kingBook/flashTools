package app.swfTool.abc.tokens
{
	
	public class ParamInfoToken implements IToken
	{
		public var value:uint;

		public function ParamInfoToken(value:uint = 0)
		{
			this.value = value;
		}
	}
}