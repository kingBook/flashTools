package app.swfTool.abc.instructions
{
	
	public class Instruction_construct implements IInstruction
	{
		public var argCount:uint;

		public function Instruction_construct(argCount:uint = 0)
		{
			this.argCount = argCount;
		}
	}
}