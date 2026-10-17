--
-- AllBinary Open License Version 1
-- Copyright (c) 2023 AllBinary
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

package org.allbinary.media.image.ImageJ2MEScaleUtil_Package is


   type ImageJ2MEScaleUtil is tagged;
   type ImageJ2MEScaleUtil_Access is access all ImageJ2MEScaleUtil'Class;
   type ImageJ2MEScaleUtil_Access_Array is array (Natural range <>) of ImageJ2MEScaleUtil_Access;
   type ImageJ2MEScaleUtil_Access_Array_Access is access all ImageJ2MEScaleUtil_Access_Array;

   type ImageJ2MEScaleUtil is new Java_Object with null record;
   instance : ImageJ2MEScaleUtil_Access;

   procedure Initialize (This : in out ImageJ2MEScaleUtil'Class);
   function Create return ImageJ2MEScaleUtil_Access;
   function getInstance return ImageJ2MEScaleUtil_Access;
   procedure getInstance;
   function scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) return Image_Access_Array_Access;
   procedure scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer);
   function scale (This : in out ImageJ2MEScaleUtil; image : Image_Access; width : Integer; height : Integer) return Image_Access;
   procedure scale (This : in out ImageJ2MEScaleUtil; image : Image_Access; width : Integer; height : Integer);

end org.allbinary.media.image.ImageJ2MEScaleUtil_Package;


