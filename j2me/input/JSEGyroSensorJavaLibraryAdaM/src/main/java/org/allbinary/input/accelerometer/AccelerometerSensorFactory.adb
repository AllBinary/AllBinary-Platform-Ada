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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package; use org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package; use org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;
with org.allbinary.input.accelerometer.NoAccelerometerSensor_Package; use org.allbinary.input.accelerometer.NoAccelerometerSensor_Package;

package body org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package SensorFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
   subtype AllBinaryOrientationSensor_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   subtype AllBinaryOrientationSensor_Access_Array is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access_Array) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   subtype AllBinaryOrientationSensor_Access_Array_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   subtype AllBinaryOrientationSensor_Access_Array_Access_Array is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   subtype AllBinaryOrientationSensor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryOrientationSensor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References."=";
   procedure Initialize_Fields (This : in out AccelerometerSensorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AccelerometerSensorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AccelerometerSensorFactory_Access is
      This : constant AccelerometerSensorFactory_Access := new AccelerometerSensorFactory;
   begin
      AccelerometerSensorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init is
      features : Features_Access;
      sensorFeatureFactory : SensorFeatureFactory_Access;
   begin
        features := Features_Package.getInstance;
        sensorFeatureFactory := SensorFeatureFactory_Package.getInstance;
        if features.isFeature (sensorFeatureFactory.ORIENTATION_SENSORS) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Orientation Sensors")));
        elsif features.isFeature (sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Simulation Sensors")));
        elsif features.isFeature (sensorFeatureFactory.NO_ORIENTATION) then
            AccelerometerSensorFactory_Package.allBinaryAccelerometerSensor := NoAccelerometerSensor_Package.Create;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Such SensorFeature")));
        end if;
   end init;

   function getInstance return AllBinaryOrientationSensor_Access is
   begin
        return AllBinaryOrientationSensor_Access (AccelerometerSensorFactory_Package.allBinaryAccelerometerSensor);
   end getInstance;

begin
   null;
   allBinaryAccelerometerSensor := null;

end org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package;


