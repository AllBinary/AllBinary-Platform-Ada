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
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.BasicArrayListCacheable_Package; use org.allbinary.logic.util.cache.BasicArrayListCacheable_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.logic.util.cache.BasicArrayListCacheableInterfaceFactory_Package is


   type BasicArrayListCacheableInterfaceFactory is tagged;
   type BasicArrayListCacheableInterfaceFactory_Access is access all BasicArrayListCacheableInterfaceFactory'Class;
   type BasicArrayListCacheableInterfaceFactory_Access_Array is array (Natural range <>) of BasicArrayListCacheableInterfaceFactory_Access;
   type BasicArrayListCacheableInterfaceFactory_Access_Array_Access is access all BasicArrayListCacheableInterfaceFactory_Access_Array;

   type BasicArrayListCacheableInterfaceFactory is new CacheableInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out BasicArrayListCacheableInterfaceFactory'Class);
   function Create return BasicArrayListCacheableInterfaceFactory_Access;
   function getInstance (This : in out BasicArrayListCacheableInterfaceFactory; key : Java_Object_Access) return CacheableInterface_Access;
   procedure getInstance (This : in out BasicArrayListCacheableInterfaceFactory; key : Java_Object_Access);

end org.allbinary.logic.util.cache.BasicArrayListCacheableInterfaceFactory_Package;


