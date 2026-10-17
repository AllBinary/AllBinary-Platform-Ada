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

package org.allbinary.game.GameStrings_Package is


   type GameStrings is tagged;
   type GameStrings_Access is access all GameStrings'Class;
   type GameStrings_Access_Array is array (Natural range <>) of GameStrings_Access;
   type GameStrings_Access_Array_Access is access all GameStrings_Access_Array;

   type GameStrings is new Java_Object with record
      PROCESS_TICK : Unbounded_String;
      ON_GAME_INITIALIZED : Unbounded_String;
      UPDATESURFACE : Unbounded_String;
      ON_SET_DISPLAYABLE : Unbounded_String;
      UNPAUSE : Unbounded_String;
      TOGGLE_MENU : Unbounded_String;
      SET_GAME_OVER : Unbounded_String;
      GAME_STATE : Unbounded_String;
      SET_GAME_STATE : Unbounded_String;
      STOP_GAME_CANVAS_RUNNABLE_INTERFACE : Unbounded_String;
   end record;
   instance : GameStrings_Access;

   procedure Initialize (This : in out GameStrings'Class);
   function Create return GameStrings_Access;
   function getInstance return GameStrings_Access;

end org.allbinary.game.GameStrings_Package;


