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
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;

package org.allbinary.media.image.io.IIOImageCacheableFactory_Package is

   package CacheableInterface_Package renames org.allbinary.logic.util.cache.CacheableInterface_Package;
   package CacheableInterfaceFactoryInterface_Package renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;

   type IIOImageCacheableFactory is tagged;
   type IIOImageCacheableFactory_Access is access all IIOImageCacheableFactory'Class;
   type IIOImageCacheableFactory_Access_Array is array (Natural range <>) of IIOImageCacheableFactory_Access;
   type IIOImageCacheableFactory_Access_Array_Access is access all IIOImageCacheableFactory_Access_Array;

   type IIOImageCacheableFactory is new CacheableInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out IIOImageCacheableFactory'Class);
   function Create return IIOImageCacheableFactory_Access;
   function getInstance (This : in out IIOImageCacheableFactory; key : Java_Object_Access) return CacheableInterface_Access;
   procedure getInstance (This : in out IIOImageCacheableFactory; key : Java_Object_Access);

end org.allbinary.media.image.io.IIOImageCacheableFactory_Package;


