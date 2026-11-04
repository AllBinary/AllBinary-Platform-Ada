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

limited with org.allbinary.logic.system.hardware.components.linux.PCI_Package;
package org.allbinary.logic.system.hardware.components.linux.PCI_Package_References is
   type PCI_Access is access all org.allbinary.logic.system.hardware.components.linux.PCI_Package.PCI'Class;
   type PCI_Access_Array is array (Natural range <>) of PCI_Access;
   type PCI_Access_Array_Access is access all PCI_Access_Array;
   type PCI_Access_Array_Access_Array is array (Natural range <>) of PCI_Access_Array_Access;
   type PCI_Access_Array_Access_Array_Access is access all PCI_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.components.linux.PCI_Package_References;

with org.allbinary.logic.system.hardware.components.linux.PCI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.PCI_Package is

   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package VideoInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PCI_Access is org.allbinary.logic.system.hardware.components.linux.PCI_Package_References.PCI_Access;
   function "=" (Left, Right : PCI_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.PCI_Package_References."=";
   subtype PCI_Access_Array is org.allbinary.logic.system.hardware.components.linux.PCI_Package_References.PCI_Access_Array;
   function "=" (Left, Right : PCI_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.PCI_Package_References."=";
   subtype PCI_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.PCI_Package_References.PCI_Access_Array_Access;
   function "=" (Left, Right : PCI_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.PCI_Package_References."=";
   subtype PCI_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.linux.PCI_Package_References.PCI_Access_Array_Access_Array;
   function "=" (Left, Right : PCI_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.PCI_Package_References."=";
   subtype PCI_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.PCI_Package_References.PCI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PCI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.PCI_Package_References."=";

   type PCI is new Java_Object and HardwareComponentInterface and VideoInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out PCI'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return PCI_Access;
   function compareTo (This : in out PCI; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out PCI; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out PCI) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.PCI_Package;


