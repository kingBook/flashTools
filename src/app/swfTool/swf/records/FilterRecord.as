package app.swfTool.swf.records
{
	public class FilterRecord
	{
		public var filterID:uint;
		public var dropShadowFilter:DropShadowFilterRecord;
		public var blurFilter:BlurFilterRecord;
		public var glowFilter:GlowFilterRecord;
		public var bevelFilter:BevelFilterRecord;
		public var gradientGlowFilter:GradientGlowFilterRecord;
		public var convolutionFilter:ConvolutionFilterRecord;
		public var colorMatrixFilter:ColorMatrixFilterRecord;
		public var gradientBevelFilter:GradientBevelFilterRecord;

		public function FilterRecord(filterID:uint = 0, dropShadowFilter:DropShadowFilterRecord = null, blurFilter:BlurFilterRecord = null, glowFilter:GlowFilterRecord = null, bevelFilter:BevelFilterRecord = null, gradientGlowFilter:GradientGlowFilterRecord = null, convolutionFilter:ConvolutionFilterRecord = null, colorMatrixFilter:ColorMatrixFilterRecord = null, gradientBevelFilter:GradientBevelFilterRecord = null)
		{
			if(dropShadowFilter == null)
			{
				dropShadowFilter = new DropShadowFilterRecord();
			}
			if(blurFilter == null)
			{
				blurFilter = new BlurFilterRecord();
			}
			if(glowFilter == null)
			{
				glowFilter = new GlowFilterRecord();
			}
			if(bevelFilter == null)
			{
				bevelFilter = new BevelFilterRecord();
			}
			if(gradientGlowFilter == null)
			{
				gradientGlowFilter = new GradientGlowFilterRecord();
			}
			if(convolutionFilter == null)
			{
				convolutionFilter = new ConvolutionFilterRecord();
			}
			if(colorMatrixFilter == null)
			{
				colorMatrixFilter = new ColorMatrixFilterRecord();
			}
			if(gradientBevelFilter == null)
			{
				gradientBevelFilter = new GradientBevelFilterRecord();
			}

			this.filterID = filterID;
			this.dropShadowFilter = dropShadowFilter;
			this.blurFilter = blurFilter;
			this.glowFilter = glowFilter;
			this.bevelFilter = bevelFilter;
			this.gradientGlowFilter = gradientGlowFilter;
			this.convolutionFilter = convolutionFilter;
			this.colorMatrixFilter = colorMatrixFilter;
			this.gradientBevelFilter = gradientBevelFilter;
		}
		
		public function toXML():XML{
			var xml:XML=<Filter/>;
			xml.@filterID=filterID;
			switch(filterID)
			{
				case 0:
					dropShadowFilter.mergeToXML(xml);
					break;
				case 1:
					blurFilter.mergeToXML(xml);
					break;
				case 2:
					glowFilter.mergeToXML(xml);
					break;
				case 3:
					bevelFilter.mergeToXML(xml);
					break;
				case 4:
					gradientGlowFilter.mergeToXML(xml);
					break;
				case 5:
					convolutionFilter.mergeToXML(xml);
					break;
				case 6:
					colorMatrixFilter.mergeToXML(xml);
					break;
				case 7:
					gradientBevelFilter.mergeToXML(xml);
					break;
			}
			return xml;
		}
	}
}