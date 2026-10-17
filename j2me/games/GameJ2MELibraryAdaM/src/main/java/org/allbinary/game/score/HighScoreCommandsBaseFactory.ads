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
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.game.score.HighScoreCommandsBaseFactory_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type HighScoreCommandsBaseFactory is tagged;
   type HighScoreCommandsBaseFactory_Access is access all HighScoreCommandsBaseFactory'Class;
   type HighScoreCommandsBaseFactory_Access_Array is array (Natural range <>) of HighScoreCommandsBaseFactory_Access;
   type HighScoreCommandsBaseFactory_Access_Array_Access is access all HighScoreCommandsBaseFactory_Access_Array;

   type HighScoreCommandsBaseFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      HIGH_SCORE_COMMANDS : Command_Access_Array_Access;
   end record;

   procedure Initialize (This : in out HighScoreCommandsBaseFactory'Class; HIGH_SCORE_COMMANDS : Command_Access_Array_Access);
   function Create (HIGH_SCORE_COMMANDS : Command_Access_Array_Access) return HighScoreCommandsBaseFactory_Access;
   function isHighScoreCommand (This : in out HighScoreCommandsBaseFactory; command_Param : access Command'Class) return Boolean;
   procedure isHighScoreCommand (This : in out HighScoreCommandsBaseFactory; command_Param : access Command'Class);
   function getIndex (This : in out HighScoreCommandsBaseFactory; command_Param : access Command'Class) return Integer;
   procedure getIndex (This : in out HighScoreCommandsBaseFactory; command_Param : access Command'Class);

end org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;


