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


package body org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package is

   procedure Initialize_Fields (This : in out GameConfigurationPersistanceSingleton'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameConfigurationPersistanceSingleton_Access is
   begin
        return GameConfigurationPersistanceSingleton_Package.GAME_PERSISTANCE;
   end getInstance;

   procedure Initialize (This : in out GameConfigurationPersistanceSingleton'Class) is
   begin
        KeyValuePersistance_Package.Initialize (This, GamePersistanceStrings_Package.getInstance.SAVED_GAME_CONFIGURATION_RECORD_ID);
   end Initialize;

   function Create return GameConfigurationPersistanceSingleton_Access is
      This : constant GameConfigurationPersistanceSingleton_Access := new GameConfigurationPersistanceSingleton;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant GameConfigurationPersistanceSingleton_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   GAME_PERSISTANCE := GameConfigurationPersistanceSingleton_Package.Create;

end org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package;


