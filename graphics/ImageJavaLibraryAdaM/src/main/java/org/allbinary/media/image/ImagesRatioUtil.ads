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

with AllBinary_Java;
limited with org.allbinary.media.image.ImagesRatioUtil_Package;
package org.allbinary.media.image.ImagesRatioUtil_Package_References is
   type ImagesRatioUtil_Access is access all org.allbinary.media.image.ImagesRatioUtil_Package.ImagesRatioUtil'Class;
   type ImagesRatioUtil_Access_Array is array (Natural range <>) of ImagesRatioUtil_Access;
   type ImagesRatioUtil_Access_Array_Access is access all ImagesRatioUtil_Access_Array;
   type ImagesRatioUtil_Access_Array_Access_Array is array (Natural range <>) of ImagesRatioUtil_Access_Array_Access;
   type ImagesRatioUtil_Access_Array_Access_Array_Access is access all ImagesRatioUtil_Access_Array_Access_Array;
   type ImagesRatioUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImagesRatioUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImagesRatioUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImagesRatioUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImagesRatioUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImagesRatioUtil_Access_Array_Access is (if Value /= null and then Value.all in ImagesRatioUtil_Access_Array_Object'Class then ImagesRatioUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImagesRatioUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImagesRatioUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImagesRatioUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImagesRatioUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImagesRatioUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImagesRatioUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImagesRatioUtil_Access_Array_Access_Array_Object'Class then ImagesRatioUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImagesRatioUtil_Package_References;

with org.allbinary.media.image.ImagesRatioUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageUtil_Package_References;

package org.allbinary.media.image.ImagesRatioUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype ImageUtil_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access;
   use type ImageUtil_Access;
   subtype ImageUtil_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array;
   use type ImageUtil_Access_Array;
   subtype ImageUtil_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access;
   use type ImageUtil_Access_Array_Access;
   subtype ImageUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array;
   use type ImageUtil_Access_Array_Access_Array;
   subtype ImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array_Access;
   use type ImageUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImagesRatioUtil_Access is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access;
   function "=" (Left, Right : ImagesRatioUtil_Access) return Boolean renames org.allbinary.media.image.ImagesRatioUtil_Package_References."=";
   subtype ImagesRatioUtil_Access_Array is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access_Array;
   function "=" (Left, Right : ImagesRatioUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImagesRatioUtil_Package_References."=";
   subtype ImagesRatioUtil_Access_Array_Access is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access_Array_Access;
   function "=" (Left, Right : ImagesRatioUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImagesRatioUtil_Package_References."=";
   function Java_Box (Value : ImagesRatioUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImagesRatioUtil_Package_References.Java_Box;
   function Java_Unbox_ImagesRatioUtil_Access_Array (Value : access Java_Object'Class) return ImagesRatioUtil_Access_Array_Access renames org.allbinary.media.image.ImagesRatioUtil_Package_References.Java_Unbox_ImagesRatioUtil_Access_Array;
   subtype ImagesRatioUtil_Access_Array_Access_Array is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImagesRatioUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImagesRatioUtil_Package_References."=";
   subtype ImagesRatioUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImagesRatioUtil_Package_References.ImagesRatioUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImagesRatioUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImagesRatioUtil_Package_References."=";
   function Java_Box (Value : ImagesRatioUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImagesRatioUtil_Package_References.Java_Box;
   function Java_Unbox_ImagesRatioUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImagesRatioUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImagesRatioUtil_Package_References.Java_Unbox_ImagesRatioUtil_Access_Array_Access_Array;

   type ImagesRatioUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageUtil : ImageUtil_Access;
   end record;
   instance : ImagesRatioUtil_Access;

   procedure Initialize (This : in out ImagesRatioUtil'Class);
   function Create return ImagesRatioUtil_Access;
   function getInstance return ImagesRatioUtil_Access;
   function isEqual (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer) return Boolean;
   procedure isEqual (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer);
   function getAverage (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer) return Long_Float;
   procedure getAverage (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer);
   function fudge (This : in out ImagesRatioUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; ratio : Long_Float) return BufferedImage_Access;
   procedure fudge (This : in out ImagesRatioUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; ratio : Long_Float);
   function fudge (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer; ratio : Long_Float) return BufferedImage_Access_Array_Access;
   procedure fudge (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer; ratio : Long_Float);

end org.allbinary.media.image.ImagesRatioUtil_Package;


