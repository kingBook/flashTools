// Copyright 2007. Adobe Systems Incorporated. All Rights Reserved.
package fl.events {

	import flash.events.Event;

    /**
     * The ComponentEvent class defines events that are associated with the UIComponent class.
     * These include the following events:
     * <ul>
     *     <li><code>ComponentEvent.BUTTON_DOWN</code>: dispatched after a button is pressed.</li>
     *     <li><code>ComponentEvent.ENTER</code>: dispatched after the Enter key is pressed.</li>
     *     <li><code>ComponentEvent.HIDE</code>: dispatched after the visible property of a component is set to <code>false</code>.</li>
     *     <li><code>ComponentEvent.LABEL_CHANGE</code>: dispatched after the Enter key is pressed.</li>
     *     <li><code>ComponentEvent.MOVE</code>: dispatched after there is a change in the x or y properties that identify the component location.</li>
     *     <li><code>ComponentEvent.RESIZE</code>: dispatched after a component is resized.</li>
     *     <li><code>ComponentEvent.SHOW</code>: dispatched after the <code>visible</code> property of a component is set to <code>true</code>.</li>
     * </ul>
     * 
     * @langversion 3.0
     * @playerversion Flash 9.0.28.0
     *  
     *  @playerversion AIR 1.0
     *  @productversion Flash CS3
     */
	public class ComponentEvent extends Event {

        /**
         * Defines the value of the <code>type</code> property of a <code>buttonDown</code>
         * event object. 
         * 
         * <p>This event has the following properties:</p>
         *  <table class="innertable" width="100%">
         *     <tr><th>Property</th><th>Value</th></tr>
         *	   <tr><td><code>bubbles</code></td><td><code>false</code></td></tr>
         *     <tr><td><code>cancelable</code></td><td><code>false</code>; there is no default
         * 			behavior to cancel.</td></tr>
         *     <tr><td><code>currentTarget</code></td><td>The object that is actively processing 
         * 			the event object with an event listener. </td></tr>
         *     <tr><td><code>target</code></td><td>The object that dispatched the event. The target is 
         *           not always the object listening for the event. Use the <code>currentTarget</code>
         * 			property to access the object that is listening for the event.</td></tr>
         *  </table>
         *
         * @eventType buttonDown
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		public static const BUTTON_DOWN:String = "buttonDown";

        /**
         * Defines the value of the <code>type</code> property of a <code>labelChange</code>
         * event object. 
         * 
         * <p>This event has the following properties:</p>
         *  <table class="innertable" width="100%">
         *     <tr><th>Property</th><th>Value</th></tr>
         *	   <tr><td><code>bubbles</code></td><td><code>false</code></td></tr>
         *     <tr><td><code>cancelable</code></td><td><code>false</code>; there is no default
         * 			behavior to cancel.</td></tr>
         *     <tr><td><code>currentTarget</code></td><td>The object that is actively processing 
         * 			the event object with an event listener.</td></tr>
         *     <tr><td><code>target</code></td><td>The object that dispatched the event. The target is 
         *           not always the object listening for the event. Use the <code>currentTarget</code>
         * 			property to access the object that is listening for the event.</td></tr>
         *  </table>
         *
         * @eventType labelChange
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		public static const LABEL_CHANGE:String = "labelChange";

        /**
         * Defines the value of the <code>type</code> property of a <code>hide</code>
         * event object. 
         * 
         * <p>This event has the following properties:</p>
         *  <table class="innertable" width="100%">
         *     <tr><th>Property</th><th>Value</th></tr>
         *	   <tr><td><code>bubbles</code></td><td><code>false</code></td></tr>
         *     <tr><td><code>cancelable</code></td><td><code>false</code>; there is no default
         * 			behavior to cancel.</td></tr>
         *     <tr><td><code>currentTarget</code></td><td>The object that is actively processing 
         * 			the event object with an event listener.</td></tr>
         *     <tr><td><code>target</code></td><td>The object that dispatched the event. The target is 
         *           not always the object listening for the event. Use the <code>currentTarget</code>
         * 			property to access the object that is listening for the event.</td></tr>
         *  </table>
         *
         * @eventType hide
         *
         * @includeExample ../core/examples/UIComponent.HIDE.1.as -noswf
         *
         * @see #SHOW
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		public static const HIDE:String = "hide";

        /**
         * Defines the value of the <code>type</code> property of a <code>show</code> event
         * object. 
         * 
         * <p>This event has the following properties:</p>
         *  <table class="innertable" width="100%">
         *     <tr><th>Property</th><th>Value</th></tr>
         *	   <tr><td><code>bubbles</code></td><td><code>false</code></td></tr>
         *     <tr><td><code>cancelable</code></td><td><code>false</code>; there is no default
         * 			behavior to cancel.</td></tr>
         *     <tr><td><code>currentTarget</code></td><td>The object that is actively processing 
         * 			the event object with an event listener.</td></tr>
         *     <tr><td><code>target</code></td><td>The object that dispatched the event. The target is 
         *           not always the object listening for the event. Use the <code>currentTarget</code>
         * 			property to access the object that is listening for the event.</td></tr>
         *  </table>
         *
         * @eventType show
         *
         * @includeExample ../core/examples/UIComponent.HIDE.1.as -noswf
         *
         * @see #HIDE
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		public static const SHOW:String = "show";

        /**
         * Defines the value of the <code>type</code> property of a <code>resize</code> 
         * event object. 
         * 
         * <p>This event has the following properties:</p>
         *  <table class="innertable" width="100%">
         *     <tr><th>Property</th><th>Value</th></tr>
         *	   <tr><td><code>bubbles</code></td><td><code>false</code></td></tr>
         *     <tr><td><code>cancelable</code></td><td><code>false</code>; there is no default
         * 			behavior to cancel.</td></tr>
         *     <tr><td><code>currentTarget</code></td><td>The object that is actively processing 
         * 			the event object with an event listener. </td></tr>
         *     <tr><td><code>target</code></td><td>The object that dispatched the event. The target is 
         *           not always the object listening for the event. Use the <code>currentTarget</code>
         * 			property to access the object that is listening for the event.</td></tr>
         *  </table>
         *
         * @eventType resize
         *
         * @includeExample ../core/examples/UIComponent.RESIZE.1.as -noswf
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		public static const RESIZE:String = "resize";

        /**
         * Defines the value of the <code>type</code> property of a <code>move</code>
         * event object. 
         * 
         * <p>This event has the following properties:</p>
         *  <table class="innertable" width="100%">
         *     <tr><th>Property</th><th>Value</th></tr>
         *	   <tr><td><code>bubbles</code></td><td><code>false</code></td></tr>
         *     <tr><td><code>cancelable</code></td><td><code>false</code>; there is no default
         * 			behavior to cancel.</td></tr>
         *     <tr><td><code>currentTarget</code></td><td>The object that is actively processing 
         * 			the event object with an event listener. </td></tr>
         *     <tr><td><code>target</code></td><td>The object that dispatched the event. The target is 
         *           not always the object listening for the event. Use the <code>currentTarget</code>
         * 			property to access the object that is listening for the event.</td></tr>
         *  </table>
         *
         * @eventType move
         *
         * @includeExample ../core/examples/UIComponent.MOVE.1.as -noswf
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		public static const MOVE:String = "move";

        /**
         * Defines the value of the <code>type</code> property of an <code>enter</code>
         * event object. 
         * 
         * <p>This event has the following properties:</p>
         *  <table class="innertable" width="100%">
         *     <tr><th>Property</th><th>Value</th></tr>
         *	   <tr><td><code>bubbles</code></td><td><code>false</code></td></tr>
         *     <tr><td><code>cancelable</code></td><td><code>false</code>; there is no default
         *         behavior to cancel.</td></tr>
         *     <tr><td><code>currentTarget</code></td><td>The object that is actively processing 
         *         the event object with an event listener.</td></tr>
         *     <tr><td><code>target</code></td><td>The object that dispatched the event. The target is 
         *         not always the object listening for the event. Use the <code>currentTarget</code>
         * 	       property to access the object that is listening for the event.</td></tr>
         *  </table>
         * 
         * @eventType enter
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		public static const ENTER:String = "enter";

        /**
         * Creates a new ComponentEvent object that contains information about a component 
         * event. A ComponentEvent object is passed as a parameter to an event listener.
         *
         * @param type The type of the event. Event listeners can access this information 
         *        through the <code>type</code> property of the event object. A component can 
         *        have the following types of events: <code>ComponentEvent.BUTTON_DOWN</code>, 
         *        <code>ComponentEvent.ENTER</code>, <code>ComponentEvent.HIDE</code>, 
         *        <code>ComponentEvent.LABEL_CHANGE</code>, <code>ComponentEvent.MOVE</code>, 
         *        <code>ComponentEvent.RESIZE</code>, <code>ComponentEvent.SHOW</code>.
         *
         * @param bubbles Determines whether the ComponentEvent object participates in the 
         *        bubbling phase of the event flow. Event listeners can access this information 
         *        through the <code>bubbles</code> property of the event object.
         *
         * @param cancelable Determines whether the ComponentEvent object can be canceled. Event 
         *        listeners can access this information through the <code>cancelable</code> property
         *        of the event object.
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		public function ComponentEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
		}


        /**
         * Returns a string that contains all the properties of the ComponentEvent object. The 
         * string is in the following format:
         * <p><code>[ComponentEvent type=<em>value</em> bubbles=<em>value</em> cancelable=<em>value</em>]</code></p>
         * 
         * @return A string representation of the ComponentEvent object.
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		override public function toString():String {
			return formatToString("ComponentEvent", "type", "bubbles", "cancelable");
		}


        /**
         * Creates a copy of the ComponentEvent object and sets the value of each parameter to
         * match the original.
         *
         * @return A new ComponentEvent object with property values that match those of the
         * original.
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
		override public function clone():Event {
			return new ComponentEvent(type, bubbles, cancelable);
		}
	}
}