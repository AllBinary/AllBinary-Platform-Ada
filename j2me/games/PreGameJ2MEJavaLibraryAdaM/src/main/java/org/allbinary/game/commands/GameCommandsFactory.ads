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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;

package org.allbinary.game.commands.GameCommandsFactory_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;

   type GameCommandsFactory is tagged;
   type GameCommandsFactory_Access is access all GameCommandsFactory'Class;
   type GameCommandsFactory_Access_Array is array (Natural range <>) of GameCommandsFactory_Access;
   type GameCommandsFactory_Access_Array_Access is access all GameCommandsFactory_Access_Array;
   type GameCommandsFactory_Access_Array_Access_Array is array (Natural range <>) of GameCommandsFactory_Access_Array_Access;
   type GameCommandsFactory_Access_Array_Access_Array_Access is access all GameCommandsFactory_Access_Array_Access_Array;

   type GameCommandsFactory is new Java_Object with record
      TOGGLE_FULLSCREEN : Command_Access;
      TOGGLE_KEYBOARD : Command_Access;
      SET_MENU_DISPLAYABLE : Command_Access;
      APPLICATION_UPDATE : Command_Access;
      DISPLAY_ABOUT : Command_Access;
      OPEN_WEB_URL : Command_Access;
      CLOSE_OPTIONS : Command_Access;
      DISPLAY_OPTIONS : Command_Access;
      START_TRACE : Command_Access;
      STOP_TRACE : Command_Access;
      DEFAULT_OPTIONS : Command_Access;
      SHOW_GAME_CANVAS : Command_Access;
      CLOSE_AND_SHOW_GAME_CANVAS : Command_Access;
      QUIT_COMMAND : Command_Access;
      RESTART_COMMAND : Command_Access;
      DISPLAY_SAVE_FORM : Command_Access;
      SAVE : Command_Access;
      DISPLAY_LOAD_FORM : Command_Access;
      LOAD_FILE : Command_Access;
      DELETE_FILE : Command_Access;
      EXIT_COMMAND : Command_Access;
      EXIT_WITHOUT_PROGRESS_COMMAND : Command_Access;
      START_COMMAND : Command_Access;
      CONTINUE_COMMAND : Command_Access;
      SELECT_COMMAND : Command_Access;
      FEATURE_UPDATE : Command_Access;
      BUY_COMMAND : Command_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameCommandsFactory'Class);
   function Create return GameCommandsFactory_Access;
   function getInstance return GameCommandsFactory_Access;

end org.allbinary.game.commands.GameCommandsFactory_Package;


