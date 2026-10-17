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


package body org.allbinary.game.configuration.feature.SensorFeatureFactory_Package is

   procedure Initialize_Fields (This : in out SensorFeatureFactory'Class) is
   begin
      null;
      This.NO_ORIENTATION := SensorFeature_Package.Create (To_Unbounded_String ("No Orientation"));
      This.ORIENTATION_SENSORS := SensorFeature_Package.Create (To_Unbounded_String ("Orientation Sensors"));
      This.SIMULATED_ORIENTATION_SENSORS := SensorFeature_Package.Create (To_Unbounded_String ("Simulated Orientation Sensors"));
      This.YAW := SensorFeature_Package.Create (To_Unbounded_String ("Yaw"));
      This.YAW_MINUS_RIGHT_PLUS_LEFT := SensorFeature_Package.Create (To_Unbounded_String ("Yaw -Right +Left"));
      This.YAW_MINUS_LEFT_PLUS_RIGHT := SensorFeature_Package.Create (To_Unbounded_String ("Yaw -Left +Right "));
      This.PITCH := SensorFeature_Package.Create (To_Unbounded_String ("Pitch"));
      This.ROLL := SensorFeature_Package.Create (To_Unbounded_String ("Roll"));
   end Initialize_Fields;


   function getInstance return SensorFeatureFactory_Access is
   begin
        return SensorFeatureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SensorFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SensorFeatureFactory_Access is
      This : constant SensorFeatureFactory_Access := new SensorFeatureFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant SensorFeatureFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := SensorFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;


