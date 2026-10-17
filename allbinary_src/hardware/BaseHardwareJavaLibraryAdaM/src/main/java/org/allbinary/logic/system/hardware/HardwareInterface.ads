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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.logic.system.hardware.HardwareInterface_Package is

   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type HardwareInterface is interface;
   type HardwareInterface_Access is access all HardwareInterface'Class;
   type HardwareInterface_Access_Array is array (Natural range <>) of HardwareInterface_Access;
   type HardwareInterface_Access_Array_Access is access all HardwareInterface_Access_Array;
   function getComponent (This : in out HardwareInterface; index : Integer) return HardwareComponentInterface_Access is abstract;
   function toString (This : in out HardwareInterface) return Unbounded_String is abstract;
   function compareTo (This : in out HardwareInterface; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return Boolean is abstract;
   function difference (This : in out HardwareInterface; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return ABHashtable_Access is abstract;

end org.allbinary.logic.system.hardware.HardwareInterface_Package;


