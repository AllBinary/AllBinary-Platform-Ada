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

limited with org.allbinary.logic.util.cache.PoolType_Package;
package org.allbinary.logic.util.cache.PoolType_Package_References is
   type PoolType_Access is access all org.allbinary.logic.util.cache.PoolType_Package.PoolType'Class;
   type PoolType_Access_Array is array (Natural range <>) of PoolType_Access;
   type PoolType_Access_Array_Access is access all PoolType_Access_Array;
   type PoolType_Access_Array_Access_Array is array (Natural range <>) of PoolType_Access_Array_Access;
   type PoolType_Access_Array_Access_Array_Access is access all PoolType_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.PoolType_Package_References;

with org.allbinary.logic.util.cache.PoolType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CacheType_Package_References;

package org.allbinary.logic.util.cache.PoolType_Package is

   package Reference_Types is
   subtype CacheType_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access;
   use type CacheType_Access;
   subtype CacheType_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array;
   use type CacheType_Access_Array;
   subtype CacheType_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access;
   use type CacheType_Access_Array_Access;
   subtype CacheType_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array;
   use type CacheType_Access_Array_Access_Array;
   subtype CacheType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array_Access;
   use type CacheType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PoolType_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access;
   function "=" (Left, Right : PoolType_Access) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype PoolType_Access_Array is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array;
   function "=" (Left, Right : PoolType_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype PoolType_Access_Array_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access;
   function "=" (Left, Right : PoolType_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype PoolType_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access_Array;
   function "=" (Left, Right : PoolType_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";
   subtype PoolType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PoolType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolType_Package_References."=";

   type PoolType is new Java_Object with record
      cacheType : CacheType_Access;
   end record;

   procedure Initialize (This : in out PoolType'Class; cacheType_Param : access CacheType_Package.CacheType'Class);
   function Create (cacheType_Param : access CacheType_Package.CacheType'Class) return PoolType_Access;
   function getCacheType (This : in out PoolType) return CacheType_Access;
   function toString (This : in out PoolType) return Unbounded_String;

end org.allbinary.logic.util.cache.PoolType_Package;


