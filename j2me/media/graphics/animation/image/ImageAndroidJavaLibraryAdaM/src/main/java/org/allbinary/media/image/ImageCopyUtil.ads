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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.media.image.ImageCopyUtil_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ImageCopyUtil is tagged;
   type ImageCopyUtil_Access is access all ImageCopyUtil'Class;
   type ImageCopyUtil_Access_Array is array (Natural range <>) of ImageCopyUtil_Access;
   type ImageCopyUtil_Access_Array_Access is access all ImageCopyUtil_Access_Array;

   type ImageCopyUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageCreationUtil : ImageCreationUtil_Access;
      anchor : Integer;
   end record;
   instance : ImageCopyUtil_Access;

   procedure Initialize (This : in out ImageCopyUtil'Class);
   function Create return ImageCopyUtil_Access;
   function getInstance return ImageCopyUtil_Access;
   procedure getInstance;
   function createImageForRotation (This : in out ImageCopyUtil; originalImage : Image_Access) return Image_Access;
   procedure createImageForRotation (This : in out ImageCopyUtil; originalImage : Image_Access);
   function createImage (This : in out ImageCopyUtil; originalImage : Image_Access) return Image_Access;
   procedure createImage (This : in out ImageCopyUtil; originalImage : Image_Access);
   function createImageScale (This : in out ImageCopyUtil; originalImage : Image_Access; canvasScale : Float; resize : Boolean) return Image_Access;
   procedure createImageScale (This : in out ImageCopyUtil; originalImage : Image_Access; canvasScale : Float; resize : Boolean);

end org.allbinary.media.image.ImageCopyUtil_Package;


