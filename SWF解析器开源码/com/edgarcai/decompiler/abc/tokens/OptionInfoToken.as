package com.edgarcai.decompiler.abc.tokens
{
	import com.edgarcai.decompiler.abc.ABCByteArray;
	import com.edgarcai.decompiler.abc.ABCReaderMetadata;
	
	public class OptionInfoToken implements IToken
	{
		public var optionCount:uint;
		public var options:Vector.<OptionDetailToken>;

		public function OptionInfoToken(optionCount:uint = 0, options:Vector.<OptionDetailToken> = null)
		{
			if(options == null)
			{
				options = new Vector.<OptionDetailToken>();
			}

			this.optionCount = optionCount;
			this.options = options;
		}
	}
}