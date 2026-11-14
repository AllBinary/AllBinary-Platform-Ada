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
limited with org.allbinary.input.AllBinarySensor_Package;
package org.allbinary.input.AllBinarySensor_Package_References is
   type AllBinarySensor_Access is access all org.allbinary.input.AllBinarySensor_Package.AllBinarySensor'Class;
   type AllBinarySensor_Access_Array is array (Natural range <>) of AllBinarySensor_Access;
   type AllBinarySensor_Access_Array_Access is access all AllBinarySensor_Access_Array;
   type AllBinarySensor_Access_Array_Access_Array is array (Natural range <>) of AllBinarySensor_Access_Array_Access;
   type AllBinarySensor_Access_Array_Access_Array_Access is access all AllBinarySensor_Access_Array_Access_Array;
   type AllBinarySensor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinarySensor_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinarySensor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinarySensor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinarySensor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinarySensor_Access_Array_Access is (if Value /= null and then Value.all in AllBinarySensor_Access_Array_Object'Class then AllBinarySensor_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinarySensor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinarySensor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinarySensor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinarySensor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinarySensor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinarySensor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinarySensor_Access_Array_Access_Array_Object'Class then AllBinarySensor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.AllBinarySensor_Package_References;

with org.allbinary.input.AllBinarySensor_Package_References;
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
with org.allbinary.input.AllBinarySensorListener_Package; use org.allbinary.input.AllBinarySensorListener_Package;

package org.allbinary.input.AllBinarySensor_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AllBinarySensor_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access;
   function "=" (Left, Right : AllBinarySensor_Access) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   subtype AllBinarySensor_Access_Array is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array;
   function "=" (Left, Right : AllBinarySensor_Access_Array) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   subtype AllBinarySensor_Access_Array_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access;
   function "=" (Left, Right : AllBinarySensor_Access_Array_Access) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   function Java_Box (Value : AllBinarySensor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.AllBinarySensor_Package_References.Java_Box;
   function Java_Unbox_AllBinarySensor_Access_Array (Value : access Java_Object'Class) return AllBinarySensor_Access_Array_Access renames org.allbinary.input.AllBinarySensor_Package_References.Java_Unbox_AllBinarySensor_Access_Array;
   subtype AllBinarySensor_Access_Array_Access_Array is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinarySensor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   subtype AllBinarySensor_Access_Array_Access_Array_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinarySensor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   function Java_Box (Value : AllBinarySensor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.AllBinarySensor_Package_References.Java_Box;
   function Java_Unbox_AllBinarySensor_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinarySensor_Access_Array_Access_Array_Access renames org.allbinary.input.AllBinarySensor_Package_References.Java_Unbox_AllBinarySensor_Access_Array_Access_Array;

   type AllBinarySensor is new Java_Object and AllBinarySensorListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   NULL_ALLBINARY_SENSOR : AllBinarySensor_Access;
   max : Integer;

   procedure Initialize (This : in out AllBinarySensor'Class);
   function Create return AllBinarySensor_Access;
   procedure init (This : in out AllBinarySensor);
   procedure update (This : in out AllBinarySensor);
   procedure setMax (max : Integer);
   function getMax return Integer;
   function getId (This : in out AllBinarySensor) return Integer;
   procedure shutdown (This : in out AllBinarySensor);
   procedure onSensorChange (This : in out AllBinarySensor);

end org.allbinary.input.AllBinarySensor_Package;


