package app.swfTool.swf.records
{
	public class FilterListRecord
	{
		public var numberOfFilters:uint;
		public var filters:Vector.<FilterRecord>;

		public function FilterListRecord(numberOfFilters:uint = 0, filters:Vector.<FilterRecord> = null)
		{
			if(filters == null)
			{
				filters = new Vector.<FilterRecord>();
			}

			this.numberOfFilters = numberOfFilters;
			this.filters = filters;
		}
		
		public function toXML():XML{
			var xml:XML=<FilterList/>;
			for(var i:int=0;i<filters.length;i++){
				var filterRecord:FilterRecord=filters[i];
				xml.appendChild(filterRecord.toXML());
			}
			return xml;
		}
	}
}