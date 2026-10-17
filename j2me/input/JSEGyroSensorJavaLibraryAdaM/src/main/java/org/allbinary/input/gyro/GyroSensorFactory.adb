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


package body org.allbinary.input.gyro.GyroSensorFactory_Package is

   procedure Initialize_Fields (This : in out GyroSensorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GyroSensorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GyroSensorFactory_Access is
      This : constant GyroSensorFactory_Access := new GyroSensorFactory;
   begin
      GyroSensorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init is
   begin
        GyroSensorFactory_Package.allBinaryGyroSensor := NoGyroSensor_Package.Create;
   end init;

   function getInstance return AllBinaryOrientationSensor_Access is
   begin
        return GyroSensorFactory_Package.allBinaryGyroSensor;
   end getInstance;

begin
   null;
   allBinaryGyroSensor := null;

end org.allbinary.input.gyro.GyroSensorFactory_Package;


