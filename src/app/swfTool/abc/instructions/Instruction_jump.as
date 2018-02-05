package app.swfTool.abc.instructions
{
	
	public class Instruction_jump implements IInstruction
	{
		public var offset:int;
		public var reference:IInstruction;
	}
}