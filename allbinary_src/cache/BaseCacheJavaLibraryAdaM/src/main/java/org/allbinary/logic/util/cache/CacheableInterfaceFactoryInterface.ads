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

with AllBinary_Java;
limited with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
package org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References is
   type CacheableInterfaceFactoryInterface_Access is access all org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class;
   type CacheableInterfaceFactoryInterface_Access_Array is array (Natural range <>) of CacheableInterfaceFactoryInterface_Access;
   type CacheableInterfaceFactoryInterface_Access_Array_Access is access all CacheableInterfaceFactoryInterface_Access_Array;
   type CacheableInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of CacheableInterfaceFactoryInterface_Access_Array_Access;
   type CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   type CacheableInterfaceFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CacheableInterfaceFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : CacheableInterfaceFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CacheableInterfaceFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CacheableInterfaceFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CacheableInterfaceFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in CacheableInterfaceFactoryInterface_Access_Array_Object'Class then CacheableInterfaceFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CacheableInterfaceFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class then CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References;

with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package_References;

package org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package is

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


   type CacheableInterfaceFactoryInterface is interface;
   subtype CacheableInterfaceFactoryInterface_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : CacheableInterfaceFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_CacheableInterfaceFactoryInterface_Access_Array (Value : access Java_Object'Class) return CacheableInterfaceFactoryInterface_Access_Array_Access renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.Java_Unbox_CacheableInterfaceFactoryInterface_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_CacheableInterfaceFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.Java_Unbox_CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_CacheableInterfaceFactoryInterface (Value : CacheableInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out CacheableInterfaceFactoryInterface; key_Param : access Java_Object'Class) return CacheableInterface_Access is abstract;
   procedure getInstance (This : in out CacheableInterfaceFactoryInterface; key_Param : access Java_Object'Class) is abstract;

end org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;


