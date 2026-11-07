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


with org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package; use org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;
with org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package; use org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;
with org.allbinary.media.image.io.ImageIOInterface_Package; use org.allbinary.media.image.io.ImageIOInterface_Package;
with org.allbinary.media.image.io.ImageIOInterface_Package_References;
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.input.media.image.InputImageType_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.media.image.InputImageType_Package_References;

package body org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package is

   package CapturedImageInputOutput_Package renames Standard.org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;
   package ComparisonImageInputOutput_Package renames Standard.org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package;
   package MotionRectanglesImageInputOutput_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;
   subtype ImageIOInterface_Access is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access;
   function "=" (Left, Right : ImageIOInterface_Access) return Boolean renames org.allbinary.media.image.io.ImageIOInterface_Package_References."=";
   subtype ImageIOInterface_Access_Array is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access_Array;
   function "=" (Left, Right : ImageIOInterface_Access_Array) return Boolean renames org.allbinary.media.image.io.ImageIOInterface_Package_References."=";
   subtype ImageIOInterface_Access_Array_Access is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access_Array_Access;
   function "=" (Left, Right : ImageIOInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.io.ImageIOInterface_Package_References."=";
   subtype ImageIOInterface_Access_Array_Access_Array is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ImageIOInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.io.ImageIOInterface_Package_References."=";
   subtype ImageIOInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageIOInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.io.ImageIOInterface_Package_References."=";
   subtype InputImageType_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access;
   function "=" (Left, Right : InputImageType_Access) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   subtype InputImageType_Access_Array is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array;
   function "=" (Left, Right : InputImageType_Access_Array) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   subtype InputImageType_Access_Array_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access;
   function "=" (Left, Right : InputImageType_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   subtype InputImageType_Access_Array_Access_Array is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access_Array;
   function "=" (Left, Right : InputImageType_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   subtype InputImageType_Access_Array_Access_Array_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputImageType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.InputImageType_Package_References."=";
   procedure Initialize_Fields (This : in out InputImageIOInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputImageIOInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputImageIOInterfaceFactory_Access is
      This : constant InputImageIOInterfaceFactory_Access := new InputImageIOInterfaceFactory;
   begin
      InputImageIOInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (imageType_Param : access InputImageType_Package.InputImageType'Class) return ImageIOInterface_Access is
      imageType : constant InputImageType_Access := InputImageType_Access (imageType_Param);
   begin
        if org.allbinary.input.media.image.InputImageType_Package_References."=" (imageType, InputImageType_Package.CAPTURE) then
            return ImageIOInterface_Access (CapturedImageInputOutput_Package.Create);
        elsif org.allbinary.input.media.image.InputImageType_Package_References."=" (imageType, InputImageType_Package.COMPARISON) then
            return ImageIOInterface_Access (ComparisonImageInputOutput_Package.Create);
        elsif org.allbinary.input.media.image.InputImageType_Package_References."=" (imageType, InputImageType_Package.MOTION) then
            return ImageIOInterface_Access (MotionRectanglesImageInputOutput_Package.Create);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No ImageIOInterface for: ") & imageType.toString));
        end if;
   end getInstance;

   procedure getInstance (imageType_Param : access InputImageType_Package.InputImageType'Class) is
      Java_Result : constant ImageIOInterface_Access := getInstance (imageType_Param => imageType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;


