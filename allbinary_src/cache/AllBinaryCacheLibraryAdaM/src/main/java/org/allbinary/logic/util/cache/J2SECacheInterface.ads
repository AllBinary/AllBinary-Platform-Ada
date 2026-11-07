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

limited with org.allbinary.logic.util.cache.J2SECacheInterface_Package;
package org.allbinary.logic.util.cache.J2SECacheInterface_Package_References is
   type J2SECacheInterface_Access is access all org.allbinary.logic.util.cache.J2SECacheInterface_Package.J2SECacheInterface'Class;
   type J2SECacheInterface_Access_Array is array (Natural range <>) of J2SECacheInterface_Access;
   type J2SECacheInterface_Access_Array_Access is access all J2SECacheInterface_Access_Array;
   type J2SECacheInterface_Access_Array_Access_Array is array (Natural range <>) of J2SECacheInterface_Access_Array_Access;
   type J2SECacheInterface_Access_Array_Access_Array_Access is access all J2SECacheInterface_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.J2SECacheInterface_Package_References;

with org.allbinary.logic.util.cache.J2SECacheInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;

package org.allbinary.logic.util.cache.J2SECacheInterface_Package is

   package Set_Package renames Standard.java.util.Set_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type J2SECacheInterface is interface and AutomaticCacheInterface;
   subtype J2SECacheInterface_Access is org.allbinary.logic.util.cache.J2SECacheInterface_Package_References.J2SECacheInterface_Access;
   function "=" (Left, Right : J2SECacheInterface_Access) return Boolean renames org.allbinary.logic.util.cache.J2SECacheInterface_Package_References."=";
   subtype J2SECacheInterface_Access_Array is org.allbinary.logic.util.cache.J2SECacheInterface_Package_References.J2SECacheInterface_Access_Array;
   function "=" (Left, Right : J2SECacheInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.J2SECacheInterface_Package_References."=";
   subtype J2SECacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.J2SECacheInterface_Package_References.J2SECacheInterface_Access_Array_Access;
   function "=" (Left, Right : J2SECacheInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.J2SECacheInterface_Package_References."=";
   subtype J2SECacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.J2SECacheInterface_Package_References.J2SECacheInterface_Access_Array_Access_Array;
   function "=" (Left, Right : J2SECacheInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.J2SECacheInterface_Package_References."=";
   subtype J2SECacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.J2SECacheInterface_Package_References.J2SECacheInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : J2SECacheInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.J2SECacheInterface_Package_References."=";
   function Java_Object_Access_From_J2SECacheInterface (Value : J2SECacheInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function keySet (This : in out J2SECacheInterface) return Set_Access is abstract;

end org.allbinary.logic.util.cache.J2SECacheInterface_Package;


