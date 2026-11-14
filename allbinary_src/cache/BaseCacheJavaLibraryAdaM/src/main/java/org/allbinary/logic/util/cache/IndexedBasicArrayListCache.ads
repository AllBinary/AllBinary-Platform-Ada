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
limited with org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package;
package org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References is
   type IndexedBasicArrayListCache_Access is access all org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package.IndexedBasicArrayListCache'Class;
   type IndexedBasicArrayListCache_Access_Array is array (Natural range <>) of IndexedBasicArrayListCache_Access;
   type IndexedBasicArrayListCache_Access_Array_Access is access all IndexedBasicArrayListCache_Access_Array;
   type IndexedBasicArrayListCache_Access_Array_Access_Array is array (Natural range <>) of IndexedBasicArrayListCache_Access_Array_Access;
   type IndexedBasicArrayListCache_Access_Array_Access_Array_Access is access all IndexedBasicArrayListCache_Access_Array_Access_Array;
   type IndexedBasicArrayListCache_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedBasicArrayListCache_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedBasicArrayListCache_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedBasicArrayListCache_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedBasicArrayListCache_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedBasicArrayListCache_Access_Array_Access is (if Value /= null and then Value.all in IndexedBasicArrayListCache_Access_Array_Object'Class then IndexedBasicArrayListCache_Access_Array_Object'Class (Value.all).Value else null);
   type IndexedBasicArrayListCache_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedBasicArrayListCache_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedBasicArrayListCache_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedBasicArrayListCache_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedBasicArrayListCache_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedBasicArrayListCache_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IndexedBasicArrayListCache_Access_Array_Access_Array_Object'Class then IndexedBasicArrayListCache_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References;

with org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package; use org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
with org.allbinary.logic.util.cache.CacheInterface_Package; use org.allbinary.logic.util.cache.CacheInterface_Package;
limited with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package_References;

package org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype IndexedBasicArrayListCache_Access is org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.IndexedBasicArrayListCache_Access;
   function "=" (Left, Right : IndexedBasicArrayListCache_Access) return Boolean renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References."=";
   subtype IndexedBasicArrayListCache_Access_Array is org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.IndexedBasicArrayListCache_Access_Array;
   function "=" (Left, Right : IndexedBasicArrayListCache_Access_Array) return Boolean renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References."=";
   subtype IndexedBasicArrayListCache_Access_Array_Access is org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.IndexedBasicArrayListCache_Access_Array_Access;
   function "=" (Left, Right : IndexedBasicArrayListCache_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References."=";
   function Java_Box (Value : IndexedBasicArrayListCache_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.Java_Box;
   function Java_Unbox_IndexedBasicArrayListCache_Access_Array (Value : access Java_Object'Class) return IndexedBasicArrayListCache_Access_Array_Access renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.Java_Unbox_IndexedBasicArrayListCache_Access_Array;
   subtype IndexedBasicArrayListCache_Access_Array_Access_Array is org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.IndexedBasicArrayListCache_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedBasicArrayListCache_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References."=";
   subtype IndexedBasicArrayListCache_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.IndexedBasicArrayListCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedBasicArrayListCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References."=";
   function Java_Box (Value : IndexedBasicArrayListCache_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.Java_Box;
   function Java_Unbox_IndexedBasicArrayListCache_Access_Array_Access_Array (Value : access Java_Object'Class) return IndexedBasicArrayListCache_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package_References.Java_Unbox_IndexedBasicArrayListCache_Access_Array_Access_Array;

   type IndexedBasicArrayListCache is new BaseBasicArrayListCache and CacheInterface with record
      commonStrings : CommonStrings_Access;
      size : Integer;
      index : Integer;
   end record;

   procedure Initialize (This : in out IndexedBasicArrayListCache'Class);
   function Create return IndexedBasicArrayListCache_Access;
   function createCache (size : Integer) return IndexedBasicArrayListCache_Access;
   procedure createCache (size : Integer);
   procedure init (This : in out IndexedBasicArrayListCache; size : Integer);
   function getAt (This : in out IndexedBasicArrayListCache; index : Integer) return Java_Object_Access;
   procedure getAt (This : in out IndexedBasicArrayListCache; index : Integer);
   procedure addDefault (This : in out IndexedBasicArrayListCache);
   procedure addObject (This : in out IndexedBasicArrayListCache; anyType_Param : access Java_Object'Class);
   procedure add (This : in out IndexedBasicArrayListCache; cacheableInterface_Param : access CacheableInterface_Package.CacheableInterface'Class);
   procedure addArray (This : in out IndexedBasicArrayListCache; cacheableInterfaces : CacheableInterface_Access_Array_Access);
   procedure clear (This : in out IndexedBasicArrayListCache);
   procedure addObject (This : in out IndexedBasicArrayListCache; Value : Unbounded_String);

end org.allbinary.logic.util.cache.IndexedBasicArrayListCache_Package;


