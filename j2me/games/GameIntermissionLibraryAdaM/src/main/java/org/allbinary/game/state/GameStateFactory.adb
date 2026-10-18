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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.game.state.GameStateFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out GameStateFactory'Class) is
   begin
      null;
      This.index := 0;
      This.NO_GAME_STATE := GameStateFactory'Class (This).createGameState (To_Unbounded_String ("NO_GAME_STATE"));
      This.PLAYING_GAME_STATE := GameStateFactory'Class (This).createGameState (To_Unbounded_String ("PLAYING_GAME_STATE"));
      This.SHOW_END_RESULT_GAME_STATE := GameStateFactory'Class (This).createGameState (To_Unbounded_String ("SHOW_END_RESULT_GAME_STATE"));
      This.SHOW_HIGH_SCORE_GAME_STATE := GameStateFactory'Class (This).createGameState (To_Unbounded_String ("SHOW_HIGH_SCORE_GAME_STATE"));
   end Initialize_Fields;


   function getInstance return GameStateFactory_Access is
   begin
        if (GameStateFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameStateFactory_Package.instance := GameStateFactory_Package.Create;
        end if;
        return GameStateFactory_Access (GameStateFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameStateFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameStateFactory_Access is
      This : constant GameStateFactory_Access := new GameStateFactory;
   begin
      GameStateFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function createGameState (This : in out GameStateFactory; name : Unbounded_String) return GameState_Access is
   begin
        return GameState_Package.Create (name, Java_Post_Increment (This.index));
   end createGameState;

   procedure createGameState (This : in out GameStateFactory; name : Unbounded_String) is
      Java_Result : constant GameState_Access := GameStateFactory'Class (This).createGameState (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createGameState;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.state.GameStateFactory_Package;


