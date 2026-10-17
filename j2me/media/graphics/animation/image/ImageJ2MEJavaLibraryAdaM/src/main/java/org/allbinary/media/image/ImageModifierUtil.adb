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

   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; basicColor : BasicColor_Access) is
   begin
        null;
   end setColor;

   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; basicColor : BasicColor_Access) is
   begin
        null;
   end changeColor;

   procedure setAlpha (This : in out ImageModifierUtil; originalImage : Image_Access; image : Image_Access; imageIndex : Integer; alphaInt : Integer) is
   begin
        null;
   end setAlpha;

   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access is
   begin
        return originalImageArray;
   end getImageArray;

   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image : Image_Access) is
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


