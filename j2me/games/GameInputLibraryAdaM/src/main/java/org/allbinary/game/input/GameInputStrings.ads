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

package org.allbinary.game.input.GameInputStrings_Package is


   type GameInputStrings is tagged;
   type GameInputStrings_Access is access all GameInputStrings'Class;
   type GameInputStrings_Access_Array is array (Natural range <>) of GameInputStrings_Access;
   type GameInputStrings_Access_Array_Access is access all GameInputStrings_Access_Array;

   type GameInputStrings is new Java_Object with record
      PROCESS_INPUT : Unbounded_String;
      KEY_PRESSED : Unbounded_String;
      KEY_RELEASED : Unbounded_String;
      KEY_REPEATED : Unbounded_String;
      ON_PRESS_GAME_KEY : Unbounded_String;
      ON_DOWN_GAME_KEY : Unbounded_String;
      ON_UP_GAME_KEY : Unbounded_String;
      NO_KEY : Unbounded_String;
      ADD_KEY_EVENT : Unbounded_String;
      REMOVE_KEY_EVENT : Unbounded_String;
      STRAFE_LEFT : Unbounded_String;
      STRAFE_RIGHT : Unbounded_String;
      PROCESS_MOTION_INPUT : Unbounded_String;
      UDPATE_CURRENT_TOUCH_INPUT_FACTORY : Unbounded_String;
      ENABLE_PLAYER_GAME_INPUTS : Unbounded_String;
      ENABLE_PLAYER_GAME_INPUT : Unbounded_String;
   end record;
   instance : GameInputStrings_Access;

   procedure Initialize (This : in out GameInputStrings'Class);
   function Create return GameInputStrings_Access;
   function getInstance return GameInputStrings_Access;
   procedure getInstance;

end org.allbinary.game.input.GameInputStrings_Package;


