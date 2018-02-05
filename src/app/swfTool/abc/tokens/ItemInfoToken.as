package app.swfTool.abc.tokens
{
	
	public class ItemInfoToken implements IToken
	{
		public var key:uint;
		public var value:uint;

		public function ItemInfoToken(key:uint = 0, value:uint = 0)
		{
			this.key = key;
			this.value = value;
		}
	}
}