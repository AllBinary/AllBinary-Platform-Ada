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


package body org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package is

   procedure Initialize_Fields (This : in out GyroSensorUpdateProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GyroSensorUpdateProcessor'Class) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return GyroSensorUpdateProcessor_Access is
      This : constant GyroSensorUpdateProcessor_Access := new GyroSensorUpdateProcessor;
   begin
      GyroSensorUpdateProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure process (This : in out GyroSensorUpdateProcessor) is
   begin
        null;
   end process;

end org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package;


