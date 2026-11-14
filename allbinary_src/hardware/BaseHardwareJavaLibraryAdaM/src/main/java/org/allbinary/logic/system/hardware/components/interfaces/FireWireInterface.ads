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
limited with org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package;
package org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References is
   type FireWireInterface_Access is access all org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package.FireWireInterface'Class;
   type FireWireInterface_Access_Array is array (Natural range <>) of FireWireInterface_Access;
   type FireWireInterface_Access_Array_Access is access all FireWireInterface_Access_Array;
   type FireWireInterface_Access_Array_Access_Array is array (Natural range <>) of FireWireInterface_Access_Array_Access;
   type FireWireInterface_Access_Array_Access_Array_Access is access all FireWireInterface_Access_Array_Access_Array;
   type FireWireInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FireWireInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : FireWireInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FireWireInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FireWireInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FireWireInterface_Access_Array_Access is (if Value /= null and then Value.all in FireWireInterface_Access_Array_Object'Class then FireWireInterface_Access_Array_Object'Class (Value.all).Value else null);
   type FireWireInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FireWireInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FireWireInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FireWireInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FireWireInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FireWireInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FireWireInterface_Access_Array_Access_Array_Object'Class then FireWireInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References;

with org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type FireWireInterface is interface;
   subtype FireWireInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access;
   function "=" (Left, Right : FireWireInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   subtype FireWireInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access_Array;
   function "=" (Left, Right : FireWireInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   subtype FireWireInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access_Array_Access;
   function "=" (Left, Right : FireWireInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   function Java_Box (Value : FireWireInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.Java_Box;
   function Java_Unbox_FireWireInterface_Access_Array (Value : access Java_Object'Class) return FireWireInterface_Access_Array_Access renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.Java_Unbox_FireWireInterface_Access_Array;
   subtype FireWireInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access_Array_Access_Array;
   function "=" (Left, Right : FireWireInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   subtype FireWireInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FireWireInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   function Java_Box (Value : FireWireInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.Java_Box;
   function Java_Unbox_FireWireInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return FireWireInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.Java_Unbox_FireWireInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_FireWireInterface (Value : FireWireInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package;


