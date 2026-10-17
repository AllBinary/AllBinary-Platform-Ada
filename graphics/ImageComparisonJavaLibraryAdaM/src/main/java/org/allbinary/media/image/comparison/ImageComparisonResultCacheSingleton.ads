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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.cache.CacheInterface_Package; use org.allbinary.logic.util.cache.CacheInterface_Package;
with org.allbinary.logic.util.cache.CacheInterfaceFactory_Package; use org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
with org.allbinary.logic.util.cache.CachePolicyFactory_Package; use org.allbinary.logic.util.cache.CachePolicyFactory_Package;
with org.allbinary.logic.util.cache.CacheTypeFactory_Package; use org.allbinary.logic.util.cache.CacheTypeFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.image.comparison.ImageComparisonResultCacheSingleton_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CacheInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheInterface_Package;
   package CacheInterfaceFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
   package CachePolicyFactory_Package renames Standard.org.allbinary.logic.util.cache.CachePolicyFactory_Package;
   package CacheTypeFactory_Package renames Standard.org.allbinary.logic.util.cache.CacheTypeFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageComparisonResultCacheSingleton is tagged;
   type ImageComparisonResultCacheSingleton_Access is access all ImageComparisonResultCacheSingleton'Class;
   type ImageComparisonResultCacheSingleton_Access_Array is array (Natural range <>) of ImageComparisonResultCacheSingleton_Access;
   type ImageComparisonResultCacheSingleton_Access_Array_Access is access all ImageComparisonResultCacheSingleton_Access_Array;

   type ImageComparisonResultCacheSingleton is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   cacheInterface : CacheInterface_Access;

   procedure Initialize (This : in out ImageComparisonResultCacheSingleton'Class);
   function Create return ImageComparisonResultCacheSingleton_Access;
   function getInstance return CacheInterface_Access;
   procedure getInstance;

end org.allbinary.media.image.comparison.ImageComparisonResultCacheSingleton_Package;


