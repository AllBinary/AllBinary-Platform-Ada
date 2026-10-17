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
with org.allbinary.logic.util.cache.CacheInterface_Package; use org.allbinary.logic.util.cache.CacheInterface_Package;

package org.allbinary.logic.util.cache.PoolInterface_Package is


   type PoolInterface is interface and CacheInterface;
   type PoolInterface_Access is access all PoolInterface'Class;
   type PoolInterface_Access_Array is array (Natural range <>) of PoolInterface_Access;
   type PoolInterface_Access_Array_Access is access all PoolInterface_Access_Array;
   function remove (This : in out PoolInterface; key : Java_Object_Access) return CacheableInterface_Access is abstract;

end org.allbinary.logic.util.cache.PoolInterface_Package;


