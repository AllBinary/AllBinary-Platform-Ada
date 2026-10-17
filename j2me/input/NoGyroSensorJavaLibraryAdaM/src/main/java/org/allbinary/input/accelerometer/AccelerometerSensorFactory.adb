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


package body org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package is

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
      Initialize (This.all);
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
        return AccelerometerSensorFactory_Package.allBinaryAccelerometerSensor;
   end getInstance;

   procedure getInstance is
      Java_Result : constant AllBinaryOrientationSensor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   allBinaryAccelerometerSensor := AllBinaryOrientationSensor_Package.NULL_ALLBINARY_ORIENTATION_SENSOR;

end org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package;


