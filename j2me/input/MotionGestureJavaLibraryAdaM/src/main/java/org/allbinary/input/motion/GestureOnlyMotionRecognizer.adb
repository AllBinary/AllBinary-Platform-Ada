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


package body org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package is

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
      Initialize (This.all);
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


