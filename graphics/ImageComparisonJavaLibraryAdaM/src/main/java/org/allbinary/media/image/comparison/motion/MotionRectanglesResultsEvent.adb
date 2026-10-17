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


package body org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package is

   procedure Initialize_Fields (This : in out MotionRectanglesResultsEvent'Class) is
   begin
      null;
      
      This.motionRectangles := null;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectanglesResultsEvent'Class; anyType : Java_Object_Access; frame : Long_Long_Integer; motionRectangles : MotionRectangles_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.frame := frame;
        This.setMotionRectangles (motionRectangles);
   end Initialize;

   function Create (anyType : Java_Object_Access; frame : Long_Long_Integer; motionRectangles : MotionRectangles_Access) return MotionRectanglesResultsEvent_Access is
      This : constant MotionRectanglesResultsEvent_Access := new MotionRectanglesResultsEvent;
   begin
      MotionRectanglesResultsEvent_Package.Initialize (This.all, anyType, frame, motionRectangles);
      return This;
   end Create;

   function getMotionRectangles (This : in out MotionRectanglesResultsEvent) return MotionRectangles_Access is
   begin
        return This.motionRectangles;
   end getMotionRectangles;

   procedure setMotionRectangles (This : in out MotionRectanglesResultsEvent; motionRectangles : MotionRectangles_Access) is
   begin
        This.motionRectangles := motionRectangles;
   end setMotionRectangles;

   function getFrame (This : in out MotionRectanglesResultsEvent) return Long_Long_Integer is
   begin
        return This.frame;
   end getFrame;

end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;


