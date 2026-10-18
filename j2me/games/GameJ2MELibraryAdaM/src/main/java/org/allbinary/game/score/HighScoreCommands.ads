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

package org.allbinary.game.score.HighScoreCommands_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;

   type HighScoreCommands is tagged;
   type HighScoreCommands_Access is access all HighScoreCommands'Class;
   type HighScoreCommands_Access_Array is array (Natural range <>) of HighScoreCommands_Access;
   type HighScoreCommands_Access_Array_Access is access all HighScoreCommands_Access_Array;
   type HighScoreCommands_Access_Array_Access_Array is array (Natural range <>) of HighScoreCommands_Access_Array_Access;
   type HighScoreCommands_Access_Array_Access_Array_Access is access all HighScoreCommands_Access_Array_Access_Array;

   type HighScoreCommands is new Java_Object with record
      DISPLAY : Command_Access;
      PERSONAL : Command_Access;
      WORLD : Command_Access;
   end record;
   instance : HighScoreCommands_Access;

   procedure Initialize (This : in out HighScoreCommands'Class);
   function Create return HighScoreCommands_Access;
   function getInstance return HighScoreCommands_Access;

end org.allbinary.game.score.HighScoreCommands_Package;


