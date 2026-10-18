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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;

package org.allbinary.media.image.ImageCreationUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;

   type ImageCreationUtil is tagged;
   type ImageCreationUtil_Access is access all ImageCreationUtil'Class;
   type ImageCreationUtil_Access_Array is array (Natural range <>) of ImageCreationUtil_Access;
   type ImageCreationUtil_Access_Array_Access is access all ImageCreationUtil_Access_Array;
   type ImageCreationUtil_Access_Array_Access_Array is array (Natural range <>) of ImageCreationUtil_Access_Array_Access;
   type ImageCreationUtil_Access_Array_Access_Array_Access is access all ImageCreationUtil_Access_Array_Access_Array;

   type ImageCreationUtil is new Java_Object with null record;
   instance : ImageCreationUtil_Access;

   procedure Initialize (This : in out ImageCreationUtil'Class);
   function Create return ImageCreationUtil_Access;
   function getInstance return ImageCreationUtil_Access;
   function createImageWH (This : in out ImageCreationUtil; width : Integer; height : Integer) return Image_Access;
   procedure createImageWH (This : in out ImageCreationUtil; width : Integer; height : Integer);
   function createImage (This : in out ImageCreationUtil; width : Integer; height : Integer; maxScaleX : Float; maxScaleY : Float) return Image_Access;
   procedure createImage (This : in out ImageCreationUtil; width : Integer; height : Integer; maxScaleX : Float; maxScaleY : Float);

end org.allbinary.media.image.ImageCreationUtil_Package;


