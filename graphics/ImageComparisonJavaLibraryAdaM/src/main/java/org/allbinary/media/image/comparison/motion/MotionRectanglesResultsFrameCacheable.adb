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


package body org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package is

   procedure Initialize_Fields (This : in out MotionRectanglesResultsFrameCacheable'Class) is
   begin
      null;
      This.motionRectangles := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectanglesResultsFrameCacheable'Class; motionRectangles : MotionRectangles_Access; frame : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.frame := frame;
        This.setMotionRectangles (motionRectangles);
   end Initialize;

   function Create (motionRectangles : MotionRectangles_Access; frame : Long_Long_Integer) return MotionRectanglesResultsFrameCacheable_Access is
      This : constant MotionRectanglesResultsFrameCacheable_Access := new MotionRectanglesResultsFrameCacheable;
   begin
      MotionRectanglesResultsFrameCacheable_Package.Initialize (This.all, motionRectangles, frame);
      return This;
   end Create;

   function getKey (This : in out MotionRectanglesResultsFrameCacheable) return Java_Object_Access is
   begin
        return This.frame;
   end getKey;

   function getMotionRectangles (This : in out MotionRectanglesResultsFrameCacheable) return MotionRectangles_Access is
   begin
        return This.motionRectangles;
   end getMotionRectangles;

   procedure setMotionRectangles (This : in out MotionRectanglesResultsFrameCacheable; motionRectangles : MotionRectangles_Access) is
   begin
        This.motionRectangles := motionRectangles;
   end setMotionRectangles;

   function toString (This : in out MotionRectanglesResultsFrameCacheable) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (To_Unbounded_String (" Frame: "));
        stringBuffer.append (This.getKey.toString);
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package;


