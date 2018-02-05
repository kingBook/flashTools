package app.swfTool.abc.tokens.multinames
{
	
	public class MultinameTypeNameToken implements IMultiname
	{
		public var name:uint;
		public var count:uint;
		public var subType:uint;

		public function MultinameTypeNameToken(name:uint = 0, count:uint = 0, subType:uint = 0)
		{
			this.name = name;
			this.count = count;
			this.subType = subType;
		}
	}
}