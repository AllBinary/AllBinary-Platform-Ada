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

limited with org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;
package org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References is
   type CacheInterfaceFactory_Access is access all org.allbinary.logic.util.cache.CacheInterfaceFactory_Package.CacheInterfaceFactory'Class;
   type CacheInterfaceFactory_Access_Array is array (Natural range <>) of CacheInterfaceFactory_Access;
   type CacheInterfaceFactory_Access_Array_Access is access all CacheInterfaceFactory_Access_Array;
   type CacheInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of CacheInterfaceFactory_Access_Array_Access;
   type CacheInterfaceFactory_Access_Array_Access_Array_Access is access all CacheInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References;

with org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.CacheInterface_Package;
with org.allbinary.logic.util.cache.CacheInterface_Package_References;
limited with org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CacheType_Package_References;
limited with org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package_References;

package org.allbinary.logic.util.cache.CacheInterfaceFactory_Package is

   package Reference_Types is
   subtype CacheInterface_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access;
   use type CacheInterface_Access;
   subtype CacheInterface_Access_Array is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array;
   use type CacheInterface_Access_Array;
   subtype CacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access;
   use type CacheInterface_Access_Array_Access;
   subtype CacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access_Array;
   use type CacheInterface_Access_Array_Access_Array;
   subtype CacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access_Array_Access;
   use type CacheInterface_Access_Array_Access_Array_Access;
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


   subtype CacheInterfaceFactory_Access is org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References.CacheInterfaceFactory_Access;
   function "=" (Left, Right : CacheInterfaceFactory_Access) return Boolean renames org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References."=";
   subtype CacheInterfaceFactory_Access_Array is org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References.CacheInterfaceFactory_Access_Array;
   function "=" (Left, Right : CacheInterfaceFactory_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References."=";
   subtype CacheInterfaceFactory_Access_Array_Access is org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References.CacheInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : CacheInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References."=";
   subtype CacheInterfaceFactory_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References.CacheInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CacheInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References."=";
   subtype CacheInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References.CacheInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheInterfaceFactory_Package_References."=";

   type CacheInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out CacheInterfaceFactory'Class);
   function Create return CacheInterfaceFactory_Access;
   function getInstance (cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) return CacheInterface_Access;
   procedure getInstance (cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class);

end org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;


