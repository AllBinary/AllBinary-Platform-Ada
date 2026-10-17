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
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package; use org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.eclipse.swt.graphics.ImageData_Package; use org.eclipse.swt.graphics.ImageData_Package;
with org.microemu.device.swt.SwtImmutableImage_Package; use org.microemu.device.swt.SwtImmutableImage_Package;
with org.microemu.device.swt.SwtMutableImage_Package; use org.microemu.device.swt.SwtMutableImage_Package;

package org.allbinary.media.image.ImageModifierUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package ModifierOpenGLESImageProcessor_Package renames Standard.org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package ImageData_Package renames Standard.org.eclipse.swt.graphics.ImageData_Package;
   package SwtImmutableImage_Package renames Standard.org.microemu.device.swt.SwtImmutableImage_Package;
   package SwtMutableImage_Package renames Standard.org.microemu.device.swt.SwtMutableImage_Package;

   type ImageModifierUtil is tagged;
   type ImageModifierUtil_Access is access all ImageModifierUtil'Class;
   type ImageModifierUtil_Access_Array is array (Natural range <>) of ImageModifierUtil_Access;
   type ImageModifierUtil_Access_Array_Access is access all ImageModifierUtil_Access_Array;

   type ImageModifierUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageCopyUtil : ImageCopyUtil_Access;
      features : Features_Access;
   end record;
   instance : ImageModifierUtil_Access;

   procedure Initialize (This : in out ImageModifierUtil'Class);
   function Create return ImageModifierUtil_Access;
   function getInstanceOrCreate return ImageModifierUtil_Access;
   procedure getInstanceOrCreate;
   procedure setBasicColorP (This : in out ImageModifierUtil; basicColor : BasicColor_Access);
   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; basicColor : BasicColor_Access);
   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; basicColor : BasicColor_Access);
   procedure setAlpha (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; alphaInt : Integer);
   procedure setAlphaSWT (This : in out ImageModifierUtil; image : Image_Access; alphaInt : Integer);
   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access;
   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access);
   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image : Image_Access);
   procedure reset (This : in out ImageModifierUtil);

end org.allbinary.media.image.ImageModifierUtil_Package;


