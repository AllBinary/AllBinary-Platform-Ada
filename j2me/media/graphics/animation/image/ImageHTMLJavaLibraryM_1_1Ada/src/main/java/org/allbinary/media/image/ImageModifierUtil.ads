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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.microemu.device.playn.PlaynImage_Package; use org.microemu.device.playn.PlaynImage_Package;
with org.microemu.device.ResourceCallbackStrings_Package; use org.microemu.device.ResourceCallbackStrings_Package;
with playn.core.Canvas_Package; use playn.core.Canvas_Package;
with playn.core.CanvasImage_Package; use playn.core.CanvasImage_Package;
with playn.core.util.Callback_Package; use playn.core.util.Callback_Package;

package org.allbinary.media.image.ImageModifierUtil_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PlaynImage_Package renames Standard.org.microemu.device.playn.PlaynImage_Package;
   package ResourceCallbackStrings_Package renames Standard.org.microemu.device.ResourceCallbackStrings_Package;
   package Canvas_Package renames Standard.playn.core.Canvas_Package;
   package CanvasImage_Package renames Standard.playn.core.CanvasImage_Package;
   package Callback_Package renames Standard.playn.core.util.Callback_Package;

   type ImageModifierUtil is tagged;
   type ImageModifierUtil_Access is access all ImageModifierUtil'Class;
   type ImageModifierUtil_Access_Array is array (Natural range <>) of ImageModifierUtil_Access;
   type ImageModifierUtil_Access_Array_Access is access all ImageModifierUtil_Access_Array;

   type ImageModifierUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      resourceCallbackStrings : ResourceCallbackStrings_Access;
      alphaArray : Boolean_Array_Access;
   end record;

   procedure Initialize (This : in out ImageModifierUtil'Class);
   function Create return ImageModifierUtil_Access;
   function getInstanceOrCreate return ImageModifierUtil_Access;
   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image'Class; image_Param : access Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor'Class);
   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image'Class; image_Param : access Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor'Class);
   procedure setAlpha (This : in out ImageModifierUtil; originalImage_Param : access Image'Class; image_Param : access Image'Class; imageIndex : Integer; alpha : Integer);
   procedure setAlphaF (This : in out ImageModifierUtil; originalImage_Param : access Image'Class; image_Param : access Image'Class; imageIndex : Integer; alpha : Float);
   procedure setAlpha2 (This : in out ImageModifierUtil; originalImage_Param : access Image'Class; image_Param : access Image'Class; imageIndex : Integer; alpha : Float);
   procedure setAlpha3 (This : in out ImageModifierUtil; image_Param : access Image'Class; alpha : Float);
   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access;
   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access);
   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image'Class);
   procedure copy (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image'Class; image3_Param : access Image'Class);
   procedure reset (This : in out ImageModifierUtil);

end org.allbinary.media.image.ImageModifierUtil_Package;


