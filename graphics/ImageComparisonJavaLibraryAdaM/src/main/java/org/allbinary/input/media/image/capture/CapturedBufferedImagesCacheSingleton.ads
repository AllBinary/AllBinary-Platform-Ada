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

limited with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
package org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References is
   type CapturedBufferedImagesCacheSingleton_Access is access all org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package.CapturedBufferedImagesCacheSingleton'Class;
   type CapturedBufferedImagesCacheSingleton_Access_Array is array (Natural range <>) of CapturedBufferedImagesCacheSingleton_Access;
   type CapturedBufferedImagesCacheSingleton_Access_Array_Access is access all CapturedBufferedImagesCacheSingleton_Access_Array;
   type CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array is array (Natural range <>) of CapturedBufferedImagesCacheSingleton_Access_Array_Access;
   type CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array_Access is access all CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array;
end org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References;

with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References;
limited with org.allbinary.logic.util.cache.CacheInterface_Package;
with org.allbinary.logic.util.cache.CacheInterface_Package_References;

package org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package CacheInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AutomaticCacheInterface_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access;
   use type AutomaticCacheInterface_Access;
   subtype AutomaticCacheInterface_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array;
   use type AutomaticCacheInterface_Access_Array;
   subtype AutomaticCacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access;
   use type AutomaticCacheInterface_Access_Array_Access;
   subtype AutomaticCacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array;
   use type AutomaticCacheInterface_Access_Array_Access_Array;
   subtype AutomaticCacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array_Access;
   use type AutomaticCacheInterface_Access_Array_Access_Array_Access;
   subtype CacheInterface_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access;
   use type CacheInterface_Access;
   subtype CacheInterface_Access_Array is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array;
   use type CacheInterface_Access_Array;
   subtype CacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access;
   use type CacheInterface_Access_Array_Access;
   subtype CacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access_Array;
   use type CacheInterface_Access_Array_Access_Array;
   subtype CacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access_Array_Access;
   use type CacheInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CapturedBufferedImagesCacheSingleton_Access is org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References.CapturedBufferedImagesCacheSingleton_Access;
   function "=" (Left, Right : CapturedBufferedImagesCacheSingleton_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References."=";
   subtype CapturedBufferedImagesCacheSingleton_Access_Array is org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References.CapturedBufferedImagesCacheSingleton_Access_Array;
   function "=" (Left, Right : CapturedBufferedImagesCacheSingleton_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References."=";
   subtype CapturedBufferedImagesCacheSingleton_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References.CapturedBufferedImagesCacheSingleton_Access_Array_Access;
   function "=" (Left, Right : CapturedBufferedImagesCacheSingleton_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References."=";
   subtype CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array is org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References.CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References."=";
   subtype CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References.CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CapturedBufferedImagesCacheSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package_References."=";

   type CapturedBufferedImagesCacheSingleton is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   cacheInterface : AutomaticCacheInterface_Access;

   procedure Initialize (This : in out CapturedBufferedImagesCacheSingleton'Class);
   function Create return CapturedBufferedImagesCacheSingleton_Access;
   function getInstance return CacheInterface_Access;

end org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;


