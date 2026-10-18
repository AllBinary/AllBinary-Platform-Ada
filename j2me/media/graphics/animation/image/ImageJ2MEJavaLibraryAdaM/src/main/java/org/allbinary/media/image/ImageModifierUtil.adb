-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.media.image.ImageModifierUtil_Package is

   procedure Initialize_Fields (This : in out ImageModifierUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageModifierUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageModifierUtil_Access is
      This : constant ImageModifierUtil_Access := new ImageModifierUtil;
   begin
      ImageModifierUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstanceOrCreate return ImageModifierUtil_Access is
   begin
        return ImageModifierUtil_Package.instance;
   end getInstanceOrCreate;

   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end setColor;

   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end changeColor;

   procedure setAlpha (This : in out ImageModifierUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alphaInt : Integer) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end setAlpha;

   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access is
   begin
        return originalImageArray;
   end getImageArray;

   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end handleImage;

   procedure reset (This : in out ImageModifierUtil) is
   begin
        null;
   end reset;

   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) is
      Java_Result : constant Image_Access_Array_Access := ImageModifierUtil'Class (This).getImageArray (originalImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageArray;

begin
   null;
   instance := ImageModifierUtil_Package.Create;

end org.allbinary.media.image.ImageModifierUtil_Package;


