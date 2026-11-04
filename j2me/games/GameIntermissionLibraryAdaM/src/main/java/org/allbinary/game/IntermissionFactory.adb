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


with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;

package body org.allbinary.game.IntermissionFactory_Package is

   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
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
   procedure Initialize_Fields (This : in out IntermissionFactory'Class) is
   begin
      null;
      This.START_LEVEL_INTERMISSION_GAME_STATE := GameStateFactory_Package.getInstance.createGameState (To_Unbounded_String ("START_LEVEL_INTERMISSION_GAME_STATE"));
      This.WAIT_LEVEL_INTERMISSION_GAME_STATE := GameStateFactory_Package.getInstance.createGameState (To_Unbounded_String ("WAIT_LEVEL_INTERMISSION_GAME_STATE"));
      This.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE := GameStateFactory_Package.getInstance.createGameState (To_Unbounded_String ("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE"));
      This.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE := GameStateFactory_Package.getInstance.createGameState (To_Unbounded_String ("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE"));
   end Initialize_Fields;

   procedure Initialize (This : in out IntermissionFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return IntermissionFactory_Access is
      This : constant IntermissionFactory_Access := new IntermissionFactory;
   begin
      IntermissionFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return IntermissionFactory_Access is
   begin
        return IntermissionFactory_Access (IntermissionFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := IntermissionFactory_Package.Create;

end org.allbinary.game.IntermissionFactory_Package;


