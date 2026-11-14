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
limited with org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package;
package org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References is
   type BufferedImageCacheableFactory_Access is access all org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package.BufferedImageCacheableFactory'Class;
   type BufferedImageCacheableFactory_Access_Array is array (Natural range <>) of BufferedImageCacheableFactory_Access;
   type BufferedImageCacheableFactory_Access_Array_Access is access all BufferedImageCacheableFactory_Access_Array;
   type BufferedImageCacheableFactory_Access_Array_Access_Array is array (Natural range <>) of BufferedImageCacheableFactory_Access_Array_Access;
   type BufferedImageCacheableFactory_Access_Array_Access_Array_Access is access all BufferedImageCacheableFactory_Access_Array_Access_Array;
   type BufferedImageCacheableFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedImageCacheableFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedImageCacheableFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedImageCacheableFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedImageCacheableFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedImageCacheableFactory_Access_Array_Access is (if Value /= null and then Value.all in BufferedImageCacheableFactory_Access_Array_Object'Class then BufferedImageCacheableFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BufferedImageCacheableFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BufferedImageCacheableFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BufferedImageCacheableFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BufferedImageCacheableFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BufferedImageCacheableFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BufferedImageCacheableFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BufferedImageCacheableFactory_Access_Array_Access_Array_Object'Class then BufferedImageCacheableFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References;

with org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package_References;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;

package org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package CacheableInterfaceFactoryInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
   package Reference_Types is
   subtype CacheableInterface_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access;
   use type CacheableInterface_Access;
   subtype CacheableInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array;
   use type CacheableInterface_Access_Array;
   subtype CacheableInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access;
   use type CacheableInterface_Access_Array_Access;
   subtype CacheableInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array;
   use type CacheableInterface_Access_Array_Access_Array;
   subtype CacheableInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array_Access;
   use type CacheableInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BufferedImageCacheableFactory_Access is org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.BufferedImageCacheableFactory_Access;
   function "=" (Left, Right : BufferedImageCacheableFactory_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References."=";
   subtype BufferedImageCacheableFactory_Access_Array is org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.BufferedImageCacheableFactory_Access_Array;
   function "=" (Left, Right : BufferedImageCacheableFactory_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References."=";
   subtype BufferedImageCacheableFactory_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.BufferedImageCacheableFactory_Access_Array_Access;
   function "=" (Left, Right : BufferedImageCacheableFactory_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References."=";
   function Java_Box (Value : BufferedImageCacheableFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.Java_Box;
   function Java_Unbox_BufferedImageCacheableFactory_Access_Array (Value : access Java_Object'Class) return BufferedImageCacheableFactory_Access_Array_Access renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.Java_Unbox_BufferedImageCacheableFactory_Access_Array;
   subtype BufferedImageCacheableFactory_Access_Array_Access_Array is org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.BufferedImageCacheableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedImageCacheableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References."=";
   subtype BufferedImageCacheableFactory_Access_Array_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.BufferedImageCacheableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedImageCacheableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References."=";
   function Java_Box (Value : BufferedImageCacheableFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.Java_Box;
   function Java_Unbox_BufferedImageCacheableFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BufferedImageCacheableFactory_Access_Array_Access_Array_Access renames org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package_References.Java_Unbox_BufferedImageCacheableFactory_Access_Array_Access_Array;

   type BufferedImageCacheableFactory is new Java_Object and CacheableInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out BufferedImageCacheableFactory'Class);
   function Create return BufferedImageCacheableFactory_Access;
   function getInstance (This : in out BufferedImageCacheableFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure getInstance (This : in out BufferedImageCacheableFactory; key_Param : access Java_Object'Class);
   function getInstance (This : in out BufferedImageCacheableFactory; Value : Unbounded_String) return CacheableInterface_Access;
   procedure getInstance (This : in out BufferedImageCacheableFactory; Value : Unbounded_String);

end org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package;


