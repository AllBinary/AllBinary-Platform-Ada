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

   type Usb is tagged;
   type Usb_Access is access all Usb'Class;
   type Usb_Access_Array is array (Natural range <>) of Usb_Access;
   type Usb_Access_Array_Access is access all Usb_Access_Array;

   type Usb is new HardwareComponentInterface and UsbInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out Usb'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return Usb_Access;
   function compareTo (This : in out Usb; componentInterface_Param : access HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out Usb; componentInterface_Param : access HardwareComponentInterface'Class);
   function toString (This : in out Usb) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.Usb_Package;


