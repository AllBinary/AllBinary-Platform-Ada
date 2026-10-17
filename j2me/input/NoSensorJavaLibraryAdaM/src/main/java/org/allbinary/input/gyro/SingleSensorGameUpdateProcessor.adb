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


package body org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package is

   procedure Initialize_Fields (This : in out SingleSensorGameUpdateProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SingleSensorGameUpdateProcessor'Class) is
   begin
      SensorGameUpdateProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return SingleSensorGameUpdateProcessor_Access is
      This : constant SingleSensorGameUpdateProcessor_Access := new SingleSensorGameUpdateProcessor;
   begin
      SingleSensorGameUpdateProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure process (This : in out SingleSensorGameUpdateProcessor; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end process;

   --  throws Exception
   procedure sendNotifications (This : in out SingleSensorGameUpdateProcessor; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end sendNotifications;

end org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package;


