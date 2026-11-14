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
limited with org.allbinary.input.gyro.OrientationToGameKeyEvent_Package;
package org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References is
   type OrientationToGameKeyEvent_Access is access all org.allbinary.input.gyro.OrientationToGameKeyEvent_Package.OrientationToGameKeyEvent'Class;
   type OrientationToGameKeyEvent_Access_Array is array (Natural range <>) of OrientationToGameKeyEvent_Access;
   type OrientationToGameKeyEvent_Access_Array_Access is access all OrientationToGameKeyEvent_Access_Array;
   type OrientationToGameKeyEvent_Access_Array_Access_Array is array (Natural range <>) of OrientationToGameKeyEvent_Access_Array_Access;
   type OrientationToGameKeyEvent_Access_Array_Access_Array_Access is access all OrientationToGameKeyEvent_Access_Array_Access_Array;
   type OrientationToGameKeyEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrientationToGameKeyEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : OrientationToGameKeyEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrientationToGameKeyEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrientationToGameKeyEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrientationToGameKeyEvent_Access_Array_Access is (if Value /= null and then Value.all in OrientationToGameKeyEvent_Access_Array_Object'Class then OrientationToGameKeyEvent_Access_Array_Object'Class (Value.all).Value else null);
   type OrientationToGameKeyEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrientationToGameKeyEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrientationToGameKeyEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrientationToGameKeyEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrientationToGameKeyEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrientationToGameKeyEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrientationToGameKeyEvent_Access_Array_Access_Array_Object'Class then OrientationToGameKeyEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References;

with org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.Orientation_Package;
with org.allbinary.logic.math.Orientation_Package_References;
limited with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;
with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References;

package org.allbinary.input.gyro.OrientationToGameKeyEvent_Package is

   package Orientation_Package renames Standard.org.allbinary.logic.math.Orientation_Package;
   package Reference_Types is
   subtype Orientation_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access;
   use type Orientation_Access;
   subtype Orientation_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array;
   use type Orientation_Access_Array;
   subtype Orientation_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access;
   use type Orientation_Access_Array_Access;
   subtype Orientation_Access_Array_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array;
   use type Orientation_Access_Array_Access_Array;
   subtype Orientation_Access_Array_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array_Access;
   use type Orientation_Access_Array_Access_Array_Access;
   subtype AllBinaryOrientationSensor_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access;
   use type AllBinaryOrientationSensor_Access;
   subtype AllBinaryOrientationSensor_Access_Array is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array;
   use type AllBinaryOrientationSensor_Access_Array;
   subtype AllBinaryOrientationSensor_Access_Array_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access;
   use type AllBinaryOrientationSensor_Access_Array_Access;
   subtype AllBinaryOrientationSensor_Access_Array_Access_Array is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access_Array;
   use type AllBinaryOrientationSensor_Access_Array_Access_Array;
   subtype AllBinaryOrientationSensor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access_Array_Access;
   use type AllBinaryOrientationSensor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OrientationToGameKeyEvent_Access is org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.OrientationToGameKeyEvent_Access;
   function "=" (Left, Right : OrientationToGameKeyEvent_Access) return Boolean renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References."=";
   subtype OrientationToGameKeyEvent_Access_Array is org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.OrientationToGameKeyEvent_Access_Array;
   function "=" (Left, Right : OrientationToGameKeyEvent_Access_Array) return Boolean renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References."=";
   subtype OrientationToGameKeyEvent_Access_Array_Access is org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.OrientationToGameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : OrientationToGameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References."=";
   function Java_Box (Value : OrientationToGameKeyEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.Java_Box;
   function Java_Unbox_OrientationToGameKeyEvent_Access_Array (Value : access Java_Object'Class) return OrientationToGameKeyEvent_Access_Array_Access renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.Java_Unbox_OrientationToGameKeyEvent_Access_Array;
   subtype OrientationToGameKeyEvent_Access_Array_Access_Array is org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.OrientationToGameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : OrientationToGameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References."=";
   subtype OrientationToGameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.OrientationToGameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrientationToGameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References."=";
   function Java_Box (Value : OrientationToGameKeyEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.Java_Box;
   function Java_Unbox_OrientationToGameKeyEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return OrientationToGameKeyEvent_Access_Array_Access_Array_Access renames org.allbinary.input.gyro.OrientationToGameKeyEvent_Package_References.Java_Unbox_OrientationToGameKeyEvent_Access_Array_Access_Array;

   type OrientationToGameKeyEvent is new Java_Object with record
      allBinaryGyroSensor : AllBinaryOrientationSensor_Access;
      MIN : Integer;
   end record;

   procedure Initialize (This : in out OrientationToGameKeyEvent'Class);
   function Create return OrientationToGameKeyEvent_Access;
   procedure setAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent; allBinaryGyroSensor_Param : access AllBinaryOrientationSensor_Package.AllBinaryOrientationSensor'Class);
   function getAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent) return AllBinaryOrientationSensor_Access;
   procedure process (This : in out OrientationToGameKeyEvent);
   procedure updateGameKeyEvents (This : in out OrientationToGameKeyEvent; orientation_Param : access Orientation_Package.Orientation'Class; yaw : Integer; pitch : Integer; roll : Integer);

end org.allbinary.input.gyro.OrientationToGameKeyEvent_Package;


