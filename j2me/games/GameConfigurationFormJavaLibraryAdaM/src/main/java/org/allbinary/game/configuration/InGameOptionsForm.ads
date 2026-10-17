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
--  with javax.microedition.lcdui.Choice_Package; use javax.microedition.lcdui.Choice_Package;
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package; use org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
with org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.game.configuration.InGameOptionsForm_Package is

   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameFeatureFormUtil_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
   package InGameFeatureChoiceGroups_Package renames Standard.org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type InGameOptionsForm is tagged;
   type InGameOptionsForm_Access is access all InGameOptionsForm'Class;
   type InGameOptionsForm_Access_Array is array (Natural range <>) of InGameOptionsForm_Access;
   type InGameOptionsForm_Access_Array_Access is access all InGameOptionsForm_Access_Array;

   type InGameOptionsForm is new CommandForm with null record;
   DISPLAY : Command_Access;
   SAVE : Command_Access;
   DEFAULT : Command_Access;

   procedure Initialize (This : in out InGameOptionsForm'Class; commandListener_Param : access CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class);
   function Create (commandListener_Param : access CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return InGameOptionsForm_Access;
   procedure initCommands (This : in out InGameOptionsForm; cmdListener_Param : access CommandListener'Class);

end org.allbinary.game.configuration.InGameOptionsForm_Package;


