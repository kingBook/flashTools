package app.swfTool.abc.instructions
{	
	public class Instruction_getproperty implements IInstruction
	{
		//multiname
		public var index:uint;

		public function Instruction_getproperty(index:uint = 0)
		{
			this.index = index;
		}
	}
}