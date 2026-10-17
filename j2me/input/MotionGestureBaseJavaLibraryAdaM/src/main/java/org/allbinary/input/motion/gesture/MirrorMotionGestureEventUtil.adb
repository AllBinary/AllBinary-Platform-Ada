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


package body org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package is

   procedure Initialize_Fields (This : in out MirrorMotionGestureEventUtil'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MirrorMotionGestureEventUtil'Class) is
   begin
      Initialize_Fields (This);
        This.motionEventCircularPool := MotionEventCircularPool_Package.createPool (Integer_Package.MAX_VALUE);
   end Initialize;

   function Create return MirrorMotionGestureEventUtil_Access is
      This : constant MirrorMotionGestureEventUtil_Access := new MirrorMotionGestureEventUtil;
   begin
      MirrorMotionGestureEventUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function mirrorVerticle (This : in out MirrorMotionGestureEventUtil; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class; halfWidth : Integer) return MotionGestureEvent_Access is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
      event : MotionGestureEvent_Access;
      previousNewX : Integer;
      currentNewX : Integer;
      pointFactory : PointFactory_Access;
      mirroredPreviousPoint : GPoint_Access;
      mirroredCurrentPoint : GPoint_Access;
   begin
        event := This.motionEventCircularPool.getInstance (motionGestureEvent.getMotionGesture);
        previousNewX := This.getNewX (motionGestureEvent.getPreviousPoint.getX, halfWidth);
        currentNewX := This.getNewX (motionGestureEvent.getCurrentPoint.getX, halfWidth);
        pointFactory := PointFactory_Package.getInstance;
        mirroredPreviousPoint := pointFactory.createXY (previousNewX, motionGestureEvent.getPreviousPoint.getY);
        mirroredCurrentPoint := pointFactory.createXY (currentNewX, motionGestureEvent.getCurrentPoint.getY);
        event.setPreviousPoint (mirroredPreviousPoint);
        event.setCurrentPoint (mirroredCurrentPoint);
        return event;
   end mirrorVerticle;

   function getNewX (This : in out MirrorMotionGestureEventUtil; x : Integer; halfWidth : Integer) return Integer is
      newX : Integer;
   begin
        newX := 0;
        if (x) > (halfWidth) then
            newX := (halfWidth) - (((x) - (halfWidth)));
        else
            newX := (halfWidth) + (((halfWidth) - (x)));
        end if;
        return newX;
   end getNewX;

   function getInstance return MirrorMotionGestureEventUtil_Access is
   begin
        return MirrorMotionGestureEventUtil_Package.instance;
   end getInstance;

   procedure mirrorVerticle (This : in out MirrorMotionGestureEventUtil; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class; halfWidth : Integer) is
      Java_Result : constant MotionGestureEvent_Access := MirrorMotionGestureEventUtil'Class (This).mirrorVerticle (motionGestureEvent_Param, halfWidth);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end mirrorVerticle;

   procedure getNewX (This : in out MirrorMotionGestureEventUtil; x : Integer; halfWidth : Integer) is
      Java_Result : constant Integer := MirrorMotionGestureEventUtil'Class (This).getNewX (x, halfWidth);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNewX;

begin
   null;
   instance := MirrorMotionGestureEventUtil_Package.Create;

end org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package;


