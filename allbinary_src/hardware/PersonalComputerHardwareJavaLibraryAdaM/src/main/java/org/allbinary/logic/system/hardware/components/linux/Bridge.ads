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
with org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.Bridge_Package is

   package BridgeInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

   type Bridge is tagged;
   type Bridge_Access is access all Bridge'Class;
   type Bridge_Access_Array is array (Natural range <>) of Bridge_Access;
   type Bridge_Access_Array_Access is access all Bridge_Access_Array;

   type Bridge is new HardwareComponentInterface and BridgeInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out Bridge'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return Bridge_Access;
   function compareTo (This : in out Bridge; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out Bridge; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out Bridge) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.Bridge_Package;


