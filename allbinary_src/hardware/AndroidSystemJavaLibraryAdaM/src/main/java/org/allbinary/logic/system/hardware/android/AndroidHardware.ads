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
limited with org.allbinary.logic.system.hardware.android.AndroidHardware_Package;
package org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References is
   type AndroidHardware_Access is access all org.allbinary.logic.system.hardware.android.AndroidHardware_Package.AndroidHardware'Class;
   type AndroidHardware_Access_Array is array (Natural range <>) of AndroidHardware_Access;
   type AndroidHardware_Access_Array_Access is access all AndroidHardware_Access_Array;
   type AndroidHardware_Access_Array_Access_Array is array (Natural range <>) of AndroidHardware_Access_Array_Access;
   type AndroidHardware_Access_Array_Access_Array_Access is access all AndroidHardware_Access_Array_Access_Array;
   type AndroidHardware_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidHardware_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidHardware_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidHardware_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidHardware_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidHardware_Access_Array_Access is (if Value /= null and then Value.all in AndroidHardware_Access_Array_Object'Class then AndroidHardware_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidHardware_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidHardware_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidHardware_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidHardware_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidHardware_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidHardware_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidHardware_Access_Array_Access_Array_Object'Class then AndroidHardware_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References;

with org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.LineNumberReader_Package; use java.io.LineNumberReader_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
limited with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.system.hardware.android.AndroidHardware_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package HardwareInterface_Package renames Standard.org.allbinary.logic.system.hardware.HardwareInterface_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidHardware_Access is org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.AndroidHardware_Access;
   function "=" (Left, Right : AndroidHardware_Access) return Boolean renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References."=";
   subtype AndroidHardware_Access_Array is org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.AndroidHardware_Access_Array;
   function "=" (Left, Right : AndroidHardware_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References."=";
   subtype AndroidHardware_Access_Array_Access is org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.AndroidHardware_Access_Array_Access;
   function "=" (Left, Right : AndroidHardware_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References."=";
   function Java_Box (Value : AndroidHardware_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.Java_Box;
   function Java_Unbox_AndroidHardware_Access_Array (Value : access Java_Object'Class) return AndroidHardware_Access_Array_Access renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.Java_Unbox_AndroidHardware_Access_Array;
   subtype AndroidHardware_Access_Array_Access_Array is org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.AndroidHardware_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidHardware_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References."=";
   subtype AndroidHardware_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.AndroidHardware_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidHardware_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References."=";
   function Java_Box (Value : AndroidHardware_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.Java_Box;
   function Java_Unbox_AndroidHardware_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidHardware_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.android.AndroidHardware_Package_References.Java_Unbox_AndroidHardware_Access_Array_Access_Array;

   type AndroidHardware is new Java_Object and HardwareInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      componentInterfaceVector : BasicArrayList_Access;
      PROC_BUS_INPUT_DIRECTORY : Unbounded_String;
      DEVICES : Unbounded_String;
      MINHARDWARE : Integer;
   end record;

   procedure Initialize (This : in out AndroidHardware'Class);
   function Create return AndroidHardware_Access;
   procedure init (This : in out AndroidHardware; filePath : Unbounded_String);
   function get (This : in out AndroidHardware; filePath : Unbounded_String) return LineNumberReader_Access;
   procedure get (This : in out AndroidHardware; filePath : Unbounded_String);
   function getComponent (This : in out AndroidHardware; index : Integer) return HardwareComponentInterface_Access;
   procedure getComponent (This : in out AndroidHardware; index : Integer);
   function toString (This : in out AndroidHardware) return Unbounded_String;
   function compareTo (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return Boolean;
   procedure compareTo (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class);
   function difference (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return ABHashtable_Access;
   procedure difference (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class);

end org.allbinary.logic.system.hardware.android.AndroidHardware_Package;


