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

limited with org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;
package org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References is
   type BasicArrayListResetablePool_Access is access all org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package.BasicArrayListResetablePool'Class;
   type BasicArrayListResetablePool_Access_Array is array (Natural range <>) of BasicArrayListResetablePool_Access;
   type BasicArrayListResetablePool_Access_Array_Access is access all BasicArrayListResetablePool_Access_Array;
   type BasicArrayListResetablePool_Access_Array_Access_Array is array (Natural range <>) of BasicArrayListResetablePool_Access_Array_Access;
   type BasicArrayListResetablePool_Access_Array_Access_Array_Access is access all BasicArrayListResetablePool_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References;

with org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.AbstractArrayListPool_Package; use org.allbinary.logic.util.cache.AbstractArrayListPool_Package;
limited with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References;
limited with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package_References;

package org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package is

   package Reference_Types is
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


   subtype BasicArrayListResetablePool_Access is org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References.BasicArrayListResetablePool_Access;
   function "=" (Left, Right : BasicArrayListResetablePool_Access) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References."=";
   subtype BasicArrayListResetablePool_Access_Array is org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References.BasicArrayListResetablePool_Access_Array;
   function "=" (Left, Right : BasicArrayListResetablePool_Access_Array) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References."=";
   subtype BasicArrayListResetablePool_Access_Array_Access is org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References.BasicArrayListResetablePool_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListResetablePool_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References."=";
   subtype BasicArrayListResetablePool_Access_Array_Access_Array is org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References.BasicArrayListResetablePool_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListResetablePool_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References."=";
   subtype BasicArrayListResetablePool_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References.BasicArrayListResetablePool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListResetablePool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package_References."=";

   type BasicArrayListResetablePool is new AbstractArrayListPool with null record;

   procedure Initialize (This : in out BasicArrayListResetablePool'Class; cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class);
   function Create (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class) return BasicArrayListResetablePool_Access;
   procedure clear (This : in out BasicArrayListResetablePool);
   function remove (This : in out BasicArrayListResetablePool; key_Param : access Java_Object'Class) return CacheableInterface_Access;
   procedure remove (This : in out BasicArrayListResetablePool; key_Param : access Java_Object'Class);
   function remove (This : in out BasicArrayListResetablePool; Value : Unbounded_String) return CacheableInterface_Access;
   procedure remove (This : in out BasicArrayListResetablePool; Value : Unbounded_String);

end org.allbinary.logic.util.cache.BasicArrayListResetablePool_Package;


