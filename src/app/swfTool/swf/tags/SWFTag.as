package app.swfTool.swf.tags{
	import app.swfTool.swf.records.TagHeaderRecord;
	import flash.utils.getQualifiedClassName;
	
	public class SWFTag{
		public var header:TagHeaderRecord;
		
		public function SWFTag(header:TagHeaderRecord = null){
			if(!header) header = new TagHeaderRecord();
			
			this.header = header;
		}
		
		/**返回对象类名 */
		final protected function getObjClassName(obj:*):String{
			var qclassName:String=getQualifiedClassName(obj);
			return qclassName.substr(qclassName.lastIndexOf(":")+1);
		}
		
		final protected function createXML():XML{
			var xml:XML=<Tag/>;
			
			var headerXML:XML=<Header/>;
			headerXML.@name=getObjClassName(this);
			headerXML.@type=header.type;
			headerXML.@position=0;
			headerXML.@length=header.length;
			headerXML.@recordHeader=header.isLong()?"long":"short";
			xml.Header=headerXML;
			return xml;
		}
        
        public function toXMLString():String{
            return "";
        }
	};
}