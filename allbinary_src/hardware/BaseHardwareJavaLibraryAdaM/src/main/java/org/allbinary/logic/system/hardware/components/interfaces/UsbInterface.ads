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

limited with org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package;
package org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References is
   type UsbInterface_Access is access all org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package.UsbInterface'Class;
   type UsbInterface_Access_Array is array (Natural range <>) of UsbInterface_Access;
   type UsbInterface_Access_Array_Access is access all UsbInterface_Access_Array;
   type UsbInterface_Access_Array_Access_Array is array (Natural range <>) of UsbInterface_Access_Array_Access;
   type UsbInterface_Access_Array_Access_Array_Access is access all UsbInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References;

with org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type UsbInterface is interface;
   subtype UsbInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access;
   function "=" (Left, Right : UsbInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype UsbInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access_Array;
   function "=" (Left, Right : UsbInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype UsbInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access_Array_Access;
   function "=" (Left, Right : UsbInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype UsbInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UsbInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype UsbInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UsbInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   function Java_Object_Access_From_UsbInterface (Value : UsbInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package;


