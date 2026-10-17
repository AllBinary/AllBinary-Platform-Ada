--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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


package body org.allbinary.android.input.motion.MotionEventProcessor_Package is

   procedure Initialize_Fields (This : in out MotionEventProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionEventProcessor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MotionEventProcessor_Access is
      This : constant MotionEventProcessor_Access := new MotionEventProcessor;
   begin
      MotionEventProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out MotionEventProcessor; motionEvent_Param : access MotionEvent'Class) is
      motionEvent : MotionEvent_Access := MotionEvent_Access (motionEvent_Param);
   begin
        null;
   end process;

end org.allbinary.android.input.motion.MotionEventProcessor_Package;


