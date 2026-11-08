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
with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package; use org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package_References;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;
with org.allbinary.logic.util.cache.BaseCircularPool_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.graphics.GPoint_Package;

package body org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package is

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
   procedure Initialize_Fields (This : in out GestureOnlyMotionRecognizer'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out GestureOnlyMotionRecognizer'Class) is
   begin
      MotionRecognizer_Package.Initialize (This);
      Initialize_Fields (This);
        This.id := Java_Post_Increment (GestureOnlyMotionRecognizer_Package.index);
        This.motionGestureRecognizer := MotionGestureRecognizer_Package.Create (This.id);
   end Initialize;

   function Create return GestureOnlyMotionRecognizer_Access is
      This : constant GestureOnlyMotionRecognizer_Access := new GestureOnlyMotionRecognizer;
   begin
      GestureOnlyMotionRecognizer_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processStartMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
      point : CustomGPoint_Access;
   begin
        point := CustomGPoint_Access (GestureOnlyMotionRecognizer_Package.pointCircularPool.getNextInstance);
        point.setX (x);
        point.setY (y);
        This.motionGestureRecognizer.processPressedMotionEvent (point, deviceId, modifiers);
   end processStartMotionEvent;

   --  throws Exception
   procedure processEndMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
      point : CustomGPoint_Access;
   begin
        point := CustomGPoint_Access (GestureOnlyMotionRecognizer_Package.pointCircularPool.getNextInstance);
        point.setX (x);
        point.setY (y);
        This.motionGestureRecognizer.processReleasedMotionEvent (point, deviceId, modifiers);
   end processEndMotionEvent;

   --  throws Exception
   procedure processDraggedMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
      point : CustomGPoint_Access;
   begin
        point := CustomGPoint_Access (GestureOnlyMotionRecognizer_Package.pointCircularPool.getNextInstance);
        point.setX (x);
        point.setY (y);
        This.motionGestureRecognizer.processDraggedMotionEvent (point, deviceId, modifiers);
   end processDraggedMotionEvent;

begin
   null;
   index := 0;
   pointCircularPool := GPointCircularPool_Package.Create (40);

end org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package;


