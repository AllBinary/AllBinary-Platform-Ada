-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package is

   procedure Initialize_Fields (This : in out GamePersistanceStrings'Class) is
   begin
      null;
      This.SAVED_GAME_RECORD_ID := To_Unbounded_String ("_SG");
      This.SAVED_GAME_CONFIGURATION_RECORD_ID := To_Unbounded_String ("_SGC");
      This.DEFAULT_INPUT_MAPPING_RECORD_ID := To_Unbounded_String ("_DIM");
      This.SAVED_INPUT_CONFIGURATION_RECORD_ID := To_Unbounded_String ("_SIC");
   end Initialize_Fields;

   procedure Initialize (This : in out GamePersistanceStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GamePersistanceStrings_Access is
      This : constant GamePersistanceStrings_Access := new GamePersistanceStrings;
   begin
      GamePersistanceStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GamePersistanceStrings_Access is
   begin
        return GamePersistanceStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := GamePersistanceStrings_Package.Create;

end org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;


