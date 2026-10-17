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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.game.state.RaceGameStateFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type RaceGameStateFactory is tagged;
   type RaceGameStateFactory_Access is access all RaceGameStateFactory'Class;
   type RaceGameStateFactory_Access_Array is array (Natural range <>) of RaceGameStateFactory_Access;
   type RaceGameStateFactory_Access_Array_Access is access all RaceGameStateFactory_Access_Array;

   type RaceGameStateFactory is new Java_Object with record
      START_GAME_STATE : GameState_Access;
      YELLOW_LIGHT_GAME_STATE : GameState_Access;
      RED_LIGHT_GAME_STATE : GameState_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out RaceGameStateFactory'Class);
   function Create return RaceGameStateFactory_Access;
   function getInstance return RaceGameStateFactory_Access;
   procedure getInstance;

end org.allbinary.game.state.RaceGameStateFactory_Package;


