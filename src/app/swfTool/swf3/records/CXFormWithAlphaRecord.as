package app.swfTool.swf3.records
{
	import app.swfTool.swf.records.IRecord;

	public class CXFormWithAlphaRecord implements IRecord
	{
		public var hasAddTerms:Boolean;
		public var hasMultTerms:Boolean;
		
		public var nBits:uint;
		
		public var redMultTerm:int;
		public var greenMultTerm:int;
		public var blueMultTerm:int;
		public var alphaMultTerm:int;
		
		public var redAddTerm:int;
		public var greenAddTerm:int;
		public var blueAddTerm:int;
		public var alphaAddTerm:int;
	}
}