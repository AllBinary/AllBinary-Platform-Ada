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

with AllBinary_Java;
limited with org.allbinary.media.image.ImageJ2MEScaleUtil_Package;
package org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References is
   type ImageJ2MEScaleUtil_Access is access all org.allbinary.media.image.ImageJ2MEScaleUtil_Package.ImageJ2MEScaleUtil'Class;
   type ImageJ2MEScaleUtil_Access_Array is array (Natural range <>) of ImageJ2MEScaleUtil_Access;
   type ImageJ2MEScaleUtil_Access_Array_Access is access all ImageJ2MEScaleUtil_Access_Array;
   type ImageJ2MEScaleUtil_Access_Array_Access_Array is array (Natural range <>) of ImageJ2MEScaleUtil_Access_Array_Access;
   type ImageJ2MEScaleUtil_Access_Array_Access_Array_Access is access all ImageJ2MEScaleUtil_Access_Array_Access_Array;
   type ImageJ2MEScaleUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageJ2MEScaleUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageJ2MEScaleUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageJ2MEScaleUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageJ2MEScaleUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageJ2MEScaleUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageJ2MEScaleUtil_Access_Array_Object'Class then ImageJ2MEScaleUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageJ2MEScaleUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageJ2MEScaleUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageJ2MEScaleUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageJ2MEScaleUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageJ2MEScaleUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageJ2MEScaleUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageJ2MEScaleUtil_Access_Array_Access_Array_Object'Class then ImageJ2MEScaleUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References;

with org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.media.image.ImageJ2MEScaleUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageJ2MEScaleUtil_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   subtype ImageJ2MEScaleUtil_Access_Array is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   subtype ImageJ2MEScaleUtil_Access_Array_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   function Java_Box (Value : ImageJ2MEScaleUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.Java_Box;
   function Java_Unbox_ImageJ2MEScaleUtil_Access_Array (Value : access Java_Object'Class) return ImageJ2MEScaleUtil_Access_Array_Access renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.Java_Unbox_ImageJ2MEScaleUtil_Access_Array;
   subtype ImageJ2MEScaleUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   subtype ImageJ2MEScaleUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   function Java_Box (Value : ImageJ2MEScaleUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.Java_Box;
   function Java_Unbox_ImageJ2MEScaleUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageJ2MEScaleUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.Java_Unbox_ImageJ2MEScaleUtil_Access_Array_Access_Array;

   type ImageJ2MEScaleUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ImageJ2MEScaleUtil_Access;

   procedure Initialize (This : in out ImageJ2MEScaleUtil'Class);
   function Create return ImageJ2MEScaleUtil_Access;
   function getInstance return ImageJ2MEScaleUtil_Access;
   function scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) return Image_Access_Array_Access;
   procedure scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer);
   function scale (This : in out ImageJ2MEScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer) return Image_Access;
   procedure scale (This : in out ImageJ2MEScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer);

end org.allbinary.media.image.ImageJ2MEScaleUtil_Package;


