package app.swfTool.abc.instructions
{
	
	public class Instruction_constructsuper implements IInstruction
	{
		public var argCount:uint;

		public function Instruction_constructsuper(argCount:uint = 0)
		{
			this.argCount = argCount;
		}
	}
}