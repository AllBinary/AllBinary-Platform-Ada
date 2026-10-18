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
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package; use org.allbinary.media.image.comparison.color.ColorDelta_Package;

package org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;

   type ColorDeltaFactory is tagged;
   type ColorDeltaFactory_Access is access all ColorDeltaFactory'Class;
   type ColorDeltaFactory_Access_Array is array (Natural range <>) of ColorDeltaFactory_Access;
   type ColorDeltaFactory_Access_Array_Access is access all ColorDeltaFactory_Access_Array;
   type ColorDeltaFactory_Access_Array_Access_Array is array (Natural range <>) of ColorDeltaFactory_Access_Array_Access;
   type ColorDeltaFactory_Access_Array_Access_Array_Access is access all ColorDeltaFactory_Access_Array_Access_Array;

   type ColorDeltaFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   cacheInterface : AutomaticCacheInterface_Access;

   procedure Initialize (This : in out ColorDeltaFactory'Class);
   function Create return ColorDeltaFactory_Access;
   function getInstance (rgb1 : Integer; rgb2 : Integer) return ColorDelta_Access;
   procedure getInstance (rgb1 : Integer; rgb2 : Integer);

end org.allbinary.media.image.comparison.color.ColorDeltaFactory_Package;


