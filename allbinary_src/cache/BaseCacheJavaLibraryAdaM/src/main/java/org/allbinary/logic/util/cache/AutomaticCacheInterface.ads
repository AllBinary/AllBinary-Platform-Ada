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

package org.allbinary.logic.util.cache.AutomaticCacheInterface_Package is


   type AutomaticCacheInterface is interface and CacheInterface;
   type AutomaticCacheInterface_Access is access all AutomaticCacheInterface'Class;
   type AutomaticCacheInterface_Access_Array is array (Natural range <>) of AutomaticCacheInterface_Access;
   type AutomaticCacheInterface_Access_Array_Access is access all AutomaticCacheInterface_Access_Array;
   function get (This : in out AutomaticCacheInterface; key : Java_Object_Access) return CacheableInterface_Access is abstract;

end org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;


