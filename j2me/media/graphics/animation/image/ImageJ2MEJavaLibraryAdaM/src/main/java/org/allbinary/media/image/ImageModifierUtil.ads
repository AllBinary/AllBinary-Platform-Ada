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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.media.image.ImageModifierUtil_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type ImageModifierUtil is tagged;
   type ImageModifierUtil_Access is access all ImageModifierUtil'Class;
   type ImageModifierUtil_Access_Array is array (Natural range <>) of ImageModifierUtil_Access;
   type ImageModifierUtil_Access_Array_Access is access all ImageModifierUtil_Access_Array;

   type ImageModifierUtil is new Java_Object with null record;
   instance : ImageModifierUtil_Access;

   procedure Initialize (This : in out ImageModifierUtil'Class);
   function Create return ImageModifierUtil_Access;
   function getInstanceOrCreate return ImageModifierUtil_Access;
   procedure getInstanceOrCreate;
   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; basicColor : BasicColor_Access);
   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; basicColor : BasicColor_Access);
   procedure setAlpha (This : in out ImageModifierUtil; originalImage : Image_Access; image : Image_Access; imageIndex : Integer; alphaInt : Integer);
   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access;
   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access);
   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image : Image_Access);
   procedure reset (This : in out ImageModifierUtil);

end org.allbinary.media.image.ImageModifierUtil_Package;


