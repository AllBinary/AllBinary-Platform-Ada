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
limited with org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package;
package org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References is
   type NoMagneticFieldSensor_Access is access all org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package.NoMagneticFieldSensor'Class;
   type NoMagneticFieldSensor_Access_Array is array (Natural range <>) of NoMagneticFieldSensor_Access;
   type NoMagneticFieldSensor_Access_Array_Access is access all NoMagneticFieldSensor_Access_Array;
   type NoMagneticFieldSensor_Access_Array_Access_Array is array (Natural range <>) of NoMagneticFieldSensor_Access_Array_Access;
   type NoMagneticFieldSensor_Access_Array_Access_Array_Access is access all NoMagneticFieldSensor_Access_Array_Access_Array;
   type NoMagneticFieldSensor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoMagneticFieldSensor_Access_Array_Access;
   end record;
   function Java_Box (Value : NoMagneticFieldSensor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoMagneticFieldSensor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoMagneticFieldSensor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoMagneticFieldSensor_Access_Array_Access is (if Value /= null and then Value.all in NoMagneticFieldSensor_Access_Array_Object'Class then NoMagneticFieldSensor_Access_Array_Object'Class (Value.all).Value else null);
   type NoMagneticFieldSensor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoMagneticFieldSensor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoMagneticFieldSensor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoMagneticFieldSensor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoMagneticFieldSensor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoMagneticFieldSensor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoMagneticFieldSensor_Access_Array_Access_Array_Object'Class then NoMagneticFieldSensor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References;

with org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.AllBinarySensorListener_Package; use org.allbinary.input.AllBinarySensorListener_Package;
limited with org.allbinary.logic.math.Orientation_Package;
with org.allbinary.logic.math.Orientation_Package_References;
with org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package; use org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package;

package org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package is

   package AllBinarySensorListener_Package renames Standard.org.allbinary.input.AllBinarySensorListener_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype NoMagneticFieldSensor_Access is org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.NoMagneticFieldSensor_Access;
   function "=" (Left, Right : NoMagneticFieldSensor_Access) return Boolean renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References."=";
   subtype NoMagneticFieldSensor_Access_Array is org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.NoMagneticFieldSensor_Access_Array;
   function "=" (Left, Right : NoMagneticFieldSensor_Access_Array) return Boolean renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References."=";
   subtype NoMagneticFieldSensor_Access_Array_Access is org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.NoMagneticFieldSensor_Access_Array_Access;
   function "=" (Left, Right : NoMagneticFieldSensor_Access_Array_Access) return Boolean renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References."=";
   function Java_Box (Value : NoMagneticFieldSensor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.Java_Box;
   function Java_Unbox_NoMagneticFieldSensor_Access_Array (Value : access Java_Object'Class) return NoMagneticFieldSensor_Access_Array_Access renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.Java_Unbox_NoMagneticFieldSensor_Access_Array;
   subtype NoMagneticFieldSensor_Access_Array_Access_Array is org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.NoMagneticFieldSensor_Access_Array_Access_Array;
   function "=" (Left, Right : NoMagneticFieldSensor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References."=";
   subtype NoMagneticFieldSensor_Access_Array_Access_Array_Access is org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.NoMagneticFieldSensor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoMagneticFieldSensor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References."=";
   function Java_Box (Value : NoMagneticFieldSensor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.Java_Box;
   function Java_Unbox_NoMagneticFieldSensor_Access_Array_Access_Array (Value : access Java_Object'Class) return NoMagneticFieldSensor_Access_Array_Access_Array_Access renames org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package_References.Java_Unbox_NoMagneticFieldSensor_Access_Array_Access_Array;

   type NoMagneticFieldSensor is new AllBinaryMagneticFieldSensor and AllBinarySensorListener with null record;

   procedure Initialize (This : in out NoMagneticFieldSensor'Class);
   function Create return NoMagneticFieldSensor_Access;
   function getOrientation (This : in out NoMagneticFieldSensor) return Orientation_Access;
   procedure onSensorChange (This : in out NoMagneticFieldSensor);

end org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package;


