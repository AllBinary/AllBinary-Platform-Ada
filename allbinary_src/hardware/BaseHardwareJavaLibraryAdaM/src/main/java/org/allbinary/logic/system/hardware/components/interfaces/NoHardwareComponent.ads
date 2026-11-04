-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package;
package org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References is
   type NoHardwareComponent_Access is access all org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package.NoHardwareComponent'Class;
   type NoHardwareComponent_Access_Array is array (Natural range <>) of NoHardwareComponent_Access;
   type NoHardwareComponent_Access_Array_Access is access all NoHardwareComponent_Access_Array;
   type NoHardwareComponent_Access_Array_Access_Array is array (Natural range <>) of NoHardwareComponent_Access_Array_Access;
   type NoHardwareComponent_Access_Array_Access_Array_Access is access all NoHardwareComponent_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References;

with org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

package org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NoHardwareComponent_Access is org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References.NoHardwareComponent_Access;
   function "=" (Left, Right : NoHardwareComponent_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References."=";
   subtype NoHardwareComponent_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References.NoHardwareComponent_Access_Array;
   function "=" (Left, Right : NoHardwareComponent_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References."=";
   subtype NoHardwareComponent_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References.NoHardwareComponent_Access_Array_Access;
   function "=" (Left, Right : NoHardwareComponent_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References."=";
   subtype NoHardwareComponent_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References.NoHardwareComponent_Access_Array_Access_Array;
   function "=" (Left, Right : NoHardwareComponent_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References."=";
   subtype NoHardwareComponent_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References.NoHardwareComponent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoHardwareComponent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package_References."=";

   type NoHardwareComponent is new Java_Object and HardwareComponentInterface with null record;
   instance : NoHardwareComponent_Access;

   procedure Initialize (This : in out NoHardwareComponent'Class);
   function Create return NoHardwareComponent_Access;
   function getInstance return NoHardwareComponent_Access;
   function compareTo (This : in out NoHardwareComponent; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out NoHardwareComponent; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out NoHardwareComponent) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package;


