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
limited with org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package;
package org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References is
   type EthernetInterface_Access is access all org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package.EthernetInterface'Class;
   type EthernetInterface_Access_Array is array (Natural range <>) of EthernetInterface_Access;
   type EthernetInterface_Access_Array_Access is access all EthernetInterface_Access_Array;
   type EthernetInterface_Access_Array_Access_Array is array (Natural range <>) of EthernetInterface_Access_Array_Access;
   type EthernetInterface_Access_Array_Access_Array_Access is access all EthernetInterface_Access_Array_Access_Array;
   type EthernetInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EthernetInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : EthernetInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EthernetInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EthernetInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EthernetInterface_Access_Array_Access is (if Value /= null and then Value.all in EthernetInterface_Access_Array_Object'Class then EthernetInterface_Access_Array_Object'Class (Value.all).Value else null);
   type EthernetInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EthernetInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EthernetInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EthernetInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EthernetInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EthernetInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EthernetInterface_Access_Array_Access_Array_Object'Class then EthernetInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References;

with org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type EthernetInterface is interface;
   subtype EthernetInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access;
   function "=" (Left, Right : EthernetInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   subtype EthernetInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access_Array;
   function "=" (Left, Right : EthernetInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   subtype EthernetInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access_Array_Access;
   function "=" (Left, Right : EthernetInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   function Java_Box (Value : EthernetInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.Java_Box;
   function Java_Unbox_EthernetInterface_Access_Array (Value : access Java_Object'Class) return EthernetInterface_Access_Array_Access renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.Java_Unbox_EthernetInterface_Access_Array;
   subtype EthernetInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EthernetInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   subtype EthernetInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EthernetInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   function Java_Box (Value : EthernetInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.Java_Box;
   function Java_Unbox_EthernetInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return EthernetInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.Java_Unbox_EthernetInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_EthernetInterface (Value : EthernetInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package;


