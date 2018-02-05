package app.swfTool.abc.instructions
{
	
	public class Instruction_newarray implements IInstruction
	{
		public var argCount:uint;
		
		public function Instruction_newarray(argCount:uint = 0)
		{
			this.argCount = argCount;
		}
	}
}