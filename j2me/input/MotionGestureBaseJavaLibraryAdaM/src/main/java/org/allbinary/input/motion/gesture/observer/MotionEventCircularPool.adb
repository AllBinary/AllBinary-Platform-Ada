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


with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package; use org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;
with org.allbinary.input.motion.gesture.observer.MotionEventFactory_Package; use org.allbinary.input.motion.gesture.observer.MotionEventFactory_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.input.motion.gesture.observer.MotionEventFactory_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;

package body org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   function "=" (Left, Right : MotionGestureInput_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype AllBinaryEventCircularPool_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References."=";
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   function "=" (Left, Right : MotionGestureEvent_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   procedure Initialize_Fields (This : in out MotionEventCircularPool'Class) is
   begin
      null;
      This.MIN := TouchMotionGestureFactory_Package.getInstance.LAST_MOTION.getId;
      This.eventPool := AllBinaryEventCircularPool_Package.Create ((((InputFactory_Package.getInstance.MAX) - (1))) - (This.MIN));
   end Initialize_Fields;


   function createPool (id : Integer) return MotionEventCircularPool_Access is
   begin
        return MotionEventCircularPool_Package.Create (id);
   end createPool;

   procedure Initialize (This : in out MotionEventCircularPool'Class; id : Integer) is
   begin
      Initialize_Fields (This);
        This.eventPool.initAllBinaryEventCircularPool (MotionEventFactory_Package.Create (This.eventPool, id));
   end Initialize;

   function Create (id : Integer) return MotionEventCircularPool_Access is
      This : constant MotionEventCircularPool_Access := new MotionEventCircularPool;
   begin
      MotionEventCircularPool_Package.Initialize (This.all, id);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out MotionEventCircularPool; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class) return MotionGestureEvent_Access is
      motionGestureInput : constant MotionGestureInput_Access := MotionGestureInput_Access (motionGestureInput_Param);
   begin
        return MotionGestureEvent_Access (This.eventPool.getInstance ((motionGestureInput.getId) - (This.MIN)));
   end getInstance;

   procedure createPool (id : Integer) is
      Java_Result : constant MotionEventCircularPool_Access := createPool (id => id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPool;

   procedure getInstance (This : in out MotionEventCircularPool; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class) is
      Java_Result : constant MotionGestureEvent_Access := MotionEventCircularPool'Class (This).getInstance (motionGestureInput_Param => motionGestureInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;


