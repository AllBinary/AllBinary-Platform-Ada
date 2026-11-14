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
limited with org.allbinary.media.image.io.IIOImageCacheable_Package;
package org.allbinary.media.image.io.IIOImageCacheable_Package_References is
   type IIOImageCacheable_Access is access all org.allbinary.media.image.io.IIOImageCacheable_Package.IIOImageCacheable'Class;
   type IIOImageCacheable_Access_Array is array (Natural range <>) of IIOImageCacheable_Access;
   type IIOImageCacheable_Access_Array_Access is access all IIOImageCacheable_Access_Array;
   type IIOImageCacheable_Access_Array_Access_Array is array (Natural range <>) of IIOImageCacheable_Access_Array_Access;
   type IIOImageCacheable_Access_Array_Access_Array_Access is access all IIOImageCacheable_Access_Array_Access_Array;
   type IIOImageCacheable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IIOImageCacheable_Access_Array_Access;
   end record;
   function Java_Box (Value : IIOImageCacheable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IIOImageCacheable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IIOImageCacheable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IIOImageCacheable_Access_Array_Access is (if Value /= null and then Value.all in IIOImageCacheable_Access_Array_Object'Class then IIOImageCacheable_Access_Array_Object'Class (Value.all).Value else null);
   type IIOImageCacheable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IIOImageCacheable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IIOImageCacheable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IIOImageCacheable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IIOImageCacheable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IIOImageCacheable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IIOImageCacheable_Access_Array_Access_Array_Object'Class then IIOImageCacheable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.io.IIOImageCacheable_Package_References;

with org.allbinary.media.image.io.IIOImageCacheable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with javax.imageio.IIOImage_Package; use javax.imageio.IIOImage_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.media.image.io.IIOImageCacheable_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype IIOImageCacheable_Access is org.allbinary.media.image.io.IIOImageCacheable_Package_References.IIOImageCacheable_Access;
   function "=" (Left, Right : IIOImageCacheable_Access) return Boolean renames org.allbinary.media.image.io.IIOImageCacheable_Package_References."=";
   subtype IIOImageCacheable_Access_Array is org.allbinary.media.image.io.IIOImageCacheable_Package_References.IIOImageCacheable_Access_Array;
   function "=" (Left, Right : IIOImageCacheable_Access_Array) return Boolean renames org.allbinary.media.image.io.IIOImageCacheable_Package_References."=";
   subtype IIOImageCacheable_Access_Array_Access is org.allbinary.media.image.io.IIOImageCacheable_Package_References.IIOImageCacheable_Access_Array_Access;
   function "=" (Left, Right : IIOImageCacheable_Access_Array_Access) return Boolean renames org.allbinary.media.image.io.IIOImageCacheable_Package_References."=";
   function Java_Box (Value : IIOImageCacheable_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.io.IIOImageCacheable_Package_References.Java_Box;
   function Java_Unbox_IIOImageCacheable_Access_Array (Value : access Java_Object'Class) return IIOImageCacheable_Access_Array_Access renames org.allbinary.media.image.io.IIOImageCacheable_Package_References.Java_Unbox_IIOImageCacheable_Access_Array;
   subtype IIOImageCacheable_Access_Array_Access_Array is org.allbinary.media.image.io.IIOImageCacheable_Package_References.IIOImageCacheable_Access_Array_Access_Array;
   function "=" (Left, Right : IIOImageCacheable_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.io.IIOImageCacheable_Package_References."=";
   subtype IIOImageCacheable_Access_Array_Access_Array_Access is org.allbinary.media.image.io.IIOImageCacheable_Package_References.IIOImageCacheable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IIOImageCacheable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.io.IIOImageCacheable_Package_References."=";
   function Java_Box (Value : IIOImageCacheable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.io.IIOImageCacheable_Package_References.Java_Box;
   function Java_Unbox_IIOImageCacheable_Access_Array_Access_Array (Value : access Java_Object'Class) return IIOImageCacheable_Access_Array_Access_Array_Access renames org.allbinary.media.image.io.IIOImageCacheable_Package_References.Java_Unbox_IIOImageCacheable_Access_Array_Access_Array;

   type IIOImageCacheable is new Java_Object and CacheableInterface with record
      key : Unbounded_String;
      iioImage : IIOImage_Access;
   end record;

   procedure Initialize (This : in out IIOImageCacheable'Class; key : Unbounded_String);
   function Create (key : Unbounded_String) return IIOImageCacheable_Access;
   function getKey (This : in out IIOImageCacheable) return Java_Object_Access;
   procedure setBufferedImage (This : in out IIOImageCacheable; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);
   function getIioImage (This : in out IIOImageCacheable) return IIOImage_Access;
   procedure setIioImage (This : in out IIOImageCacheable; iioImage_Param : access IIOImage_Package.IIOImage'Class);
   function toString (This : in out IIOImageCacheable) return Unbounded_String;

end org.allbinary.media.image.io.IIOImageCacheable_Package;


