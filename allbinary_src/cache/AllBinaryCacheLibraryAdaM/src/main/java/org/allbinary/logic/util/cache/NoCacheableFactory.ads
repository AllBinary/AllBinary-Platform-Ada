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

limited with org.allbinary.logic.util.cache.NoCacheableFactory_Package;
package org.allbinary.logic.util.cache.NoCacheableFactory_Package_References is
   type NoCacheableFactory_Access is access all org.allbinary.logic.util.cache.NoCacheableFactory_Package.NoCacheableFactory'Class;
   type NoCacheableFactory_Access_Array is array (Natural range <>) of NoCacheableFactory_Access;
   type NoCacheableFactory_Access_Array_Access is access all NoCacheableFactory_Access_Array;
   type NoCacheableFactory_Access_Array_Access_Array is array (Natural range <>) of NoCacheableFactory_Access_Array_Access;
   type NoCacheableFactory_Access_Array_Access_Array_Access is access all NoCacheableFactory_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.NoCacheableFactory_Package_References;

with org.allbinary.logic.util.cache.NoCacheableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
limited with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package_References;

package org.allbinary.logic.util.cache.NoCacheableFactory_Package is

   package Reference_Types is
   subtype CacheableInterface_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access;
   use type CacheableInterface_Access;
   subtype CacheableInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array;
   use type CacheableInterface_Access_Array;
   subtype CacheableInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access;
   use type CacheableInterface_Access_Array_Access;
   subtype CacheableInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array;
   use type CacheableInterface_Access_Array_Access_Array;
   subtype CacheableInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterface_Package_References.CacheableInterface_Access_Array_Access_Array_Access;
   use type CacheableInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoCacheableFactory_Access is org.allbinary.logic.util.cache.NoCacheableFactory_Package_References.NoCacheableFactory_Access;
   function "=" (Left, Right : NoCacheableFactory_Access) return Boolean renames org.allbinary.logic.util.cache.NoCacheableFactory_Package_References."=";
   subtype NoCacheableFactory_Access_Array is org.allbinary.logic.util.cache.NoCacheableFactory_Package_References.NoCacheableFactory_Access_Array;
   function "=" (Left, Right : NoCacheableFactory_Access_Array) return Boolean renames org.allbinary.logic.util.cache.NoCacheableFactory_Package_References."=";
   subtype NoCacheableFactory_Access_Array_Access is org.allbinary.logic.util.cache.NoCacheableFactory_Package_References.NoCacheableFactory_Access_Array_Access;
   function "=" (Left, Right : NoCacheableFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.NoCacheableFactory_Package_References."=";
   subtype NoCacheableFactory_Access_Array_Access_Array is org.allbinary.logic.util.cache.NoCacheableFactory_Package_References.NoCacheableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NoCacheableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.NoCacheableFactory_Package_References."=";
   subtype NoCacheableFactory_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.NoCacheableFactory_Package_References.NoCacheableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoCacheableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.NoCacheableFactory_Package_References."=";

   type NoCacheableFactory is new Java_Object and CacheableInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out NoCacheableFactory'Class);
   function Create return NoCacheableFactory_Access;
   function getInstance (This : in out NoCacheableFactory; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure getInstance (This : in out NoCacheableFactory; key_Param : access Java_Object'Class);
   function getInstance (This : in out NoCacheableFactory; Value : Unbounded_String) return CacheableInterface_Access;
   procedure getInstance (This : in out NoCacheableFactory; Value : Unbounded_String);

end org.allbinary.logic.util.cache.NoCacheableFactory_Package;


