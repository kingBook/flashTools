package app.swfTool.abc.tokens.traits
{
	
	public class TraitFunctionToken implements ITrait
	{
		public var slotId:uint;
		public var functionId:uint;

		public function TraitFunctionToken(slotId:uint = 0, functionId:uint = 0)
		{
			this.slotId = slotId;
			this.functionId = functionId;
		}
	}
}