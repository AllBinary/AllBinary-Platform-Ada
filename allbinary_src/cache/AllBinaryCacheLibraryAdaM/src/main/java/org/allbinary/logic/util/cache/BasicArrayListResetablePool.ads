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
with org.allbinary.logic.util.cache.AbstractArrayListPool_Package; use org.allbinary.logic.util.cache.AbstractArrayListPool_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package is


   type BasicArrayListResetablePool is tagged;
   type BasicArrayListResetablePool_Access is access all BasicArrayListResetablePool'Class;
   type BasicArrayListResetablePool_Access_Array is array (Natural range <>) of BasicArrayListResetablePool_Access;
   type BasicArrayListResetablePool_Access_Array_Access is access all BasicArrayListResetablePool_Access_Array;

   type BasicArrayListResetablePool is new AbstractArrayListPool with null record;

   procedure Initialize (This : in out BasicArrayListResetablePool'Class; cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access);
   function Create (cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access) return BasicArrayListResetablePool_Access;
   procedure clear (This : in out BasicArrayListResetablePool);
   function remove (This : in out BasicArrayListResetablePool; key : Java_Object_Access) return CacheableInterface_Access;
   procedure remove (This : in out BasicArrayListResetablePool; key : Java_Object_Access);

end org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;


