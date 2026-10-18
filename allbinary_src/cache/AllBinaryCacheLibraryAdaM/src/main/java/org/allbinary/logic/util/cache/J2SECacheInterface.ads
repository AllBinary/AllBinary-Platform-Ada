-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;

package org.allbinary.logic.util.cache.J2SECacheInterface_Package is


   type J2SECacheInterface is interface and AutomaticCacheInterface;
   type J2SECacheInterface_Access is access all J2SECacheInterface'Class;
   type J2SECacheInterface_Access_Array is array (Natural range <>) of J2SECacheInterface_Access;
   type J2SECacheInterface_Access_Array_Access is access all J2SECacheInterface_Access_Array;
   type J2SECacheInterface_Access_Array_Access_Array is array (Natural range <>) of J2SECacheInterface_Access_Array_Access;
   type J2SECacheInterface_Access_Array_Access_Array_Access is access all J2SECacheInterface_Access_Array_Access_Array;
   function keySet (This : in out J2SECacheInterface) return Set_Access is abstract;

end org.allbinary.logic.util.cache.J2SECacheInterface_Package;


