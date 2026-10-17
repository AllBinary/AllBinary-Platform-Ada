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
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package; use org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
with org.allbinary.game.score.HighScoreCommands_Package; use org.allbinary.game.score.HighScoreCommands_Package;

package org.allbinary.game.score.HighScoreCommandsFactory_Package is


   type HighScoreCommandsFactory is tagged;
   type HighScoreCommandsFactory_Access is access all HighScoreCommandsFactory'Class;
   type HighScoreCommandsFactory_Access_Array is array (Natural range <>) of HighScoreCommandsFactory_Access;
   type HighScoreCommandsFactory_Access_Array_Access is access all HighScoreCommandsFactory_Access_Array;

   type HighScoreCommandsFactory is new HighScoreCommandsBaseFactory with null record;
   instance : HighScoreCommandsFactory_Access;

   procedure Initialize (This : in out HighScoreCommandsFactory'Class);
   function Create return HighScoreCommandsFactory_Access;
   function getInstance return HighScoreCommandsFactory_Access;

end org.allbinary.game.score.HighScoreCommandsFactory_Package;


