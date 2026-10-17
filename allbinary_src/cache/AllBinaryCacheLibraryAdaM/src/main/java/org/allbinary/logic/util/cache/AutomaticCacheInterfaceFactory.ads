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

package org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package is


   type AutomaticCacheInterfaceFactory is tagged;
   type AutomaticCacheInterfaceFactory_Access is access all AutomaticCacheInterfaceFactory'Class;
   type AutomaticCacheInterfaceFactory_Access_Array is array (Natural range <>) of AutomaticCacheInterfaceFactory_Access;
   type AutomaticCacheInterfaceFactory_Access_Array_Access is access all AutomaticCacheInterfaceFactory_Access_Array;

   type AutomaticCacheInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out AutomaticCacheInterfaceFactory'Class);
   function Create return AutomaticCacheInterfaceFactory_Access;
   function getInstance (cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access; cacheType : CacheType_Access; cachePolicy : CachePolicy_Access) return AutomaticCacheInterface_Access;
   procedure getInstance (cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface_Access; cacheType : CacheType_Access; cachePolicy : CachePolicy_Access);

end org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;


