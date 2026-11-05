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

limited with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
package org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References is
   type AutomaticCacheInterface_Access is access all org.allbinary.logic.util.cache.AutomaticCacheInterface_Package.AutomaticCacheInterface'Class;
   type AutomaticCacheInterface_Access_Array is array (Natural range <>) of AutomaticCacheInterface_Access;
   type AutomaticCacheInterface_Access_Array_Access is access all AutomaticCacheInterface_Access_Array;
   type AutomaticCacheInterface_Access_Array_Access_Array is array (Natural range <>) of AutomaticCacheInterface_Access_Array_Access;
   type AutomaticCacheInterface_Access_Array_Access_Array_Access is access all AutomaticCacheInterface_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References;

with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.CacheInterface_Package; use org.allbinary.logic.util.cache.CacheInterface_Package;
limited with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package_References;

package org.allbinary.logic.util.cache.AutomaticCacheInterface_Package is

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


   type AutomaticCacheInterface is interface and CacheInterface;
   subtype AutomaticCacheInterface_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access;
   function "=" (Left, Right : AutomaticCacheInterface_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype AutomaticCacheInterface_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array;
   function "=" (Left, Right : AutomaticCacheInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype AutomaticCacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access;
   function "=" (Left, Right : AutomaticCacheInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype AutomaticCacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AutomaticCacheInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype AutomaticCacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AutomaticCacheInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   function Java_Object_Access_From_AutomaticCacheInterface (Value : AutomaticCacheInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function get (This : in out AutomaticCacheInterface; key_Param : access Java_Object'Class) return CacheableInterface_Access is abstract;
   procedure get (This : in out AutomaticCacheInterface; key_Param : access Java_Object'Class) is abstract;

end org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;


