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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype MotionRectangles_Access is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access;
   function "=" (Left, Right : MotionRectangles_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References."=";
   subtype MotionRectangles_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access_Array;
   function "=" (Left, Right : MotionRectangles_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References."=";
   subtype MotionRectangles_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access_Array_Access;
   function "=" (Left, Right : MotionRectangles_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References."=";
   subtype MotionRectangles_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectangles_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References."=";
   subtype MotionRectangles_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectangles_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References."=";
   procedure Initialize_Fields (This : in out MotionRectanglesResultsFrameCacheable'Class) is
   begin
      null;
      This.motionRectangles := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectanglesResultsFrameCacheable'Class; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class; frame : Long_Long_Integer) is
      motionRectangles : constant MotionRectangles_Access := MotionRectangles_Access (motionRectangles_Param);
   begin
      Initialize_Fields (This);
        This.frame := frame;
        MotionRectanglesResultsFrameCacheable'Class (This).setMotionRectangles (motionRectangles);
   end Initialize;

   function Create (motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class; frame : Long_Long_Integer) return MotionRectanglesResultsFrameCacheable_Access is
      This : constant MotionRectanglesResultsFrameCacheable_Access := new MotionRectanglesResultsFrameCacheable;
   begin
      MotionRectanglesResultsFrameCacheable_Package.Initialize (This.all, motionRectangles_Param, frame);
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

   procedure setMotionRectangles (This : in out MotionRectanglesResultsFrameCacheable; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) is
      motionRectangles : constant MotionRectangles_Access := MotionRectangles_Access (motionRectangles_Param);
   begin
        This.motionRectangles := motionRectangles;
   end setMotionRectangles;

   function toString (This : in out MotionRectanglesResultsFrameCacheable) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (To_Unbounded_String (" Frame: "));
        stringBuffer.append (MotionRectanglesResultsFrameCacheable'Class (This).getKey.toString);
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package;


