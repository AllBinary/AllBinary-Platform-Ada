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

package body org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package is

   package CapturedImageInputOutput_Package renames Standard.org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;
   package ComparisonImageInputOutput_Package renames Standard.org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package;
   package MotionRectanglesImageInputOutput_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;
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
        if (imageType) = (InputImageType_Package.CAPTURE) then
            return ImageIOInterface_Access (CapturedImageInputOutput_Package.Create);
        elsif (imageType) = (InputImageType_Package.COMPARISON) then
            return ImageIOInterface_Access (ComparisonImageInputOutput_Package.Create);
        elsif (imageType) = (InputImageType_Package.MOTION) then
            return ImageIOInterface_Access (MotionRectanglesImageInputOutput_Package.Create);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No ImageIOInterface for: ") & imageType.toString));
        end if;
   end getInstance;

   procedure getInstance (imageType_Param : access InputImageType_Package.InputImageType'Class) is
      Java_Result : constant ImageIOInterface_Access := getInstance (imageType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;


