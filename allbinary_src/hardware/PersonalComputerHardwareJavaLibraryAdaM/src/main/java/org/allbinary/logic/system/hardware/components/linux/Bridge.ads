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
limited with org.allbinary.logic.system.hardware.components.linux.Bridge_Package;
package org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References is
   type Bridge_Access is access all org.allbinary.logic.system.hardware.components.linux.Bridge_Package.Bridge'Class;
   type Bridge_Access_Array is array (Natural range <>) of Bridge_Access;
   type Bridge_Access_Array_Access is access all Bridge_Access_Array;
   type Bridge_Access_Array_Access_Array is array (Natural range <>) of Bridge_Access_Array_Access;
   type Bridge_Access_Array_Access_Array_Access is access all Bridge_Access_Array_Access_Array;
   type Bridge_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Bridge_Access_Array_Access;
   end record;
   function Java_Box (Value : Bridge_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Bridge_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Bridge_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Bridge_Access_Array_Access is (if Value /= null and then Value.all in Bridge_Access_Array_Object'Class then Bridge_Access_Array_Object'Class (Value.all).Value else null);
   type Bridge_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Bridge_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Bridge_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Bridge_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Bridge_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Bridge_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Bridge_Access_Array_Access_Array_Object'Class then Bridge_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References;

with org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.Bridge_Package is

   package BridgeInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Bridge_Access is org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Bridge_Access;
   function "=" (Left, Right : Bridge_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References."=";
   subtype Bridge_Access_Array is org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Bridge_Access_Array;
   function "=" (Left, Right : Bridge_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References."=";
   subtype Bridge_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Bridge_Access_Array_Access;
   function "=" (Left, Right : Bridge_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References."=";
   function Java_Box (Value : Bridge_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Java_Box;
   function Java_Unbox_Bridge_Access_Array (Value : access Java_Object'Class) return Bridge_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Java_Unbox_Bridge_Access_Array;
   subtype Bridge_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Bridge_Access_Array_Access_Array;
   function "=" (Left, Right : Bridge_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References."=";
   subtype Bridge_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Bridge_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Bridge_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References."=";
   function Java_Box (Value : Bridge_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Java_Box;
   function Java_Unbox_Bridge_Access_Array_Access_Array (Value : access Java_Object'Class) return Bridge_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.Bridge_Package_References.Java_Unbox_Bridge_Access_Array_Access_Array;

   type Bridge is new Java_Object and HardwareComponentInterface and BridgeInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out Bridge'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return Bridge_Access;
   function compareTo (This : in out Bridge; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out Bridge; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out Bridge) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.Bridge_Package;


