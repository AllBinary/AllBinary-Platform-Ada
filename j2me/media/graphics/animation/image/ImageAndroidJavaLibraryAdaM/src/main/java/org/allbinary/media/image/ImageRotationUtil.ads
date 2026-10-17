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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with android.graphics.Bitmap_Package; use android.graphics.Bitmap_Package;
with android.graphics.Canvas_Package; use android.graphics.Canvas_Package;
with android.graphics.Matrix_Package; use android.graphics.Matrix_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;

package org.allbinary.media.image.ImageRotationUtil_Package is

   package Anchor_Package renames org.allbinary.graphics.Anchor_Package;
   package Bitmap_Package renames android.graphics.Bitmap_Package;
   package Canvas_Package renames android.graphics.Canvas_Package;
   package Matrix_Package renames android.graphics.Matrix_Package;
   package AndroidImageInterface_Package renames org.microemu.android.device.AndroidImageInterface_Package;

   type ImageRotationUtil is tagged;
   type ImageRotationUtil_Access is access all ImageRotationUtil'Class;
   type ImageRotationUtil_Access_Array is array (Natural range <>) of ImageRotationUtil_Access;
   type ImageRotationUtil_Access_Array_Access is access all ImageRotationUtil_Access_Array;

   type ImageRotationUtil is new Java_Object with record
      matrix : Matrix_Access;
      anchor : Integer;
   end record;
   instance : ImageRotationUtil_Access;

   procedure Initialize (This : in out ImageRotationUtil'Class);
   function Create return ImageRotationUtil_Access;
   function getInstance return ImageRotationUtil_Access;
   procedure getInstance;
   function createRotatedImage (This : in out ImageRotationUtil; originalImage : Image_Access; rotationInDegrees : Integer) return Image_Access;
   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage : Image_Access; rotationInDegrees : Integer);

end org.allbinary.media.image.ImageRotationUtil_Package;


