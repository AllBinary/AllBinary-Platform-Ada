--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package is

   procedure Initialize_Fields (This : in out NullCompleteMotionGestureReceiver'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NullCompleteMotionGestureReceiver'Class) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (To_Unbounded_String ("Null Gesture Reciever"), This'Unchecked_Access, commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create return NullCompleteMotionGestureReceiver_Access is
      This : constant NullCompleteMotionGestureReceiver_Access := new NullCompleteMotionGestureReceiver;
   begin
      NullCompleteMotionGestureReceiver_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure onMotionGestureCompleted (This : in out NullCompleteMotionGestureReceiver; list : BasicArrayList_Access) is
   begin
        null;
   end onMotionGestureCompleted;

end org.allbinary.input.motion.gesture.observer.NullCompleteMotionGestureReceiver_Package;


