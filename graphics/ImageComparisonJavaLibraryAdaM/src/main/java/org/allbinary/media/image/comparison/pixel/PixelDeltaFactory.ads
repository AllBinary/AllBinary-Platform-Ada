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
limited with org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package;
package org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References is
   type PixelDeltaFactory_Access is access all org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package.PixelDeltaFactory'Class;
   type PixelDeltaFactory_Access_Array is array (Natural range <>) of PixelDeltaFactory_Access;
   type PixelDeltaFactory_Access_Array_Access is access all PixelDeltaFactory_Access_Array;
   type PixelDeltaFactory_Access_Array_Access_Array is array (Natural range <>) of PixelDeltaFactory_Access_Array_Access;
   type PixelDeltaFactory_Access_Array_Access_Array_Access is access all PixelDeltaFactory_Access_Array_Access_Array;
   type PixelDeltaFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PixelDeltaFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PixelDeltaFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PixelDeltaFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PixelDeltaFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PixelDeltaFactory_Access_Array_Access is (if Value /= null and then Value.all in PixelDeltaFactory_Access_Array_Object'Class then PixelDeltaFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PixelDeltaFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PixelDeltaFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PixelDeltaFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PixelDeltaFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PixelDeltaFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PixelDeltaFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PixelDeltaFactory_Access_Array_Access_Array_Object'Class then PixelDeltaFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References;

with org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References;
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
limited with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References;

package org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
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
   subtype PixelDelta_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access;
   use type PixelDelta_Access;
   subtype PixelDelta_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array;
   use type PixelDelta_Access_Array;
   subtype PixelDelta_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access;
   use type PixelDelta_Access_Array_Access;
   subtype PixelDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array;
   use type PixelDelta_Access_Array_Access_Array;
   subtype PixelDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array_Access;
   use type PixelDelta_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PixelDeltaFactory_Access is org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.PixelDeltaFactory_Access;
   function "=" (Left, Right : PixelDeltaFactory_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References."=";
   subtype PixelDeltaFactory_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.PixelDeltaFactory_Access_Array;
   function "=" (Left, Right : PixelDeltaFactory_Access_Array) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References."=";
   subtype PixelDeltaFactory_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.PixelDeltaFactory_Access_Array_Access;
   function "=" (Left, Right : PixelDeltaFactory_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References."=";
   function Java_Box (Value : PixelDeltaFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.Java_Box;
   function Java_Unbox_PixelDeltaFactory_Access_Array (Value : access Java_Object'Class) return PixelDeltaFactory_Access_Array_Access renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.Java_Unbox_PixelDeltaFactory_Access_Array;
   subtype PixelDeltaFactory_Access_Array_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.PixelDeltaFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PixelDeltaFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References."=";
   subtype PixelDeltaFactory_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.PixelDeltaFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PixelDeltaFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References."=";
   function Java_Box (Value : PixelDeltaFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.Java_Box;
   function Java_Unbox_PixelDeltaFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PixelDeltaFactory_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package_References.Java_Unbox_PixelDeltaFactory_Access_Array_Access_Array;

   type PixelDeltaFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   cacheInterface : AutomaticCacheInterface_Access;

   procedure Initialize (This : in out PixelDeltaFactory'Class);
   function Create return PixelDeltaFactory_Access;
   function getInstance (x : Integer; y : Integer; rgb1 : Integer; rgb2 : Integer) return PixelDelta_Access;
   procedure getInstance (x : Integer; y : Integer; rgb1 : Integer; rgb2 : Integer);

end org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package;


