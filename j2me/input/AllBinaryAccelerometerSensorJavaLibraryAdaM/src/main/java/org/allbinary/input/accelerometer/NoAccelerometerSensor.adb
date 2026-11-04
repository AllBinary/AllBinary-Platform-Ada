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


with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package; use org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;
with org.allbinary.logic.math.Orientation_Package; use org.allbinary.logic.math.Orientation_Package;

package body org.allbinary.input.accelerometer.NoAccelerometerSensor_Package is

   subtype Orientation_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access;
   function "=" (Left, Right : Orientation_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array;
   function "=" (Left, Right : Orientation_Access_Array) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access;
   function "=" (Left, Right : Orientation_Access_Array_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array;
   function "=" (Left, Right : Orientation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Orientation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   procedure Initialize_Fields (This : in out NoAccelerometerSensor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoAccelerometerSensor'Class) is
   begin
      AllBinaryOrientationSensor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoAccelerometerSensor_Access is
      This : constant NoAccelerometerSensor_Access := new NoAccelerometerSensor;
   begin
      NoAccelerometerSensor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getOrientation (This : in out NoAccelerometerSensor) return Orientation_Access is
   begin
        return Orientation_Access (Orientation_Package.NONE);
   end getOrientation;

   procedure onSensorChange (This : in out NoAccelerometerSensor) is
   begin
        null;
   end onSensorChange;

end org.allbinary.input.accelerometer.NoAccelerometerSensor_Package;


