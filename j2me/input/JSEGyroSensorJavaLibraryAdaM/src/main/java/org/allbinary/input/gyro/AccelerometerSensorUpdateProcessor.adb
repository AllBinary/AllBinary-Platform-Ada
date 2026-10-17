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


package body org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package is

   procedure Initialize_Fields (This : in out AccelerometerSensorUpdateProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AccelerometerSensorUpdateProcessor'Class) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AccelerometerSensorUpdateProcessor_Access is
      This : constant AccelerometerSensorUpdateProcessor_Access := new AccelerometerSensorUpdateProcessor;
   begin
      AccelerometerSensorUpdateProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure process (This : in out AccelerometerSensorUpdateProcessor) is
      sensorFeatureFactory : SensorFeatureFactory_Access;
   begin
        sensorFeatureFactory := SensorFeatureFactory_Package.getInstance;
        if Features_Package.getInstance.isFeature (sensorFeatureFactory.ORIENTATION_SENSORS) then
            AccelerometerSensorFactory_Package.getInstance.setCompleteMotionGestureInputEventListener (SingleKeyPressGameKeyFromMotionGestureEventListener_Package.Create);
        elsif Features_Package.getInstance.isFeature (sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS) then
            AccelerometerSensorFactory_Package.getInstance.setCompleteMotionGestureInputEventListener (SingleKeyPressGameKeyFromMotionGestureEventListener_Package.Create);
        elsif Features_Package.getInstance.isFeature (sensorFeatureFactory.NO_ORIENTATION) then
            AccelerometerSensorFactory_Package.getInstance.setCompleteMotionGestureInputEventListener (NoCompleteMotionGestureInputEventListener_Package.getInstance);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Sensor Feature Not Set")));
        end if;
   end process;

end org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package;


