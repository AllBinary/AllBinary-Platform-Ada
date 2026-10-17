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


package body org.allbinary.input.gyro.SensorGameUpdateProcessor_Package is

   procedure Initialize_Fields (This : in out SensorGameUpdateProcessor'Class) is
   begin
      null;
      This.inputSensor := NoAllBinarySensor_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out SensorGameUpdateProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SensorGameUpdateProcessor_Access is
      This : constant SensorGameUpdateProcessor_Access := new SensorGameUpdateProcessor;
   begin
      SensorGameUpdateProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setInputSensor (This : in out SensorGameUpdateProcessor; inputSensor_Param : access AllBinarySensor_Package.AllBinarySensor'Class) is
      inputSensor : constant AllBinarySensor_Access := AllBinarySensor_Access (inputSensor_Param);
   begin
        This.inputSensor := inputSensor;
   end setInputSensor;

   function getInputSensor (This : in out SensorGameUpdateProcessor) return AllBinarySensor_Access is
   begin
        return This.inputSensor;
   end getInputSensor;

   --  throws Exception
   procedure process (This : in out SensorGameUpdateProcessor; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end process;

   --  throws Exception
   procedure sendNotifications (This : in out SensorGameUpdateProcessor; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end sendNotifications;

   function isAnySensor (This : in out SensorGameUpdateProcessor) return Boolean is
   begin
        if (This.inputSensor) = (NoAllBinarySensor_Package.getInstance) then
            return False;
        else
            return True;
        end if;
   end isAnySensor;

   procedure setNoSensors (This : in out SensorGameUpdateProcessor) is
   begin
        This.setInputSensor (NoAllBinarySensor_Package.getInstance);
   end setNoSensors;

end org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;


