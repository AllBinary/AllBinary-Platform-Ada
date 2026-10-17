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
with org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package is

   package HardDriveControllerInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

   type HardDriveController is tagged;
   type HardDriveController_Access is access all HardDriveController'Class;
   type HardDriveController_Access_Array is array (Natural range <>) of HardDriveController_Access;
   type HardDriveController_Access_Array_Access is access all HardDriveController_Access_Array;

   type HardDriveController is new HardwareComponentInterface and HardDriveControllerInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out HardDriveController'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return HardDriveController_Access;
   function compareTo (This : in out HardDriveController; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out HardDriveController; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out HardDriveController) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package;


