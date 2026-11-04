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

limited with org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package;
package org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References is
   type ColorDeltaFactory_Access is access all org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package.ColorDeltaFactory'Class;
   type ColorDeltaFactory_Access_Array is array (Natural range <>) of ColorDeltaFactory_Access;
   type ColorDeltaFactory_Access_Array_Access is access all ColorDeltaFactory_Access_Array;
   type ColorDeltaFactory_Access_Array_Access_Array is array (Natural range <>) of ColorDeltaFactory_Access_Array_Access;
   type ColorDeltaFactory_Access_Array_Access_Array_Access is access all ColorDeltaFactory_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References;

with org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References;
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
limited with org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package_References;

package org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package is

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
   subtype ColorDelta_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access;
   use type ColorDelta_Access;
   subtype ColorDelta_Access_Array is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array;
   use type ColorDelta_Access_Array;
   subtype ColorDelta_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access;
   use type ColorDelta_Access_Array_Access;
   subtype ColorDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access_Array;
   use type ColorDelta_Access_Array_Access_Array;
   subtype ColorDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access_Array_Access;
   use type ColorDelta_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorDeltaFactory_Access is org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References.ColorDeltaFactory_Access;
   function "=" (Left, Right : ColorDeltaFactory_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References."=";
   subtype ColorDeltaFactory_Access_Array is org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References.ColorDeltaFactory_Access_Array;
   function "=" (Left, Right : ColorDeltaFactory_Access_Array) return Boolean renames org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References."=";
   subtype ColorDeltaFactory_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References.ColorDeltaFactory_Access_Array_Access;
   function "=" (Left, Right : ColorDeltaFactory_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References."=";
   subtype ColorDeltaFactory_Access_Array_Access_Array is org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References.ColorDeltaFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ColorDeltaFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References."=";
   subtype ColorDeltaFactory_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References.ColorDeltaFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorDeltaFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package_References."=";

   type ColorDeltaFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   cacheInterface : AutomaticCacheInterface_Access;

   procedure Initialize (This : in out ColorDeltaFactory'Class);
   function Create return ColorDeltaFactory_Access;
   function getInstance (rgb1 : Integer; rgb2 : Integer) return ColorDelta_Access;
   procedure getInstance (rgb1 : Integer; rgb2 : Integer);

end org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package;


