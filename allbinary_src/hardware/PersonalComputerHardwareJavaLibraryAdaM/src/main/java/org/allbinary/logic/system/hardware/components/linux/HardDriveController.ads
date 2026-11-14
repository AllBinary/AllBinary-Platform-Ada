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

with AllBinary_Java;
limited with org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package;
package org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References is
   type HardDriveController_Access is access all org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package.HardDriveController'Class;
   type HardDriveController_Access_Array is array (Natural range <>) of HardDriveController_Access;
   type HardDriveController_Access_Array_Access is access all HardDriveController_Access_Array;
   type HardDriveController_Access_Array_Access_Array is array (Natural range <>) of HardDriveController_Access_Array_Access;
   type HardDriveController_Access_Array_Access_Array_Access is access all HardDriveController_Access_Array_Access_Array;
   type HardDriveController_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HardDriveController_Access_Array_Access;
   end record;
   function Java_Box (Value : HardDriveController_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HardDriveController_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HardDriveController_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HardDriveController_Access_Array_Access is (if Value /= null and then Value.all in HardDriveController_Access_Array_Object'Class then HardDriveController_Access_Array_Object'Class (Value.all).Value else null);
   type HardDriveController_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HardDriveController_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HardDriveController_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HardDriveController_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HardDriveController_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HardDriveController_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HardDriveController_Access_Array_Access_Array_Object'Class then HardDriveController_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References;

with org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References;
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
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HardDriveController_Access is org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.HardDriveController_Access;
   function "=" (Left, Right : HardDriveController_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References."=";
   subtype HardDriveController_Access_Array is org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.HardDriveController_Access_Array;
   function "=" (Left, Right : HardDriveController_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References."=";
   subtype HardDriveController_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.HardDriveController_Access_Array_Access;
   function "=" (Left, Right : HardDriveController_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References."=";
   function Java_Box (Value : HardDriveController_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.Java_Box;
   function Java_Unbox_HardDriveController_Access_Array (Value : access Java_Object'Class) return HardDriveController_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.Java_Unbox_HardDriveController_Access_Array;
   subtype HardDriveController_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.HardDriveController_Access_Array_Access_Array;
   function "=" (Left, Right : HardDriveController_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References."=";
   subtype HardDriveController_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.HardDriveController_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardDriveController_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References."=";
   function Java_Box (Value : HardDriveController_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.Java_Box;
   function Java_Unbox_HardDriveController_Access_Array_Access_Array (Value : access Java_Object'Class) return HardDriveController_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package_References.Java_Unbox_HardDriveController_Access_Array_Access_Array;

   type HardDriveController is new Java_Object and HardwareComponentInterface and HardDriveControllerInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out HardDriveController'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return HardDriveController_Access;
   function compareTo (This : in out HardDriveController; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out HardDriveController; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out HardDriveController) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.HardDriveController_Package;


