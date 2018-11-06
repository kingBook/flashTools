package app.swfTool.swf3.records
{
	import app.swfTool.swf.records.IRecord;
	/**ColorTransform */
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
		
		public function toXML():XML{
			var xml:XML=<ColorTransform/>;
			xml.@hasAddTerms=hasAddTerms;
			xml.@hasMultTerms=hasMultTerms;
			if(hasAddTerms){
				xml.AddTerm=<AddTerm/>;
				xml.AddTerm.@r=redAddTerm;
				xml.AddTerm.@g=greenAddTerm;
				xml.AddTerm.@b=blueAddTerm;
				xml.AddTerm.@a=alphaAddTerm;
			}
			if(hasMultTerms){
				xml.MultTerm=<MultTerm/>;
				xml.MultTerm.@r=redMultTerm;
				xml.MultTerm.@g=greenMultTerm;
				xml.MultTerm.@b=blueMultTerm;
				xml.MultTerm.@a=alphaMultTerm;
			}
			return xml;
		}
	}
}