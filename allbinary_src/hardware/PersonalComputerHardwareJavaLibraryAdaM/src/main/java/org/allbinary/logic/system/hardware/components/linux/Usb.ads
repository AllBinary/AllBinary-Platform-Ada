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
limited with org.allbinary.logic.system.hardware.components.linux.Usb_Package;
package org.allbinary.logic.system.hardware.components.linux.Usb_Package_References is
   type Usb_Access is access all org.allbinary.logic.system.hardware.components.linux.Usb_Package.Usb'Class;
   type Usb_Access_Array is array (Natural range <>) of Usb_Access;
   type Usb_Access_Array_Access is access all Usb_Access_Array;
   type Usb_Access_Array_Access_Array is array (Natural range <>) of Usb_Access_Array_Access;
   type Usb_Access_Array_Access_Array_Access is access all Usb_Access_Array_Access_Array;
   type Usb_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Usb_Access_Array_Access;
   end record;
   function Java_Box (Value : Usb_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Usb_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Usb_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Usb_Access_Array_Access is (if Value /= null and then Value.all in Usb_Access_Array_Object'Class then Usb_Access_Array_Object'Class (Value.all).Value else null);
   type Usb_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Usb_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Usb_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Usb_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Usb_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Usb_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Usb_Access_Array_Access_Array_Object'Class then Usb_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.components.linux.Usb_Package_References;

with org.allbinary.logic.system.hardware.components.linux.Usb_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.Usb_Package is

   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package UsbInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Usb_Access is org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Usb_Access;
   function "=" (Left, Right : Usb_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References."=";
   subtype Usb_Access_Array is org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Usb_Access_Array;
   function "=" (Left, Right : Usb_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References."=";
   subtype Usb_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Usb_Access_Array_Access;
   function "=" (Left, Right : Usb_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References."=";
   function Java_Box (Value : Usb_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Java_Box;
   function Java_Unbox_Usb_Access_Array (Value : access Java_Object'Class) return Usb_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Java_Unbox_Usb_Access_Array;
   subtype Usb_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Usb_Access_Array_Access_Array;
   function "=" (Left, Right : Usb_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References."=";
   subtype Usb_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Usb_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Usb_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References."=";
   function Java_Box (Value : Usb_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Java_Box;
   function Java_Unbox_Usb_Access_Array_Access_Array (Value : access Java_Object'Class) return Usb_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.Usb_Package_References.Java_Unbox_Usb_Access_Array_Access_Array;

   type Usb is new Java_Object and HardwareComponentInterface and UsbInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out Usb'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return Usb_Access;
   function compareTo (This : in out Usb; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out Usb; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out Usb) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.Usb_Package;


