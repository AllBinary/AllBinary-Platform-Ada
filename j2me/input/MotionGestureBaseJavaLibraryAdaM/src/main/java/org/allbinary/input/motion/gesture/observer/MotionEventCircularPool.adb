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


package body org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package is

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
   function getInstance (This : in out MotionEventCircularPool; motionGestureInput : MotionGestureInput_Access) return MotionGestureEvent_Access is
   begin
        return MotionGestureEvent_Access (This.eventPool.getInstance ((motionGestureInput.getId) - (This.MIN)));
   end getInstance;

   procedure createPool (id : Integer) is
      Java_Result : constant MotionEventCircularPool_Access := createPool (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPool;

   procedure getInstance (This : in out MotionEventCircularPool; motionGestureInput : MotionGestureInput_Access) is
      Java_Result : constant MotionGestureEvent_Access := MotionEventCircularPool'Class (This).getInstance (motionGestureInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;


