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

limited with org.allbinary.logic.util.cache.AbstractArrayListPool_Package;
package org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References is
   type AbstractArrayListPool_Access is access all org.allbinary.logic.util.cache.AbstractArrayListPool_Package.AbstractArrayListPool'Class;
   type AbstractArrayListPool_Access_Array is array (Natural range <>) of AbstractArrayListPool_Access;
   type AbstractArrayListPool_Access_Array_Access is access all AbstractArrayListPool_Access_Array;
   type AbstractArrayListPool_Access_Array_Access_Array is array (Natural range <>) of AbstractArrayListPool_Access_Array_Access;
   type AbstractArrayListPool_Access_Array_Access_Array_Access is access all AbstractArrayListPool_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References;

with org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.util.cache.PoolInterface_Package; use org.allbinary.logic.util.cache.PoolInterface_Package;
limited with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References;
limited with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package_References;

package org.allbinary.logic.util.cache.AbstractArrayListPool_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype CacheableInterfaceFactoryInterface_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access;
   use type CacheableInterfaceFactoryInterface_Access;
   subtype CacheableInterfaceFactoryInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array;
   use type CacheableInterfaceFactoryInterface_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
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


   subtype AbstractArrayListPool_Access is org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References.AbstractArrayListPool_Access;
   function "=" (Left, Right : AbstractArrayListPool_Access) return Boolean renames org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References."=";
   subtype AbstractArrayListPool_Access_Array is org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References.AbstractArrayListPool_Access_Array;
   function "=" (Left, Right : AbstractArrayListPool_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References."=";
   subtype AbstractArrayListPool_Access_Array_Access is org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References.AbstractArrayListPool_Access_Array_Access;
   function "=" (Left, Right : AbstractArrayListPool_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References."=";
   subtype AbstractArrayListPool_Access_Array_Access_Array is org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References.AbstractArrayListPool_Access_Array_Access_Array;
   function "=" (Left, Right : AbstractArrayListPool_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References."=";
   subtype AbstractArrayListPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References.AbstractArrayListPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbstractArrayListPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AbstractArrayListPool_Package_References."=";

   type AbstractArrayListPool is new Java_Object and PoolInterface with record
      commonStrings : CommonStrings_Access;
      buffers : BasicArrayList_Access;
      cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out AbstractArrayListPool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class);
   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) return AbstractArrayListPool_Access;
   procedure clear (This : in out AbstractArrayListPool);
   function remove (This : in out AbstractArrayListPool; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure remove (This : in out AbstractArrayListPool; key_Param : access Java_Object'Class);
   procedure add (This : in out AbstractArrayListPool; cacheableInterface_Param : access CacheableInterface_Package.CacheableInterface'Class);
   procedure addArray (This : in out AbstractArrayListPool; cacheableInterfaces : CacheableInterface_Access_Array_Access);
   function remove (This : in out AbstractArrayListPool; Value : Unbounded_String) return CacheableInterface_Access;
   procedure remove (This : in out AbstractArrayListPool; Value : Unbounded_String);

end org.allbinary.logic.util.cache.AbstractArrayListPool_Package;


