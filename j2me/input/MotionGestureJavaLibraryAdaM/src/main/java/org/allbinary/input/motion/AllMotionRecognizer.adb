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
with org.allbinary.graphics.GPointCircularPool_Package; use org.allbinary.graphics.GPointCircularPool_Package;
with org.allbinary.graphics.GPointCircularPool_Package_References;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package; use org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References;
with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package; use org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;
with org.allbinary.logic.util.cache.BaseCircularPool_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.motion.AllMotionRecognizer_Package is

   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   subtype GPointCircularPool_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access;
   function "=" (Left, Right : GPointCircularPool_Access) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype GPointCircularPool_Access_Array is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array;
   function "=" (Left, Right : GPointCircularPool_Access_Array) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype GPointCircularPool_Access_Array_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access;
   function "=" (Left, Right : GPointCircularPool_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype GPointCircularPool_Access_Array_Access_Array is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : GPointCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype GPointCircularPool_Access_Array_Access_Array_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPointCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype TouchButtonRecognizer_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype MotionGestureRecognizer_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access;
   function "=" (Left, Right : MotionGestureRecognizer_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   subtype MotionGestureRecognizer_Access_Array is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array;
   function "=" (Left, Right : MotionGestureRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   subtype MotionGestureRecognizer_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access;
   function "=" (Left, Right : MotionGestureRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   subtype MotionGestureRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   subtype MotionGestureRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References.MotionGestureRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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


