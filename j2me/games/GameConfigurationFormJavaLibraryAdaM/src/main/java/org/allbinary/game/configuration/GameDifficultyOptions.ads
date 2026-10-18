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
with javax.microedition.lcdui.Choice_Package; use javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package; use javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package; use org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.logic.MEUtil_Package; use org.allbinary.logic.MEUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.configuration.GameDifficultyOptions_Package is

   package Choice_Package renames Standard.javax.microedition.lcdui.Choice_Package;
   package ChoiceGroup_Package renames Standard.javax.microedition.lcdui.ChoiceGroup_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameDifficultyFactory_Package renames Standard.org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GameDifficultyOptions is tagged;
   type GameDifficultyOptions_Access is access all GameDifficultyOptions'Class;
   type GameDifficultyOptions_Access_Array is array (Natural range <>) of GameDifficultyOptions_Access;
   type GameDifficultyOptions_Access_Array_Access is access all GameDifficultyOptions_Access_Array;

   type GameDifficultyOptions is new CommandForm with record
      meUtil : MEUtil_Access;
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out GameDifficultyOptions'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return GameDifficultyOptions_Access;
   procedure open (This : in out GameDifficultyOptions);
   procedure close (This : in out GameDifficultyOptions);
   procedure save (This : in out GameDifficultyOptions);
   procedure initCommands (This : in out GameDifficultyOptions; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure update (This : in out GameDifficultyOptions);
   procedure add (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer);
   function getChoiceGroup (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) return ChoiceGroup_Access;
   procedure getChoiceGroup (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer);
   procedure setSelectedId (This : in out GameDifficultyOptions; id : Integer);
   function getSelectedId (This : in out GameDifficultyOptions) return Integer;
   function getSelectedText (This : in out GameDifficultyOptions) return Integer;

end org.allbinary.game.configuration.GameDifficultyOptions_Package;


