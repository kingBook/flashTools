package app.swfTool.abc.instructions
{
	
	public class Instruction_pushbyte implements IInstruction
	{
		public var byteValue:int;

		public function Instruction_pushbyte(byteValue:int = 0)
		{
			this.byteValue = byteValue;
		}
	}
}