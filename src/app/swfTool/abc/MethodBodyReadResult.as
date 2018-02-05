package app.swfTool.abc
{

	import app.swfTool.abc.instructions.IInstruction;

	public class MethodBodyReadResult
	{
		public var instructions:Vector.<IInstruction>;
		public var offsetFromId:Object;
		public var idFromOffset:Object;
		
		public function MethodBodyReadResult(instructions:Vector.<IInstruction>, offsetFromId:Object, idFromOffset:Object)
		{
			this.instructions = instructions;
			this.offsetFromId = offsetFromId;
			this.idFromOffset = idFromOffset;
		}
	}
}