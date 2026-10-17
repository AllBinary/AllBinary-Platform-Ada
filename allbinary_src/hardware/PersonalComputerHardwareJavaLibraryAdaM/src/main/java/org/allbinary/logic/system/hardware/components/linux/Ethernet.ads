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
with org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.Ethernet_Package is

   package EthernetInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

   type Ethernet is tagged;
   type Ethernet_Access is access all Ethernet'Class;
   type Ethernet_Access_Array is array (Natural range <>) of Ethernet_Access;
   type Ethernet_Access_Array_Access is access all Ethernet_Access_Array;

   type Ethernet is new HardwareComponentInterface and EthernetInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out Ethernet'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return Ethernet_Access;
   function compareTo (This : in out Ethernet; componentInterface : HardwareComponentInterface_Access) return Boolean;
   procedure compareTo (This : in out Ethernet; componentInterface : HardwareComponentInterface_Access);
   function toString (This : in out Ethernet) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.Ethernet_Package;


