package app.swfTool.swf.records
{
	import app.swfTool.SWFReader;
	import app.swfTool.SWFByteArray;

	public class SymbolClassRecord
	{
		public var characterId:uint;
		public var className:String;

		public function SymbolClassRecord(characterId:uint = 0, className:String = '')
		{
			this.characterId = characterId;
			this.className = className;
		}
	}
}