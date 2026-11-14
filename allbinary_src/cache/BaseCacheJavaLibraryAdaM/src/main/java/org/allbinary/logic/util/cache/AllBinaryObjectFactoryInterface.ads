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
limited with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;
package org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References is
   type AllBinaryObjectFactoryInterface_Access is access all org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package.AllBinaryObjectFactoryInterface'Class;
   type AllBinaryObjectFactoryInterface_Access_Array is array (Natural range <>) of AllBinaryObjectFactoryInterface_Access;
   type AllBinaryObjectFactoryInterface_Access_Array_Access is access all AllBinaryObjectFactoryInterface_Access_Array;
   type AllBinaryObjectFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of AllBinaryObjectFactoryInterface_Access_Array_Access;
   type AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access is access all AllBinaryObjectFactoryInterface_Access_Array_Access_Array;
   type AllBinaryObjectFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryObjectFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryObjectFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryObjectFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryObjectFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryObjectFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryObjectFactoryInterface_Access_Array_Object'Class then AllBinaryObjectFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryObjectFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Object'Class then AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References;

with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type AllBinaryObjectFactoryInterface is interface;
   subtype AllBinaryObjectFactoryInterface_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   subtype AllBinaryObjectFactoryInterface_Access_Array is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   function Java_Box (Value : AllBinaryObjectFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_AllBinaryObjectFactoryInterface_Access_Array (Value : access Java_Object'Class) return AllBinaryObjectFactoryInterface_Access_Array_Access renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.Java_Unbox_AllBinaryObjectFactoryInterface_Access_Array;
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References."=";
   function Java_Box (Value : AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_AllBinaryObjectFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.Java_Unbox_AllBinaryObjectFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AllBinaryObjectFactoryInterface (Value : AllBinaryObjectFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out AllBinaryObjectFactoryInterface) return Java_Object_Access is abstract;

end org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;


