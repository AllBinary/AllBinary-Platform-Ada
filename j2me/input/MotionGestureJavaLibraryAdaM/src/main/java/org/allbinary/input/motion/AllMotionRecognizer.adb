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


with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;

package body org.allbinary.input.motion.AllMotionRecognizer_Package is

   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   procedure Initialize_Fields (This : in out AllMotionRecognizer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.touchButtonProcessing := False;
      
      
      This.lastX := 0;
      This.lastY := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AllMotionRecognizer'Class) is
   begin
      MotionRecognizer_Package.Initialize (This);
      Initialize_Fields (This);
        This.id := Java_Post_Increment (AllMotionRecognizer_Package.index);
        This.motionGestureRecognizer := MotionGestureRecognizer_Package.Create (This.id);
        This.touchButtonRecognizer := TouchButtonRecognizer_Package.Create;
   end Initialize;

   function Create return AllMotionRecognizer_Access is
      This : constant AllMotionRecognizer_Access := new AllMotionRecognizer;
   begin
      AllMotionRecognizer_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processStartMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
      point : CustomGPoint_Access;
   begin
        if This.touchButtonRecognizer.pressTouchButtonInput (x, y, deviceId) then
            This.touchButtonProcessing := True;
        end if;
        if not (This.touchButtonProcessing) then
            point := CustomGPoint_Access (AllMotionRecognizer_Package.pointCircularPool.getNextInstance);
            point.setX (x);
            point.setY (y);
            This.motionGestureRecognizer.processPressedMotionEvent (point, deviceId, modifiers);
        end if;
   end processStartMotionEvent;

   --  throws Exception
   procedure processEndMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
      point : CustomGPoint_Access;
   begin
        if This.touchButtonRecognizer.releaseTouchButtonInput (x, y, deviceId) then
            null;
        end if;
        if not (This.touchButtonProcessing) then
            point := CustomGPoint_Access (AllMotionRecognizer_Package.pointCircularPool.getNextInstance);
            point.setX (x);
            point.setY (y);
            This.motionGestureRecognizer.processReleasedMotionEvent (point, deviceId, modifiers);
        end if;
        if This.touchButtonProcessing then
            This.touchButtonProcessing := False;
        end if;
   end processEndMotionEvent;

   --  throws Exception
   procedure processDraggedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
      point : CustomGPoint_Access;
   begin
        if This.touchButtonProcessing then
            This.touchButtonRecognizer.pressTouchButtonInput (x, y, deviceId);
        end if;
        if not (This.touchButtonProcessing) then
            point := CustomGPoint_Access (AllMotionRecognizer_Package.pointCircularPool.getNextInstance);
            point.setX (x);
            point.setY (y);
            This.motionGestureRecognizer.processDraggedMotionEvent (point, deviceId, modifiers);
        end if;
   end processDraggedMotionEvent;

   --  throws Exception
   procedure processMovedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
      point : CustomGPoint_Access;
   begin
        if ((x) /= (This.lastX)) or else ((y) /= (This.lastY)) then
            This.lastX := x;
            This.lastY := y;
            point := CustomGPoint_Access (AllMotionRecognizer_Package.pointCircularPool.getNextInstance);
            point.setX (x);
            point.setY (y);
            This.motionGestureRecognizer.processMovedMotionEvent (point, deviceId, modifiers);
        end if;
   end processMovedMotionEvent;

   --  throws Exception
   procedure processScrolledMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
      point : CustomGPoint_Access;
   begin
        point := CustomGPoint_Access (AllMotionRecognizer_Package.pointCircularPool.getNextInstance);
        point.setX (x);
        point.setY (y);
        This.motionGestureRecognizer.processScrolledMotionEvent (point, deviceId, modifiers);
   end processScrolledMotionEvent;

   function getMotionGestureRecognizer (This : in out AllMotionRecognizer) return MotionGestureRecognizer_Access is
   begin
        return This.motionGestureRecognizer;
   end getMotionGestureRecognizer;

begin
   null;
   index := 0;
   pointCircularPool := GPointCircularPool_Package.Create (40);

end org.allbinary.input.motion.AllMotionRecognizer_Package;


