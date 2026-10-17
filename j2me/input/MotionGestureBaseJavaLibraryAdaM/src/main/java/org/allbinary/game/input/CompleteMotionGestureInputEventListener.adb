--  Generated Code Do Not Modify


package body org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package is

   procedure Initialize_Fields (This : in out CompleteMotionGestureInputEventListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CompleteMotionGestureInputEventListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CompleteMotionGestureInputEventListener_Access is
      This : constant CompleteMotionGestureInputEventListener_Access := new CompleteMotionGestureInputEventListener;
   begin
      CompleteMotionGestureInputEventListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out CompleteMotionGestureInputEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        null;
   end onEvent;

   procedure onCompleteMotionGestureInputEvent (This : in out CompleteMotionGestureInputEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class) is
      completeMotionGestureInputEvent : constant CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent_Param);
   begin
        null;
   end onCompleteMotionGestureInputEvent;

end org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;


