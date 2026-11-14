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
limited with org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
package org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References is
   type BufferedImageFrameCacheable_Access is access all org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package.BufferedImageFrameCacheable'Class;
   type BufferedImageFrameCacheable_Access_Array is array (Natural range <>) of BufferedImageFrameCacheable_Access;
   type BufferedImageFrameCacheable_Access_Array_Access is access all BufferedImageFrameCacheable_Access_Array;
   type BufferedImageFrameCacheable_Access_Array_Access_Array is array (Natural range <>) of BufferedImageFrameCacheable_Access_Array_Access;
   type BufferedImageFrameCacheable_Access_Array_Access_Array_Access is access all BufferedImageFrameCacheable_Access_Array_Access_Array;
   type BufferedImageFrameCacheable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedImageFrameCacheable_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedImageFrameCacheable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedImageFrameCacheable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedImageFrameCacheable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedImageFrameCacheable_Access_Array_Access is (if Value /= null and then Value.all in BufferedImageFrameCacheable_Access_Array_Object'Class then BufferedImageFrameCacheable_Access_Array_Object'Class (Value.all).Value else null);
   type BufferedImageFrameCacheable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedImageFrameCacheable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedImageFrameCacheable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedImageFrameCacheable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedImageFrameCacheable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedImageFrameCacheable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BufferedImageFrameCacheable_Access_Array_Access_Array_Object'Class then BufferedImageFrameCacheable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References;

with org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BufferedImageFrameCacheable_Access is org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.BufferedImageFrameCacheable_Access;
   function "=" (Left, Right : BufferedImageFrameCacheable_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References."=";
   subtype BufferedImageFrameCacheable_Access_Array is org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.BufferedImageFrameCacheable_Access_Array;
   function "=" (Left, Right : BufferedImageFrameCacheable_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References."=";
   subtype BufferedImageFrameCacheable_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.BufferedImageFrameCacheable_Access_Array_Access;
   function "=" (Left, Right : BufferedImageFrameCacheable_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References."=";
   function Java_Box (Value : BufferedImageFrameCacheable_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.Java_Box;
   function Java_Unbox_BufferedImageFrameCacheable_Access_Array (Value : access Java_Object'Class) return BufferedImageFrameCacheable_Access_Array_Access renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.Java_Unbox_BufferedImageFrameCacheable_Access_Array;
   subtype BufferedImageFrameCacheable_Access_Array_Access_Array is org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.BufferedImageFrameCacheable_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedImageFrameCacheable_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References."=";
   subtype BufferedImageFrameCacheable_Access_Array_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.BufferedImageFrameCacheable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedImageFrameCacheable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References."=";
   function Java_Box (Value : BufferedImageFrameCacheable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.Java_Box;
   function Java_Unbox_BufferedImageFrameCacheable_Access_Array_Access_Array (Value : access Java_Object'Class) return BufferedImageFrameCacheable_Access_Array_Access_Array_Access renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package_References.Java_Unbox_BufferedImageFrameCacheable_Access_Array_Access_Array;

   type BufferedImageFrameCacheable is new Java_Object and CacheableInterface with record
      frame : Long_Long_Integer;
      bufferedImage : BufferedImage_Access;
   end record;

   procedure Initialize (This : in out BufferedImageFrameCacheable'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; frame : Long_Long_Integer);
   function Create (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; frame : Long_Long_Integer) return BufferedImageFrameCacheable_Access;
   function getKey (This : in out BufferedImageFrameCacheable) return Java_Object_Access;
   function getBufferedImage (This : in out BufferedImageFrameCacheable) return BufferedImage_Access;
   procedure setBufferedImage (This : in out BufferedImageFrameCacheable; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);
   function getFrame (This : in out BufferedImageFrameCacheable) return Long_Long_Integer;
   procedure setFrame (This : in out BufferedImageFrameCacheable; frame : Long_Long_Integer);
   function toString (This : in out BufferedImageFrameCacheable) return Unbounded_String;

end org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;


