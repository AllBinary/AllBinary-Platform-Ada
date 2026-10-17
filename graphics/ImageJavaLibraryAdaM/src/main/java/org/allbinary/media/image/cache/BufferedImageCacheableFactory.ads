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
with org.allbinary.media.image.cache.BufferedImageCacheable_Package; use org.allbinary.media.image.cache.BufferedImageCacheable_Package;
with org.allbinary.media.image.cache.BufferedImageInfo_Package; use org.allbinary.media.image.cache.BufferedImageInfo_Package;

package org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package CacheableInterfaceFactoryInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;

   type BufferedImageCacheableFactory is tagged;
   type BufferedImageCacheableFactory_Access is access all BufferedImageCacheableFactory'Class;
   type BufferedImageCacheableFactory_Access_Array is array (Natural range <>) of BufferedImageCacheableFactory_Access;
   type BufferedImageCacheableFactory_Access_Array_Access is access all BufferedImageCacheableFactory_Access_Array;

   type BufferedImageCacheableFactory is new CacheableInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out BufferedImageCacheableFactory'Class);
   function Create return BufferedImageCacheableFactory_Access;
   function getInstance (This : in out BufferedImageCacheableFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure getInstance (This : in out BufferedImageCacheableFactory; key_Param : access Java_Object'Class);

end org.allbinary.media.image.cache.BufferedImageCacheableFactory_Package;


