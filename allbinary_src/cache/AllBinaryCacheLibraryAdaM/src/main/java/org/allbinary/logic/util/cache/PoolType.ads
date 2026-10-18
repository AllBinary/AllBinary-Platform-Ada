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
with org.allbinary.logic.util.cache.CacheType_Package; use org.allbinary.logic.util.cache.CacheType_Package;

package org.allbinary.logic.util.cache.PoolType_Package is


   type PoolType is tagged;
   type PoolType_Access is access all PoolType'Class;
   type PoolType_Access_Array is array (Natural range <>) of PoolType_Access;
   type PoolType_Access_Array_Access is access all PoolType_Access_Array;
   type PoolType_Access_Array_Access_Array is array (Natural range <>) of PoolType_Access_Array_Access;
   type PoolType_Access_Array_Access_Array_Access is access all PoolType_Access_Array_Access_Array;

   type PoolType is new Java_Object with record
      cacheType : CacheType_Access;
   end record;

   procedure Initialize (This : in out PoolType'Class; cacheType_Param : access CacheType_Package.CacheType'Class);
   function Create (cacheType_Param : access CacheType_Package.CacheType'Class) return PoolType_Access;
   function getCacheType (This : in out PoolType) return CacheType_Access;
   function toString (This : in out PoolType) return Unbounded_String;

end org.allbinary.logic.util.cache.PoolType_Package;


