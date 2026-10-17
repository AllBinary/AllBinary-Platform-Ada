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
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;

package org.allbinary.media.image.ImageScaleUtil_Package is

   package ImageCache_Package renames org.allbinary.image.ImageCache_Package;

   type ImageScaleUtil is tagged;
   type ImageScaleUtil_Access is access all ImageScaleUtil'Class;
   type ImageScaleUtil_Access_Array is array (Natural range <>) of ImageScaleUtil_Access;
   type ImageScaleUtil_Access_Array_Access is access all ImageScaleUtil_Access_Array;

   type ImageScaleUtil is new Java_Object with null record;
   instance : ImageScaleUtil_Access;

   procedure Initialize (This : in out ImageScaleUtil'Class);
   function Create return ImageScaleUtil_Access;
   function getInstance return ImageScaleUtil_Access;
   procedure getInstance;
   function createImage2 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access;
   procedure createImage2 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean);
   function createImage3 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access;
   procedure createImage3 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean);

end org.allbinary.media.image.ImageScaleUtil_Package;


