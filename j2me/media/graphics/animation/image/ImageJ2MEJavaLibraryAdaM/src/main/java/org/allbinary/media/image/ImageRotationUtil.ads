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

limited with org.allbinary.media.image.ImageRotationUtil_Package;
package org.allbinary.media.image.ImageRotationUtil_Package_References is
   type ImageRotationUtil_Access is access all org.allbinary.media.image.ImageRotationUtil_Package.ImageRotationUtil'Class;
   type ImageRotationUtil_Access_Array is array (Natural range <>) of ImageRotationUtil_Access;
   type ImageRotationUtil_Access_Array_Access is access all ImageRotationUtil_Access_Array;
   type ImageRotationUtil_Access_Array_Access_Array is array (Natural range <>) of ImageRotationUtil_Access_Array_Access;
   type ImageRotationUtil_Access_Array_Access_Array_Access is access all ImageRotationUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageRotationUtil_Package_References;

with org.allbinary.media.image.ImageRotationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;

package org.allbinary.media.image.ImageRotationUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageRotationUtil_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access;
   function "=" (Left, Right : ImageRotationUtil_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array;
   function "=" (Left, Right : ImageRotationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";

   type ImageRotationUtil is new Java_Object with record
      anchor : Integer;
   end record;
   instance : ImageRotationUtil_Access;

   procedure Initialize (This : in out ImageRotationUtil'Class);
   function Create return ImageRotationUtil_Access;
   function getInstance return ImageRotationUtil_Access;
   function createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) return Image_Access;
   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer);

end org.allbinary.media.image.ImageRotationUtil_Package;


