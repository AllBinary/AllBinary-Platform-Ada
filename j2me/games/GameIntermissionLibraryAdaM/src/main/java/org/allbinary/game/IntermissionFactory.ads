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
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;

package org.allbinary.game.IntermissionFactory_Package is

   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;

   type IntermissionFactory is tagged;
   type IntermissionFactory_Access is access all IntermissionFactory'Class;
   type IntermissionFactory_Access_Array is array (Natural range <>) of IntermissionFactory_Access;
   type IntermissionFactory_Access_Array_Access is access all IntermissionFactory_Access_Array;

   type IntermissionFactory is new Java_Object with record
      START_LEVEL_INTERMISSION_GAME_STATE : GameState_Access;
      WAIT_LEVEL_INTERMISSION_GAME_STATE : GameState_Access;
      SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE : GameState_Access;
      SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE : GameState_Access;
   end record;
   instance : IntermissionFactory_Access;

   procedure Initialize (This : in out IntermissionFactory'Class);
   function Create return IntermissionFactory_Access;
   function getInstance return IntermissionFactory_Access;
   procedure getInstance;

end org.allbinary.game.IntermissionFactory_Package;


