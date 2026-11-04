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

limited with org.allbinary.logic.util.cache.PoolInterfaceFactory_Package;
package org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References is
   type PoolInterfaceFactory_Access is access all org.allbinary.logic.util.cache.PoolInterfaceFactory_Package.PoolInterfaceFactory'Class;
   type PoolInterfaceFactory_Access_Array is array (Natural range <>) of PoolInterfaceFactory_Access;
   type PoolInterfaceFactory_Access_Array_Access is access all PoolInterfaceFactory_Access_Array;
   type PoolInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of PoolInterfaceFactory_Access_Array_Access;
   type PoolInterfaceFactory_Access_Array_Access_Array_Access is access all PoolInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References;

with org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package_References;
limited with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References;
limited with org.allbinary.logic.util.cache.PoolType_Package;
with org.allbinary.logic.util.cache.PoolType_Package_References;
limited with org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package_References;

package org.allbinary.logic.util.cache.PoolInterfaceFactory_Package is

   package Reference_Types is
   subtype PoolInterface_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access;
   use type PoolInterface_Access;
   subtype PoolInterface_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array;
   use type PoolInterface_Access_Array;
   subtype PoolInterface_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access;
   use type PoolInterface_Access_Array_Access;
   subtype PoolInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array;
   use type PoolInterface_Access_Array_Access_Array;
   subtype PoolInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array_Access;
   use type PoolInterface_Access_Array_Access_Array_Access;
   subtype CacheableInterfaceFactoryInterface_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access;
   use type CacheableInterfaceFactoryInterface_Access;
   subtype CacheableInterfaceFactoryInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array;
   use type CacheableInterfaceFactoryInterface_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype PoolType_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access;
   use type PoolType_Access;
   subtype PoolType_Access_Array is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array;
   use type PoolType_Access_Array;
   subtype PoolType_Access_Array_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access;
   use type PoolType_Access_Array_Access;
   subtype PoolType_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access_Array;
   use type PoolType_Access_Array_Access_Array;
   subtype PoolType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access_Array_Access;
   use type PoolType_Access_Array_Access_Array_Access;
   subtype CachePolicy_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access;
   use type CachePolicy_Access;
   subtype CachePolicy_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array;
   use type CachePolicy_Access_Array;
   subtype CachePolicy_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access;
   use type CachePolicy_Access_Array_Access;
   subtype CachePolicy_Access_Array_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array;
   use type CachePolicy_Access_Array_Access_Array;
   subtype CachePolicy_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array_Access;
   use type CachePolicy_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PoolInterfaceFactory_Access is org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References.PoolInterfaceFactory_Access;
   function "=" (Left, Right : PoolInterfaceFactory_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References."=";
   subtype PoolInterfaceFactory_Access_Array is org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References.PoolInterfaceFactory_Access_Array;
   function "=" (Left, Right : PoolInterfaceFactory_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References."=";
   subtype PoolInterfaceFactory_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References.PoolInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : PoolInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References."=";
   subtype PoolInterfaceFactory_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References.PoolInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PoolInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References."=";
   subtype PoolInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References.PoolInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PoolInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolInterfaceFactory_Package_References."=";

   type PoolInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out PoolInterfaceFactory'Class);
   function Create return PoolInterfaceFactory_Access;
   function getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; poolType_Param : access PoolType_Package.PoolType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) return PoolInterface_Access;
   procedure getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; poolType_Param : access PoolType_Package.PoolType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class);

end org.allbinary.logic.util.cache.PoolInterfaceFactory_Package;


