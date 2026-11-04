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

limited with org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package;
package org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References is
   type HardwareFactoryInterface_Access is access all org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package.HardwareFactoryInterface'Class;
   type HardwareFactoryInterface_Access_Array is array (Natural range <>) of HardwareFactoryInterface_Access;
   type HardwareFactoryInterface_Access_Array_Access is access all HardwareFactoryInterface_Access_Array;
   type HardwareFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of HardwareFactoryInterface_Access_Array_Access;
   type HardwareFactoryInterface_Access_Array_Access_Array_Access is access all HardwareFactoryInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References;

with org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type HardwareFactoryInterface is interface;
   subtype HardwareFactoryInterface_Access is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access;
   function "=" (Left, Right : HardwareFactoryInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   subtype HardwareFactoryInterface_Access_Array is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access_Array;
   function "=" (Left, Right : HardwareFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   subtype HardwareFactoryInterface_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : HardwareFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   subtype HardwareFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HardwareFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   subtype HardwareFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardwareFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   function Java_Object_Access_From_HardwareFactoryInterface (Value : HardwareFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package;


