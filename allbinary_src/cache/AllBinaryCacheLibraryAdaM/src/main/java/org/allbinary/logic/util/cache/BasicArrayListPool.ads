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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.cache.AbstractArrayListPool_Package; use org.allbinary.logic.util.cache.AbstractArrayListPool_Package;

package org.allbinary.logic.util.cache.BasicArrayListPool_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type BasicArrayListPool is tagged;
   type BasicArrayListPool_Access is access all BasicArrayListPool'Class;
   type BasicArrayListPool_Access_Array is array (Natural range <>) of BasicArrayListPool_Access;
   type BasicArrayListPool_Access_Array_Access is access all BasicArrayListPool_Access_Array;

   type BasicArrayListPool is new AbstractArrayListPool with null record;

   procedure Initialize (This : in out BasicArrayListPool'Class; cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access);
   function Create (cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access) return BasicArrayListPool_Access;
   procedure clear (This : in out BasicArrayListPool);
   function remove (This : in out BasicArrayListPool; key : Java_Object_Access) return CacheableInterface_Access;
   procedure remove (This : in out BasicArrayListPool; key : Java_Object_Access);
   procedure addAll (This : in out BasicArrayListPool; usedList : BasicArrayList_Access);
   procedure releaseUsedBackToPool (This : in out BasicArrayListPool; usedList : BasicArrayList_Access);

end org.allbinary.logic.util.cache.BasicArrayListPool_Package;


