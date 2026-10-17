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


package body org.allbinary.game.state.RaceGameStateFactory_Package is

   procedure Initialize_Fields (This : in out RaceGameStateFactory'Class) is
   begin
      null;
      This.START_GAME_STATE := GameStateFactory_Package.getInstance.createGameState (To_Unbounded_String ("START_GAME_STATE"));
      This.YELLOW_LIGHT_GAME_STATE := GameStateFactory_Package.getInstance.createGameState (To_Unbounded_String ("YELLOW_LIGHT_GAME_STATE"));
      This.RED_LIGHT_GAME_STATE := GameStateFactory_Package.getInstance.createGameState (To_Unbounded_String ("RED_LIGHT_GAME_STATE"));
   end Initialize_Fields;

   procedure Initialize (This : in out RaceGameStateFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RaceGameStateFactory_Access is
      This : constant RaceGameStateFactory_Access := new RaceGameStateFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return RaceGameStateFactory_Access is
   begin
        if (RaceGameStateFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            RaceGameStateFactory_Package.instance := RaceGameStateFactory_Package.Create;
        end if;
        return RaceGameStateFactory_Access (RaceGameStateFactory_Package.instance);
   end getInstance;

   procedure getInstance is
      Java_Result : constant RaceGameStateFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.state.RaceGameStateFactory_Package;


