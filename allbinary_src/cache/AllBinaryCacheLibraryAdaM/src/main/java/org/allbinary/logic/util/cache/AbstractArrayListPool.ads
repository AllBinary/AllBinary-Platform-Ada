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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package; use org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.logic.util.cache.AbstractArrayListPool_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type AbstractArrayListPool is tagged;
   type AbstractArrayListPool_Access is access all AbstractArrayListPool'Class;
   type AbstractArrayListPool_Access_Array is array (Natural range <>) of AbstractArrayListPool_Access;
   type AbstractArrayListPool_Access_Array_Access is access all AbstractArrayListPool_Access_Array;
   type AbstractArrayListPool_Access_Array_Access_Array is array (Natural range <>) of AbstractArrayListPool_Access_Array_Access;
   type AbstractArrayListPool_Access_Array_Access_Array_Access is access all AbstractArrayListPool_Access_Array_Access_Array;

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


