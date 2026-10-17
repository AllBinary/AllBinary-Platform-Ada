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


package body org.allbinary.media.image.ImageToRotationImageArrayUtil_Package is

   procedure Initialize_Fields (This : in out ImageToRotationImageArrayUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ImageToRotationImageArrayUtil_Access is
   begin
        return ImageToRotationImageArrayUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageToRotationImageArrayUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageToRotationImageArrayUtil_Access is
      This : constant ImageToRotationImageArrayUtil_Access := new ImageToRotationImageArrayUtil;
   begin
      ImageToRotationImageArrayUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function generate (This : in out ImageToRotationImageArrayUtil; image_Param : access Image_Package.Image'Class; angleIncrement : Integer; totalAngle : Integer) return Image_Access_Array_Access is
      image : constant Image_Access := Image_Access (image_Param);
      imageRotationUtil : ImageRotationUtil_Access;
      totalFrames : Integer;
      imageArray : Image_Access_Array_Access;
      index : Integer;
   begin
        imageRotationUtil := ImageRotationUtil_Package.getInstance;
        totalFrames := (totalAngle) / (angleIncrement);
        imageArray := new Image_Access_Array'(0 .. (totalFrames) - 1 => null);
        imageArray (0) := image;
        for index in 1 .. (totalFrames) - 1 loop
            imageArray (index) := imageRotationUtil.createRotatedImage (image, (index) * (angleIncrement));
        end loop;
        return imageArray;
   end generate;

   procedure generate (This : in out ImageToRotationImageArrayUtil; image_Param : access Image_Package.Image'Class; angleIncrement : Integer; totalAngle : Integer) is
      Java_Result : constant Image_Access_Array_Access := ImageToRotationImageArrayUtil'Class (This).generate (image_Param, angleIncrement, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generate;

begin
   null;
   instance := ImageToRotationImageArrayUtil_Package.Create;

end org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;


