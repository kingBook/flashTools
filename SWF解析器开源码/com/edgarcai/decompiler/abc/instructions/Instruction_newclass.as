package com.edgarcai.decompiler.abc.instructions
{
	import com.edgarcai.decompiler.abc.*;
	
	public class Instruction_newclass implements IInstruction
	{
		public var index:uint;

		public function Instruction_newclass(index:uint = 0)
		{
			this.index = index;
		}
	}
}