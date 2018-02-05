package app.swfTool.abc
{
	public class ABCReaderContext
	{
		public var bytes:ABCByteArray;
		public var result:ABCReadResult;
		
		public function ABCReaderContext(bytes:ABCByteArray, result:ABCReadResult)
		{
			this.bytes = bytes;
			this.result = result;
		}
	}
}