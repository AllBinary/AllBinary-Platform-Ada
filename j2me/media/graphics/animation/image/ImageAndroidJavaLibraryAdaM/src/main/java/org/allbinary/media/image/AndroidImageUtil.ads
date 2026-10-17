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
with android.graphics.Bitmap_Package; use android.graphics.Bitmap_Package;
with android.graphics.Canvas_Package; use android.graphics.Canvas_Package;
with android.graphics.Color_Package; use android.graphics.Color_Package;
with android.graphics.Matrix_Package; use android.graphics.Matrix_Package;
with android.graphics.Paint_Package; use android.graphics.Paint_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;

package org.allbinary.media.image.AndroidImageUtil_Package is

   package Bitmap_Package renames Standard.android.graphics.Bitmap_Package;
   package Canvas_Package renames Standard.android.graphics.Canvas_Package;
   package Color_Package renames Standard.android.graphics.Color_Package;
   package Matrix_Package renames Standard.android.graphics.Matrix_Package;
   package Paint_Package renames Standard.android.graphics.Paint_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;

   type AndroidImageUtil is tagged;
   type AndroidImageUtil_Access is access all AndroidImageUtil'Class;
   type AndroidImageUtil_Access_Array is array (Natural range <>) of AndroidImageUtil_Access;
   type AndroidImageUtil_Access_Array_Access is access all AndroidImageUtil_Access_Array;

   type AndroidImageUtil is new Java_Object with null record;
   instance : AndroidImageUtil_Access;

   procedure Initialize (This : in out AndroidImageUtil'Class);
   function Create return AndroidImageUtil_Access;
   function getInstance return AndroidImageUtil_Access;
   procedure paintBitmap (This : in out AndroidImageUtil; bitmap : Bitmap_Access; originalBitmap : Bitmap_Access; paint : Paint_Access);
   procedure paint (This : in out AndroidImageUtil; image : Image_Access; originalImage : Image_Access; paint : Paint_Access);
   procedure rotate (This : in out AndroidImageUtil; image : Image_Access; originalImage : Image_Access; matrix : Matrix_Access; paint : Paint_Access);

end org.allbinary.media.image.AndroidImageUtil_Package;


