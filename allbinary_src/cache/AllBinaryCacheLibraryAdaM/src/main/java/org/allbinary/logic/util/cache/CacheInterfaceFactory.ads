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

package org.allbinary.logic.util.cache.CacheInterfaceFactory_Package is


   type CacheInterfaceFactory is tagged;
   type CacheInterfaceFactory_Access is access all CacheInterfaceFactory'Class;
   type CacheInterfaceFactory_Access_Array is array (Natural range <>) of CacheInterfaceFactory_Access;
   type CacheInterfaceFactory_Access_Array_Access is access all CacheInterfaceFactory_Access_Array;

   type CacheInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out CacheInterfaceFactory'Class);
   function Create return CacheInterfaceFactory_Access;
   function getInstance (cacheType : CacheType_Access; cachePolicy : CachePolicy_Access) return CacheInterface_Access;
   procedure getInstance (cacheType : CacheType_Access; cachePolicy : CachePolicy_Access);

end org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;


