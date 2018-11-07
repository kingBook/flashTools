package app.swfTool.swf.records
{
	public class GlowFilterRecord
	{
		public var glowColor:RGBARecord;
		public var blurX:Number;
		public var blurY:Number;
		public var strength:Number;
		public var innerGlow:Boolean;
		public var knockout:Boolean;
		public var compositeSource:Boolean;
		public var passes:uint;

		public function GlowFilterRecord(glowColor:RGBARecord = null, blurX:Number = NaN, blurY:Number = NaN, strength:Number = NaN, innerGlow:Boolean = false, knockout:Boolean = false, compositeSource:Boolean = false, passes:uint = 0)
		{
			if(glowColor == null)
			{
				glowColor = new RGBARecord();
			}

			this.glowColor = glowColor;
			this.blurX = blurX;
			this.blurY = blurY;
			this.strength = strength;
			this.innerGlow = innerGlow;
			this.knockout = knockout;
			this.compositeSource = compositeSource;
			this.passes = passes;
		}
	}
}