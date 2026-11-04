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

limited with org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
package org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References is
   type ImageToRotationImageArrayUtil_Access is access all org.allbinary.media.image.ImageToRotationImageArrayUtil_Package.ImageToRotationImageArrayUtil'Class;
   type ImageToRotationImageArrayUtil_Access_Array is array (Natural range <>) of ImageToRotationImageArrayUtil_Access;
   type ImageToRotationImageArrayUtil_Access_Array_Access is access all ImageToRotationImageArrayUtil_Access_Array;
   type ImageToRotationImageArrayUtil_Access_Array_Access_Array is array (Natural range <>) of ImageToRotationImageArrayUtil_Access_Array_Access;
   type ImageToRotationImageArrayUtil_Access_Array_Access_Array_Access is access all ImageToRotationImageArrayUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References;

with org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References;
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

package org.allbinary.media.image.ImageToRotationImageArrayUtil_Package is

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


   subtype ImageToRotationImageArrayUtil_Access is org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References.ImageToRotationImageArrayUtil_Access;
   function "=" (Left, Right : ImageToRotationImageArrayUtil_Access) return Boolean renames org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References."=";
   subtype ImageToRotationImageArrayUtil_Access_Array is org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References.ImageToRotationImageArrayUtil_Access_Array;
   function "=" (Left, Right : ImageToRotationImageArrayUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References."=";
   subtype ImageToRotationImageArrayUtil_Access_Array_Access is org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References.ImageToRotationImageArrayUtil_Access_Array_Access;
   function "=" (Left, Right : ImageToRotationImageArrayUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References."=";
   subtype ImageToRotationImageArrayUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References.ImageToRotationImageArrayUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageToRotationImageArrayUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References."=";
   subtype ImageToRotationImageArrayUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References.ImageToRotationImageArrayUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageToRotationImageArrayUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageToRotationImageArrayUtil_Package_References."=";

   type ImageToRotationImageArrayUtil is new Java_Object with null record;
   instance : ImageToRotationImageArrayUtil_Access;

   procedure Initialize (This : in out ImageToRotationImageArrayUtil'Class);
   function Create return ImageToRotationImageArrayUtil_Access;
   function getInstance return ImageToRotationImageArrayUtil_Access;
   function generate (This : in out ImageToRotationImageArrayUtil; image_Param : access Image_Package.Image'Class; angleIncrement : Integer; totalAngle : Integer) return Image_Access_Array_Access;
   procedure generate (This : in out ImageToRotationImageArrayUtil; image_Param : access Image_Package.Image'Class; angleIncrement : Integer; totalAngle : Integer);

end org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;


