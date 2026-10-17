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


package body org.allbinary.game.configuration.GameSpeed_Package is

   procedure Initialize_Fields (This : in out GameSpeed'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameSpeed'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameSpeed_Access is
      This : constant GameSpeed_Access := new GameSpeed;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getSpeed (This : in out GameSpeed) return Integer is
      speedGameConfiguration : GameConfiguration_Access;
   begin
        speedGameConfiguration := GameConfigurationCentral_Package.getInstance.SPEED;
        return (((speedGameConfiguration.getMaxValue.intValue) - (speedGameConfiguration.getValue.intValue)) + (1));
   end getSpeed;

   function getDelay (This : in out GameSpeed) return Integer is
      speedGameConfiguration : GameConfiguration_Access;
   begin
        speedGameConfiguration := GameConfigurationCentral_Package.getInstance.SPEED;
        return (19) * (((speedGameConfiguration.getMaxValue.intValue) - (speedGameConfiguration.getValue.intValue)));
   end getDelay;

   function getInstance return GameSpeed_Access is
   begin
        return GameSpeed_Package.instance;
   end getInstance;

   procedure getSpeed (This : in out GameSpeed) is
      Java_Result : constant Integer := GameSpeed'Class (This).getSpeed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSpeed;

   procedure getDelay (This : in out GameSpeed) is
      Java_Result : constant Integer := GameSpeed'Class (This).getDelay;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDelay;

   procedure getInstance is
      Java_Result : constant GameSpeed_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := GameSpeed_Package.Create;

end org.allbinary.game.configuration.GameSpeed_Package;


