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
limited with org.allbinary.logic.system.hardware.HardwareInterface_Package;
package org.allbinary.logic.system.hardware.HardwareInterface_Package_References is
   type HardwareInterface_Access is access all org.allbinary.logic.system.hardware.HardwareInterface_Package.HardwareInterface'Class;
   type HardwareInterface_Access_Array is array (Natural range <>) of HardwareInterface_Access;
   type HardwareInterface_Access_Array_Access is access all HardwareInterface_Access_Array;
   type HardwareInterface_Access_Array_Access_Array is array (Natural range <>) of HardwareInterface_Access_Array_Access;
   type HardwareInterface_Access_Array_Access_Array_Access is access all HardwareInterface_Access_Array_Access_Array;
   type HardwareInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HardwareInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : HardwareInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HardwareInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HardwareInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HardwareInterface_Access_Array_Access is (if Value /= null and then Value.all in HardwareInterface_Access_Array_Object'Class then HardwareInterface_Access_Array_Object'Class (Value.all).Value else null);
   type HardwareInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HardwareInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HardwareInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HardwareInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HardwareInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HardwareInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HardwareInterface_Access_Array_Access_Array_Object'Class then HardwareInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.HardwareInterface_Package_References;

with org.allbinary.logic.system.hardware.HardwareInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.logic.system.hardware.HardwareInterface_Package is

   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype HardwareComponentInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access;
   use type HardwareComponentInterface_Access;
   subtype HardwareComponentInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array;
   use type HardwareComponentInterface_Access_Array;
   subtype HardwareComponentInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access;
   use type HardwareComponentInterface_Access_Array_Access;
   subtype HardwareComponentInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access_Array;
   use type HardwareComponentInterface_Access_Array_Access_Array;
   subtype HardwareComponentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access_Array_Access;
   use type HardwareComponentInterface_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type HardwareInterface is interface;
   subtype HardwareInterface_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access;
   function "=" (Left, Right : HardwareInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   subtype HardwareInterface_Access_Array is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array;
   function "=" (Left, Right : HardwareInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   subtype HardwareInterface_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access;
   function "=" (Left, Right : HardwareInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   function Java_Box (Value : HardwareInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References.Java_Box;
   function Java_Unbox_HardwareInterface_Access_Array (Value : access Java_Object'Class) return HardwareInterface_Access_Array_Access renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References.Java_Unbox_HardwareInterface_Access_Array;
   subtype HardwareInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HardwareInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   subtype HardwareInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardwareInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   function Java_Box (Value : HardwareInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References.Java_Box;
   function Java_Unbox_HardwareInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return HardwareInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References.Java_Unbox_HardwareInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_HardwareInterface (Value : HardwareInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getComponent (This : in out HardwareInterface; index : Integer) return HardwareComponentInterface_Access is abstract;
   procedure getComponent (This : in out HardwareInterface; index : Integer) is abstract;
   function toString (This : in out HardwareInterface) return Unbounded_String is abstract;
   function compareTo (This : in out HardwareInterface; hardwareInterface_Var_Param : access HardwareInterface_Package.HardwareInterface'Class) return Boolean is abstract;
   procedure compareTo (This : in out HardwareInterface; hardwareInterface_Var_Param : access HardwareInterface_Package.HardwareInterface'Class) is abstract;
   function difference (This : in out HardwareInterface; hardwareInterface_Var_Param : access HardwareInterface_Package.HardwareInterface'Class) return ABHashtable_Access is abstract;
   procedure difference (This : in out HardwareInterface; hardwareInterface_Var_Param : access HardwareInterface_Package.HardwareInterface'Class) is abstract;

end org.allbinary.logic.system.hardware.HardwareInterface_Package;


