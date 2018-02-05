package app.swfTool.abc.tokens.multinames
{
	
	public class MultinameMultinameToken implements IMultiname
	{
		public var name:uint;
		public var nsSet:uint;

		public function MultinameMultinameToken(name:uint = 0, nsSet:uint = 0)
		{
			this.name = name;
			this.nsSet = nsSet;
		}
	}
}