-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheType_Package; use org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package; use org.allbinary.logic.util.cache.CachePolicy_Package;

package org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package is


   type AutomaticCacheInterfaceFactory is tagged;
   type AutomaticCacheInterfaceFactory_Access is access all AutomaticCacheInterfaceFactory'Class;
   type AutomaticCacheInterfaceFactory_Access_Array is array (Natural range <>) of AutomaticCacheInterfaceFactory_Access;
   type AutomaticCacheInterfaceFactory_Access_Array_Access is access all AutomaticCacheInterfaceFactory_Access_Array;
   type AutomaticCacheInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of AutomaticCacheInterfaceFactory_Access_Array_Access;
   type AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access is access all AutomaticCacheInterfaceFactory_Access_Array_Access_Array;

   type AutomaticCacheInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out AutomaticCacheInterfaceFactory'Class);
   function Create return AutomaticCacheInterfaceFactory_Access;
   function getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) return AutomaticCacheInterface_Access;
   procedure getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class);

end org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;


