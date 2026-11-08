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
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package_References;
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
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype ImageComparisonResult_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access;
   function "=" (Left, Right : ImageComparisonResult_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   subtype ImageComparisonResult_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array;
   function "=" (Left, Right : ImageComparisonResult_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   subtype ImageComparisonResult_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResult_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   subtype ImageComparisonResult_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonResult_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   subtype ImageComparisonResult_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResult_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResult_Package_References."=";
   procedure Initialize_Fields (This : in out ImageComparisonResultFrameCacheable'Class) is
   begin
      null;
      
      This.imageComparisonResult := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonResultFrameCacheable'Class; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; frame : Long_Long_Integer) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
   begin
      Initialize_Fields (This);
        ImageComparisonResultFrameCacheable'Class (This).setImageComparisonResult (imageComparisonResult);
        This.frame := frame;
   end Initialize;

   function Create (imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; frame : Long_Long_Integer) return ImageComparisonResultFrameCacheable_Access is
      This : constant ImageComparisonResultFrameCacheable_Access := new ImageComparisonResultFrameCacheable;
   begin
      ImageComparisonResultFrameCacheable_Package.Initialize (This.all, imageComparisonResult_Param, frame);
      return This;
   end Create;

   function getKey (This : in out ImageComparisonResultFrameCacheable) return Java_Object_Access is
   begin
        return This.frame;
   end getKey;

   function getFrame (This : in out ImageComparisonResultFrameCacheable) return Long_Long_Integer is
   begin
        return This.frame;
   end getFrame;

   procedure setFrame (This : in out ImageComparisonResultFrameCacheable; frame : Long_Long_Integer) is
   begin
        This.frame := frame;
   end setFrame;

   function getImageComparisonResult (This : in out ImageComparisonResultFrameCacheable) return ImageComparisonResult_Access is
   begin
        return This.imageComparisonResult;
   end getImageComparisonResult;

   procedure setImageComparisonResult (This : in out ImageComparisonResultFrameCacheable; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
   begin
        This.imageComparisonResult := imageComparisonResult;
   end setImageComparisonResult;

   function toString (This : in out ImageComparisonResultFrameCacheable) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (Java_Object'Class (This)'Tag)));
        stringBuffer.append (To_Unbounded_String (" Frame: "));
        stringBuffer.appendlong (ImageComparisonResultFrameCacheable'Class (This).getFrame);
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package;


