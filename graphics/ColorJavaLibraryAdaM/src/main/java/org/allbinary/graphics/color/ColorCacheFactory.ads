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
with org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;
with org.allbinary.logic.util.cache.CachePolicyFactory_Package; use org.allbinary.logic.util.cache.CachePolicyFactory_Package;
with org.allbinary.logic.util.cache.CacheTypeFactory_Package; use org.allbinary.logic.util.cache.CacheTypeFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.graphics.color.ColorCacheFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AutomaticCacheInterface_Package renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package AutomaticCacheInterfaceFactory_Package renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;
   package CachePolicyFactory_Package renames org.allbinary.logic.util.cache.CachePolicyFactory_Package;
   package CacheTypeFactory_Package renames org.allbinary.logic.util.cache.CacheTypeFactory_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ColorCacheFactory is tagged;
   type ColorCacheFactory_Access is access all ColorCacheFactory'Class;
   type ColorCacheFactory_Access_Array is array (Natural range <>) of ColorCacheFactory_Access;
   type ColorCacheFactory_Access_Array_Access is access all ColorCacheFactory_Access_Array;

   type ColorCacheFactory is new Java_Object with null record;
   cacheInterface : AutomaticCacheInterface_Access;

   procedure Initialize (This : in out ColorCacheFactory'Class);
   function Create return ColorCacheFactory_Access;
   function getInstance return AutomaticCacheInterface_Access;
   procedure getInstance;

end org.allbinary.graphics.color.ColorCacheFactory_Package;


