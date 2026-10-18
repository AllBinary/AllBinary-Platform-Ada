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
with org.allbinary.input.gyro.NoGyroSensor_Package; use org.allbinary.input.gyro.NoGyroSensor_Package;

package body org.allbinary.input.gyro.OrientationToGameKeyEvent_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package SensorFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
   procedure Initialize_Fields (This : in out OrientationToGameKeyEvent'Class) is
   begin
      null;
      This.allBinaryGyroSensor := null;
      This.MIN := 15;
   end Initialize_Fields;


   procedure Initialize (This : in out OrientationToGameKeyEvent'Class) is
   begin
      Initialize_Fields (This);
        if Features_Package.getInstance.isFeature (SensorFeatureFactory_Package.getInstance.NO_ORIENTATION) then
            This.allBinaryGyroSensor := AllBinaryOrientationSensor_Access (NoGyroSensor_Package.Create);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Such Feature")));
        end if;
   end Initialize;

   function Create return OrientationToGameKeyEvent_Access is
      This : constant OrientationToGameKeyEvent_Access := new OrientationToGameKeyEvent;
   begin
      OrientationToGameKeyEvent_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent; allBinaryGyroSensor_Param : access AllBinaryOrientationSensor_Package.AllBinaryOrientationSensor'Class) is
      allBinaryGyroSensor : constant AllBinaryOrientationSensor_Access := AllBinaryOrientationSensor_Access (allBinaryGyroSensor_Param);
   begin
        This.allBinaryGyroSensor := allBinaryGyroSensor;
   end setAllBinaryGyroSensor;

   function getAllBinaryGyroSensor (This : in out OrientationToGameKeyEvent) return AllBinaryOrientationSensor_Access is
   begin
        return This.allBinaryGyroSensor;
   end getAllBinaryGyroSensor;

   --  throws Exception
   procedure process (This : in out OrientationToGameKeyEvent) is
   begin
        null;
   end process;

   --  throws Exception
   procedure updateGameKeyEvents (This : in out OrientationToGameKeyEvent; orientation_Param : access Orientation_Package.Orientation'Class; yaw : Integer; pitch : Integer; roll : Integer) is
      orientation : constant Orientation_Access := Orientation_Access (orientation_Param);
   begin
        null;
   end updateGameKeyEvents;

end org.allbinary.input.gyro.OrientationToGameKeyEvent_Package;


