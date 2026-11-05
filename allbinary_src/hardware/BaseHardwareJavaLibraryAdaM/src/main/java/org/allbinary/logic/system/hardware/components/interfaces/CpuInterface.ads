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

limited with org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
package org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References is
   type CpuInterface_Access is access all org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package.CpuInterface'Class;
   type CpuInterface_Access_Array is array (Natural range <>) of CpuInterface_Access;
   type CpuInterface_Access_Array_Access is access all CpuInterface_Access_Array;
   type CpuInterface_Access_Array_Access_Array is array (Natural range <>) of CpuInterface_Access_Array_Access;
   type CpuInterface_Access_Array_Access_Array_Access is access all CpuInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References;

with org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type CpuInterface is interface;
   subtype CpuInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access;
   function "=" (Left, Right : CpuInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype CpuInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access_Array;
   function "=" (Left, Right : CpuInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype CpuInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access_Array_Access;
   function "=" (Left, Right : CpuInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype CpuInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CpuInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype CpuInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CpuInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   function Java_Object_Access_From_CpuInterface (Value : CpuInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getProcessor (This : in out CpuInterface) return Unbounded_String is abstract;
   function getVendorId (This : in out CpuInterface) return Unbounded_String is abstract;
   function getCpuFamily (This : in out CpuInterface) return Unbounded_String is abstract;
   function getModel (This : in out CpuInterface) return Unbounded_String is abstract;
   function getModelName (This : in out CpuInterface) return Unbounded_String is abstract;
   function getStepping (This : in out CpuInterface) return Unbounded_String is abstract;
   function getCpuSpeed (This : in out CpuInterface) return Unbounded_String is abstract;
   function getCacheSize (This : in out CpuInterface) return Unbounded_String is abstract;
   function compareTo (This : in out CpuInterface; cpuInterface_Var_Param : access CpuInterface_Package.CpuInterface'Class) return Boolean is abstract;
   procedure compareTo (This : in out CpuInterface; cpuInterface_Var_Param : access CpuInterface_Package.CpuInterface'Class) is abstract;

end org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;


