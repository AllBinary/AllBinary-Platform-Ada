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
limited with org.allbinary.media.image.io.IIOImageCacheableFactory_Package;
package org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References is
   type IIOImageCacheableFactory_Access is access all org.allbinary.media.image.io.IIOImageCacheableFactory_Package.IIOImageCacheableFactory'Class;
   type IIOImageCacheableFactory_Access_Array is array (Natural range <>) of IIOImageCacheableFactory_Access;
   type IIOImageCacheableFactory_Access_Array_Access is access all IIOImageCacheableFactory_Access_Array;
   type IIOImageCacheableFactory_Access_Array_Access_Array is array (Natural range <>) of IIOImageCacheableFactory_Access_Array_Access;
   type IIOImageCacheableFactory_Access_Array_Access_Array_Access is access all IIOImageCacheableFactory_Access_Array_Access_Array;
   type IIOImageCacheableFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IIOImageCacheableFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : IIOImageCacheableFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IIOImageCacheableFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IIOImageCacheableFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IIOImageCacheableFactory_Access_Array_Access is (if Value /= null and then Value.all in IIOImageCacheableFactory_Access_Array_Object'Class then IIOImageCacheableFactory_Access_Array_Object'Class (Value.all).Value else null);
   type IIOImageCacheableFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IIOImageCacheableFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IIOImageCacheableFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IIOImageCacheableFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IIOImageCacheableFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IIOImageCacheableFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IIOImageCacheableFactory_Access_Array_Access_Array_Object'Class then IIOImageCacheableFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References;

with org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References;
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

package org.allbinary.media.image.io.IIOImageCacheableFactory_Package is

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


   subtype IIOImageCacheableFactory_Access is org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.IIOImageCacheableFactory_Access;
   function "=" (Left, Right : IIOImageCacheableFactory_Access) return Boolean renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References."=";
   subtype IIOImageCacheableFactory_Access_Array is org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.IIOImageCacheableFactory_Access_Array;
   function "=" (Left, Right : IIOImageCacheableFactory_Access_Array) return Boolean renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References."=";
   subtype IIOImageCacheableFactory_Access_Array_Access is org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.IIOImageCacheableFactory_Access_Array_Access;
   function "=" (Left, Right : IIOImageCacheableFactory_Access_Array_Access) return Boolean renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References."=";
   function Java_Box (Value : IIOImageCacheableFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.Java_Box;
   function Java_Unbox_IIOImageCacheableFactory_Access_Array (Value : access Java_Object'Class) return IIOImageCacheableFactory_Access_Array_Access renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.Java_Unbox_IIOImageCacheableFactory_Access_Array;
   subtype IIOImageCacheableFactory_Access_Array_Access_Array is org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.IIOImageCacheableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : IIOImageCacheableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References."=";
   subtype IIOImageCacheableFactory_Access_Array_Access_Array_Access is org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.IIOImageCacheableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IIOImageCacheableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References."=";
   function Java_Box (Value : IIOImageCacheableFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.Java_Box;
   function Java_Unbox_IIOImageCacheableFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return IIOImageCacheableFactory_Access_Array_Access_Array_Access renames org.allbinary.media.image.io.IIOImageCacheableFactory_Package_References.Java_Unbox_IIOImageCacheableFactory_Access_Array_Access_Array;

   type IIOImageCacheableFactory is new Java_Object and CacheableInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out IIOImageCacheableFactory'Class);
   function Create return IIOImageCacheableFactory_Access;
   function getInstance (This : in out IIOImageCacheableFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure getInstance (This : in out IIOImageCacheableFactory; key_Param : access Java_Object'Class);
   function getInstance (This : in out IIOImageCacheableFactory; Value : Unbounded_String) return CacheableInterface_Access;
   procedure getInstance (This : in out IIOImageCacheableFactory; Value : Unbounded_String);

end org.allbinary.media.image.io.IIOImageCacheableFactory_Package;


