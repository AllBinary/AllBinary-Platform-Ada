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
limited with org.allbinary.input.AllBinarySensorManager_Package;
package org.allbinary.input.AllBinarySensorManager_Package_References is
   type AllBinarySensorManager_Access is access all org.allbinary.input.AllBinarySensorManager_Package.AllBinarySensorManager'Class;
   type AllBinarySensorManager_Access_Array is array (Natural range <>) of AllBinarySensorManager_Access;
   type AllBinarySensorManager_Access_Array_Access is access all AllBinarySensorManager_Access_Array;
   type AllBinarySensorManager_Access_Array_Access_Array is array (Natural range <>) of AllBinarySensorManager_Access_Array_Access;
   type AllBinarySensorManager_Access_Array_Access_Array_Access is access all AllBinarySensorManager_Access_Array_Access_Array;
   type AllBinarySensorManager_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinarySensorManager_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinarySensorManager_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinarySensorManager_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinarySensorManager_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinarySensorManager_Access_Array_Access is (if Value /= null and then Value.all in AllBinarySensorManager_Access_Array_Object'Class then AllBinarySensorManager_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinarySensorManager_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinarySensorManager_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinarySensorManager_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinarySensorManager_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinarySensorManager_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinarySensorManager_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinarySensorManager_Access_Array_Access_Array_Object'Class then AllBinarySensorManager_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.AllBinarySensorManager_Package_References;

with org.allbinary.input.AllBinarySensorManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.input.AllBinarySensorManager_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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


   subtype AllBinarySensorManager_Access is org.allbinary.input.AllBinarySensorManager_Package_References.AllBinarySensorManager_Access;
   function "=" (Left, Right : AllBinarySensorManager_Access) return Boolean renames org.allbinary.input.AllBinarySensorManager_Package_References."=";
   subtype AllBinarySensorManager_Access_Array is org.allbinary.input.AllBinarySensorManager_Package_References.AllBinarySensorManager_Access_Array;
   function "=" (Left, Right : AllBinarySensorManager_Access_Array) return Boolean renames org.allbinary.input.AllBinarySensorManager_Package_References."=";
   subtype AllBinarySensorManager_Access_Array_Access is org.allbinary.input.AllBinarySensorManager_Package_References.AllBinarySensorManager_Access_Array_Access;
   function "=" (Left, Right : AllBinarySensorManager_Access_Array_Access) return Boolean renames org.allbinary.input.AllBinarySensorManager_Package_References."=";
   function Java_Box (Value : AllBinarySensorManager_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.AllBinarySensorManager_Package_References.Java_Box;
   function Java_Unbox_AllBinarySensorManager_Access_Array (Value : access Java_Object'Class) return AllBinarySensorManager_Access_Array_Access renames org.allbinary.input.AllBinarySensorManager_Package_References.Java_Unbox_AllBinarySensorManager_Access_Array;
   subtype AllBinarySensorManager_Access_Array_Access_Array is org.allbinary.input.AllBinarySensorManager_Package_References.AllBinarySensorManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinarySensorManager_Access_Array_Access_Array) return Boolean renames org.allbinary.input.AllBinarySensorManager_Package_References."=";
   subtype AllBinarySensorManager_Access_Array_Access_Array_Access is org.allbinary.input.AllBinarySensorManager_Package_References.AllBinarySensorManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinarySensorManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.AllBinarySensorManager_Package_References."=";
   function Java_Box (Value : AllBinarySensorManager_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.AllBinarySensorManager_Package_References.Java_Box;
   function Java_Unbox_AllBinarySensorManager_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinarySensorManager_Access_Array_Access_Array_Access renames org.allbinary.input.AllBinarySensorManager_Package_References.Java_Unbox_AllBinarySensorManager_Access_Array_Access_Array;

   type AllBinarySensorManager is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      ORIENTATION_SENSOR_INPUT : Unbounded_String;
      ORIENTATION_TYPE : Unbounded_String;
      list : BasicArrayList_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out AllBinarySensorManager'Class);
   function Create return AllBinarySensorManager_Access;
   function getInstance return AllBinarySensorManager_Access;
   procedure init (This : in out AllBinarySensorManager);
   function getSensorNamesList (This : in out AllBinarySensorManager) return BasicArrayList_Access;
   procedure shutdown (This : in out AllBinarySensorManager);

end org.allbinary.input.AllBinarySensorManager_Package;


