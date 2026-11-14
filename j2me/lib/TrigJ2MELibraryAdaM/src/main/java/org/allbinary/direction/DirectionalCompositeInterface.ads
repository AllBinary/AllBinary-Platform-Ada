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
limited with org.allbinary.direction.DirectionalCompositeInterface_Package;
package org.allbinary.direction.DirectionalCompositeInterface_Package_References is
   type DirectionalCompositeInterface_Access is access all org.allbinary.direction.DirectionalCompositeInterface_Package.DirectionalCompositeInterface'Class;
   type DirectionalCompositeInterface_Access_Array is array (Natural range <>) of DirectionalCompositeInterface_Access;
   type DirectionalCompositeInterface_Access_Array_Access is access all DirectionalCompositeInterface_Access_Array;
   type DirectionalCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of DirectionalCompositeInterface_Access_Array_Access;
   type DirectionalCompositeInterface_Access_Array_Access_Array_Access is access all DirectionalCompositeInterface_Access_Array_Access_Array;
   type DirectionalCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionalCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionalCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionalCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionalCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionalCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in DirectionalCompositeInterface_Access_Array_Object'Class then DirectionalCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type DirectionalCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionalCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionalCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionalCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionalCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionalCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DirectionalCompositeInterface_Access_Array_Access_Array_Object'Class then DirectionalCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.direction.DirectionalCompositeInterface_Package_References;

with org.allbinary.direction.DirectionalCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.DirectionalInterface_Package;
with org.allbinary.direction.DirectionalInterface_Package_References;

package org.allbinary.direction.DirectionalCompositeInterface_Package is

   package Reference_Types is
   subtype DirectionalInterface_Access is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access;
   use type DirectionalInterface_Access;
   subtype DirectionalInterface_Access_Array is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access_Array;
   use type DirectionalInterface_Access_Array;
   subtype DirectionalInterface_Access_Array_Access is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access_Array_Access;
   use type DirectionalInterface_Access_Array_Access;
   subtype DirectionalInterface_Access_Array_Access_Array is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access_Array_Access_Array;
   use type DirectionalInterface_Access_Array_Access_Array;
   subtype DirectionalInterface_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access_Array_Access_Array_Access;
   use type DirectionalInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DirectionalCompositeInterface is interface;
   subtype DirectionalCompositeInterface_Access is org.allbinary.direction.DirectionalCompositeInterface_Package_References.DirectionalCompositeInterface_Access;
   function "=" (Left, Right : DirectionalCompositeInterface_Access) return Boolean renames org.allbinary.direction.DirectionalCompositeInterface_Package_References."=";
   subtype DirectionalCompositeInterface_Access_Array is org.allbinary.direction.DirectionalCompositeInterface_Package_References.DirectionalCompositeInterface_Access_Array;
   function "=" (Left, Right : DirectionalCompositeInterface_Access_Array) return Boolean renames org.allbinary.direction.DirectionalCompositeInterface_Package_References."=";
   subtype DirectionalCompositeInterface_Access_Array_Access is org.allbinary.direction.DirectionalCompositeInterface_Package_References.DirectionalCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : DirectionalCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionalCompositeInterface_Package_References."=";
   function Java_Box (Value : DirectionalCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.DirectionalCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_DirectionalCompositeInterface_Access_Array (Value : access Java_Object'Class) return DirectionalCompositeInterface_Access_Array_Access renames org.allbinary.direction.DirectionalCompositeInterface_Package_References.Java_Unbox_DirectionalCompositeInterface_Access_Array;
   subtype DirectionalCompositeInterface_Access_Array_Access_Array is org.allbinary.direction.DirectionalCompositeInterface_Package_References.DirectionalCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DirectionalCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.DirectionalCompositeInterface_Package_References."=";
   subtype DirectionalCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionalCompositeInterface_Package_References.DirectionalCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectionalCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionalCompositeInterface_Package_References."=";
   function Java_Box (Value : DirectionalCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.DirectionalCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_DirectionalCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return DirectionalCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.direction.DirectionalCompositeInterface_Package_References.Java_Unbox_DirectionalCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_DirectionalCompositeInterface (Value : DirectionalCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getDirectionalInterface (This : in out DirectionalCompositeInterface) return DirectionalInterface_Access is abstract;

end org.allbinary.direction.DirectionalCompositeInterface_Package;


