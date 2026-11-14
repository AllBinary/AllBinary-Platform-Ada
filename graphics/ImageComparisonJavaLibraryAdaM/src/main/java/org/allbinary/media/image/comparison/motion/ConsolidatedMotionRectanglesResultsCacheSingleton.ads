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
limited with org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package;
package org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References is
   type ConsolidatedMotionRectanglesResultsCacheSingleton_Access is access all org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package.ConsolidatedMotionRectanglesResultsCacheSingleton'Class;
   type ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array is array (Natural range <>) of ConsolidatedMotionRectanglesResultsCacheSingleton_Access;
   type ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access is access all ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array;
   type ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array is array (Natural range <>) of ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access;
   type ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access is access all ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array;
   type ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access is (if Value /= null and then Value.all in ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Object'Class then ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Object'Class then ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References;

with org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References;
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
limited with org.allbinary.logic.util.cache.CacheInterface_Package;
with org.allbinary.logic.util.cache.CacheInterface_Package_References;

package org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype ConsolidatedMotionRectanglesResultsCacheSingleton_Access is org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.ConsolidatedMotionRectanglesResultsCacheSingleton_Access;
   function "=" (Left, Right : ConsolidatedMotionRectanglesResultsCacheSingleton_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References."=";
   subtype ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array is org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array;
   function "=" (Left, Right : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References."=";
   subtype ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access is org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access;
   function "=" (Left, Right : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References."=";
   function Java_Box (Value : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.Java_Box;
   function Java_Unbox_ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array (Value : access Java_Object'Class) return ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.Java_Unbox_ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array;
   subtype ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References."=";
   subtype ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References."=";
   function Java_Box (Value : ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.Java_Box;
   function Java_Unbox_ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package_References.Java_Unbox_ConsolidatedMotionRectanglesResultsCacheSingleton_Access_Array_Access_Array;

   type ConsolidatedMotionRectanglesResultsCacheSingleton is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   cacheInterface : CacheInterface_Access;

   procedure Initialize (This : in out ConsolidatedMotionRectanglesResultsCacheSingleton'Class);
   function Create return ConsolidatedMotionRectanglesResultsCacheSingleton_Access;
   function getInstance return CacheInterface_Access;

end org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package;


