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



package body org.allbinary.input.gyro.NoGyroSensor_Package is

   procedure Initialize_Fields (This : in out NoGyroSensor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoGyroSensor'Class) is
   begin
      AllBinaryOrientationSensor_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, NoGyroSensor_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create return NoGyroSensor_Access is
      This : constant NoGyroSensor_Access := new NoGyroSensor;
   begin
      NoGyroSensor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getOrientation (This : in out NoGyroSensor) return Orientation_Access is
   begin
        return Orientation_Package.NONE;
   end getOrientation;

   procedure onSensorChange (This : in out NoGyroSensor) is
   begin
        null;
   end onSensorChange;

end org.allbinary.input.gyro.NoGyroSensor_Package;


