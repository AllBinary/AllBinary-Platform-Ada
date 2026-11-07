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


with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package; use org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
with org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package; use org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;
with org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package; use org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;
with org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package; use org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.configuration.feature.SensorFeature_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package SensorFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
   package NoCompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;
   package SingleKeyPressGameKeyFromMotionGestureEventListener_Package renames Standard.org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;
   package AccelerometerSensorFactory_Package renames Standard.org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package;
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


