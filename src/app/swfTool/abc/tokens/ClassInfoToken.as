package app.swfTool.abc.tokens
{
	public class ClassInfoToken implements IToken
	{
		public var cinit:uint;
		public var traitCount:uint;
		public var traits:Vector.<TraitsInfoToken>;

		public function ClassInfoToken(cinit:uint = 0, traitCount:uint = 0, traits:Vector.<TraitsInfoToken> = null)
		{
			if(traits == null)
			{
				traits = new Vector.<TraitsInfoToken>();
			}

			this.cinit = cinit;
			this.traitCount = traitCount;
			this.traits = traits;
		}
	}
}