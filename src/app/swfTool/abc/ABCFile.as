package app.swfTool.abc
{

	import app.swfTool.abc.tokens.ConstantPoolToken;
	import app.swfTool.abc.tokens.MethodInfoToken;
	import app.swfTool.abc.tokens.InstanceToken;
	import app.swfTool.abc.tokens.MetadataInfoToken;
	import app.swfTool.abc.tokens.ClassInfoToken;
	import app.swfTool.abc.tokens.ScriptInfoToken;
	import app.swfTool.abc.tokens.MethodBodyInfoToken;

	public class ABCFile
	{
		public var minorVersion:uint;
		public var majorVersion:uint;
		public var cpool:ConstantPoolToken;
		public var methodCount:uint;
		public var methods:Vector.<MethodInfoToken>;
		public var metadataCount:uint;
		public var metadata:Vector.<MetadataInfoToken>;
		public var classCount:uint;
		public var instances:Vector.<InstanceToken>;
		public var classes:Vector.<ClassInfoToken>;
		public var scriptCount:uint;
		public var scripts:Vector.<ScriptInfoToken>;
		public var methodBodyCount:uint;
		public var methodBodies:Vector.<MethodBodyInfoToken>;
	}
}