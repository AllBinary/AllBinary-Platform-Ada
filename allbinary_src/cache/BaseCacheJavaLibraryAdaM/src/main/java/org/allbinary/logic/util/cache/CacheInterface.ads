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
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.logic.util.cache.CacheInterface_Package is


   type CacheInterface is interface;
   type CacheInterface_Access is access all CacheInterface'Class;
   type CacheInterface_Access_Array is array (Natural range <>) of CacheInterface_Access;
   type CacheInterface_Access_Array_Access is access all CacheInterface_Access_Array;
   type CacheInterface_Access_Array_Access_Array is array (Natural range <>) of CacheInterface_Access_Array_Access;
   type CacheInterface_Access_Array_Access_Array_Access is access all CacheInterface_Access_Array_Access_Array;
   procedure add (This : in out CacheInterface; cacheableInterface_Param : access CacheableInterface_Package.CacheableInterface'Class) is abstract;
   procedure addArray (This : in out CacheInterface; cacheableInterfaces : CacheableInterface_Access_Array_Access) is abstract;
   procedure clear (This : in out CacheInterface) is abstract;

end org.allbinary.logic.util.cache.CacheInterface_Package;


