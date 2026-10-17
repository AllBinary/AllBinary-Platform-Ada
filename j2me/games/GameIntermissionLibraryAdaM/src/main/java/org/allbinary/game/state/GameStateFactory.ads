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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.game.state.GameStateFactory_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type GameStateFactory is tagged;
   type GameStateFactory_Access is access all GameStateFactory'Class;
   type GameStateFactory_Access_Array is array (Natural range <>) of GameStateFactory_Access;
   type GameStateFactory_Access_Array_Access is access all GameStateFactory_Access_Array;

   type GameStateFactory is new Java_Object with record
      index : Integer;
      NO_GAME_STATE : GameState_Access;
      PLAYING_GAME_STATE : GameState_Access;
      SHOW_END_RESULT_GAME_STATE : GameState_Access;
      SHOW_HIGH_SCORE_GAME_STATE : GameState_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameStateFactory'Class);
   function Create return GameStateFactory_Access;
   function getInstance return GameStateFactory_Access;
   procedure getInstance;
   function createGameState (This : in out GameStateFactory; name : Unbounded_String) return GameState_Access;
   procedure createGameState (This : in out GameStateFactory; name : Unbounded_String);

end org.allbinary.game.state.GameStateFactory_Package;


