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
limited with org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package;
package org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References is
   type MachineAccessControlAddress_Access is access all org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package.MachineAccessControlAddress'Class;
   type MachineAccessControlAddress_Access_Array is array (Natural range <>) of MachineAccessControlAddress_Access;
   type MachineAccessControlAddress_Access_Array_Access is access all MachineAccessControlAddress_Access_Array;
   type MachineAccessControlAddress_Access_Array_Access_Array is array (Natural range <>) of MachineAccessControlAddress_Access_Array_Access;
   type MachineAccessControlAddress_Access_Array_Access_Array_Access is access all MachineAccessControlAddress_Access_Array_Access_Array;
   type MachineAccessControlAddress_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MachineAccessControlAddress_Access_Array_Access;
   end record;
   function Java_Box (Value : MachineAccessControlAddress_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MachineAccessControlAddress_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MachineAccessControlAddress_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MachineAccessControlAddress_Access_Array_Access is (if Value /= null and then Value.all in MachineAccessControlAddress_Access_Array_Object'Class then MachineAccessControlAddress_Access_Array_Object'Class (Value.all).Value else null);
   type MachineAccessControlAddress_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MachineAccessControlAddress_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MachineAccessControlAddress_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MachineAccessControlAddress_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MachineAccessControlAddress_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MachineAccessControlAddress_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MachineAccessControlAddress_Access_Array_Access_Array_Object'Class then MachineAccessControlAddress_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References;

with org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package is

   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package MachineAccessControlAddressInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MachineAccessControlAddress_Access is org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.MachineAccessControlAddress_Access;
   function "=" (Left, Right : MachineAccessControlAddress_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References."=";
   subtype MachineAccessControlAddress_Access_Array is org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.MachineAccessControlAddress_Access_Array;
   function "=" (Left, Right : MachineAccessControlAddress_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References."=";
   subtype MachineAccessControlAddress_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.MachineAccessControlAddress_Access_Array_Access;
   function "=" (Left, Right : MachineAccessControlAddress_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References."=";
   function Java_Box (Value : MachineAccessControlAddress_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.Java_Box;
   function Java_Unbox_MachineAccessControlAddress_Access_Array (Value : access Java_Object'Class) return MachineAccessControlAddress_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.Java_Unbox_MachineAccessControlAddress_Access_Array;
   subtype MachineAccessControlAddress_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.MachineAccessControlAddress_Access_Array_Access_Array;
   function "=" (Left, Right : MachineAccessControlAddress_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References."=";
   subtype MachineAccessControlAddress_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.MachineAccessControlAddress_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MachineAccessControlAddress_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References."=";
   function Java_Box (Value : MachineAccessControlAddress_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.Java_Box;
   function Java_Unbox_MachineAccessControlAddress_Access_Array_Access_Array (Value : access Java_Object'Class) return MachineAccessControlAddress_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package_References.Java_Unbox_MachineAccessControlAddress_Access_Array_Access_Array;

   type MachineAccessControlAddress is new Java_Object and HardwareComponentInterface and MachineAccessControlAddressInterface with null record;

   procedure Initialize (This : in out MachineAccessControlAddress'Class);
   function Create return MachineAccessControlAddress_Access;
   function compareTo (This : in out MachineAccessControlAddress; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out MachineAccessControlAddress; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out MachineAccessControlAddress) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package;


