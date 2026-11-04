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

limited with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
package org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References is
   type HighScoreCommandsBaseFactory_Access is access all org.allbinary.game.score.HighScoreCommandsBaseFactory_Package.HighScoreCommandsBaseFactory'Class;
   type HighScoreCommandsBaseFactory_Access_Array is array (Natural range <>) of HighScoreCommandsBaseFactory_Access;
   type HighScoreCommandsBaseFactory_Access_Array_Access is access all HighScoreCommandsBaseFactory_Access_Array;
   type HighScoreCommandsBaseFactory_Access_Array_Access_Array is array (Natural range <>) of HighScoreCommandsBaseFactory_Access_Array_Access;
   type HighScoreCommandsBaseFactory_Access_Array_Access_Array_Access is access all HighScoreCommandsBaseFactory_Access_Array_Access_Array;
end org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References;

with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.score.HighScoreCommandsBaseFactory_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HighScoreCommandsBaseFactory_Access is org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References.HighScoreCommandsBaseFactory_Access;
   function "=" (Left, Right : HighScoreCommandsBaseFactory_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References."=";
   subtype HighScoreCommandsBaseFactory_Access_Array is org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References.HighScoreCommandsBaseFactory_Access_Array;
   function "=" (Left, Right : HighScoreCommandsBaseFactory_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References."=";
   subtype HighScoreCommandsBaseFactory_Access_Array_Access is org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References.HighScoreCommandsBaseFactory_Access_Array_Access;
   function "=" (Left, Right : HighScoreCommandsBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References."=";
   subtype HighScoreCommandsBaseFactory_Access_Array_Access_Array is org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References.HighScoreCommandsBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoreCommandsBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References."=";
   subtype HighScoreCommandsBaseFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References.HighScoreCommandsBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoreCommandsBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoreCommandsBaseFactory_Package_References."=";

   type HighScoreCommandsBaseFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      HIGH_SCORE_COMMANDS : Command_Access_Array_Access;
   end record;

   procedure Initialize (This : in out HighScoreCommandsBaseFactory'Class; HIGH_SCORE_COMMANDS : Command_Access_Array_Access);
   function Create (HIGH_SCORE_COMMANDS : Command_Access_Array_Access) return HighScoreCommandsBaseFactory_Access;
   function isHighScoreCommand (This : in out HighScoreCommandsBaseFactory; command_Param : access Command_Package.Command'Class) return Boolean;
   procedure isHighScoreCommand (This : in out HighScoreCommandsBaseFactory; command_Param : access Command_Package.Command'Class);
   function getIndex (This : in out HighScoreCommandsBaseFactory; command_Param : access Command_Package.Command'Class) return Integer;
   procedure getIndex (This : in out HighScoreCommandsBaseFactory; command_Param : access Command_Package.Command'Class);

end org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;


