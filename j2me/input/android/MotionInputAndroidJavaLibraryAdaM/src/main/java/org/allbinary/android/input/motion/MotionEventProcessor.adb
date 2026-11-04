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


with android.view.MotionEvent_Package; use android.view.MotionEvent_Package;

package body org.allbinary.android.input.motion.MotionEventProcessor_Package is

   subtype MotionEvent_Access is android.view.MotionEvent_Package_References.MotionEvent_Access;
   function "=" (Left, Right : MotionEvent_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array;
   function "=" (Left, Right : MotionEvent_Access_Array) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access;
   function "=" (Left, Right : MotionEvent_Access_Array_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionEvent_Access_Array_Access_Array) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionEvent_Access_Array_Access_Array_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
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
   procedure process (This : in out MotionEventProcessor; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class) is
      motionEvent : constant MotionEvent_Access := MotionEvent_Access (motionEvent_Param);
   begin
        null;
   end process;

end org.allbinary.android.input.motion.MotionEventProcessor_Package;


