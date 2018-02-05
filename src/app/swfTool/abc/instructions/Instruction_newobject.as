package app.swfTool.abc.instructions
{
	
	public class Instruction_newobject implements IInstruction
	{
		public var argCount:uint;
		
		public function Instruction_newobject(argCount:uint = 0)
		{
			this.argCount = argCount;
		}
	}
}