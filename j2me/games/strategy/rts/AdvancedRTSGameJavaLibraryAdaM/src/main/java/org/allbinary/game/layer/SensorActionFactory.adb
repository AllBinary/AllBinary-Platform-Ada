-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.SensorActionFactory_Package is

   procedure Initialize_Fields (This : in out SensorActionFactory'Class) is
   begin
      null;
      This.ATTACK := SensorAction_Package.Create (To_Unbounded_String ("Attack"));
      This.EVADE := SensorAction_Package.Create (To_Unbounded_String ("Evade"));
   end Initialize_Fields;


   function getInstance return SensorActionFactory_Access is
   begin
        return SensorActionFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SensorActionFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SensorActionFactory_Access is
      This : constant SensorActionFactory_Access := new SensorActionFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant SensorActionFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := SensorActionFactory_Package.Create;

end org.allbinary.game.layer.SensorActionFactory_Package;


