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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;

package body org.allbinary.game.state.RaceGameStateFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   function "=" (Left, Right : GameState_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   function "=" (Left, Right : GameState_Access_Array) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   function "=" (Left, Right : GameState_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   function "=" (Left, Right : GameState_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
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
      RaceGameStateFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RaceGameStateFactory_Access is
   begin
        if (RaceGameStateFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            RaceGameStateFactory_Package.instance := RaceGameStateFactory_Package.Create;
        end if;
        return RaceGameStateFactory_Access (RaceGameStateFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.state.RaceGameStateFactory_Package;


