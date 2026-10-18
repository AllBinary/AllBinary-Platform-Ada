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
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;

package org.allbinary.graphics.color.ColorCacheFactory_Package is

   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;

   type ColorCacheFactory is tagged;
   type ColorCacheFactory_Access is access all ColorCacheFactory'Class;
   type ColorCacheFactory_Access_Array is array (Natural range <>) of ColorCacheFactory_Access;
   type ColorCacheFactory_Access_Array_Access is access all ColorCacheFactory_Access_Array;
   type ColorCacheFactory_Access_Array_Access_Array is array (Natural range <>) of ColorCacheFactory_Access_Array_Access;
   type ColorCacheFactory_Access_Array_Access_Array_Access is access all ColorCacheFactory_Access_Array_Access_Array;

   type ColorCacheFactory is new Java_Object with null record;
   cacheInterface : AutomaticCacheInterface_Access;

   procedure Initialize (This : in out ColorCacheFactory'Class);
   function Create return ColorCacheFactory_Access;
   function getInstance return AutomaticCacheInterface_Access;

end org.allbinary.graphics.color.ColorCacheFactory_Package;


