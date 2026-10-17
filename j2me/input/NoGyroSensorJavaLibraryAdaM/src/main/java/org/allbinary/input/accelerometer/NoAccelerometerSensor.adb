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


package body org.allbinary.input.accelerometer.NoAccelerometerSensor_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getOrientation (This : in out NoAccelerometerSensor) return Orientation_Access is
   begin
        return Orientation_Package.NONE;
   end getOrientation;

   procedure onSensorChange (This : in out NoAccelerometerSensor) is
   begin
        null;
   end onSensorChange;

   procedure getOrientation (This : in out NoAccelerometerSensor) is
      Java_Result : constant Orientation_Access := NoAccelerometerSensor'Class (This).getOrientation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrientation;

end org.allbinary.input.accelerometer.NoAccelerometerSensor_Package;


