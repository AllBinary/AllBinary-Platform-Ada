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
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.mapping.InputMappingInterface_Package; use org.allbinary.game.input.mapping.InputMappingInterface_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillPaintableFactory_Package; use org.allbinary.game.paint.ColorFillPaintableFactory_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package; use org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.paint.help.InputMappingHelpPaintable_Package; use org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;

package org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package is

   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package InputMappingInterface_Package renames Standard.org.allbinary.game.input.mapping.InputMappingInterface_Package;
   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ColorFillBasePaintable_Package renames Standard.org.allbinary.game.paint.ColorFillBasePaintable_Package;
   package ColorFillPaintableFactory_Package renames Standard.org.allbinary.game.paint.ColorFillPaintableFactory_Package;
   package HelpPaintable_Package renames Standard.org.allbinary.game.paint.help.HelpPaintable_Package;
   package InputMappingHelpPaintable_Package renames Standard.org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type GameInputMappingCanvas is tagged;
   type GameInputMappingCanvas_Access is access all GameInputMappingCanvas'Class;
   type GameInputMappingCanvas_Access_Array is array (Natural range <>) of GameInputMappingCanvas_Access;
   type GameInputMappingCanvas_Access_Array_Access is access all GameInputMappingCanvas_Access_Array;

   type GameInputMappingCanvas is new GameCommandCanvas and InputMappingInterface with record
      paintable : ProcessPaintable_Access;
      helpPaintable : InputMappingHelpPaintable_Access;
      colorFillPaintable : ColorFillBasePaintable_Access;
      inputMapping : PersistentInputMapping_Access;
      NONE : GameKey_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      selectedGameKey : GameKey_Access;
      selectedInput : Input_Access;
      inputFactory : InputFactory_Access;
   end record;
   NAME : Unbounded_String;
   DISPLAY : Command_Access;
   DEFAULT : Command_Access;

   procedure Initialize (This : in out GameInputMappingCanvas'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; commandListener_Param : access CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class; helpPaintable_Param : access HelpPaintable'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface'Class; commandListener_Param : access CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class; helpPaintable_Param : access HelpPaintable'Class) return GameInputMappingCanvas_Access;
   procedure close (This : in out GameInputMappingCanvas);
   procedure initCommands (This : in out GameInputMappingCanvas; cmdListener_Param : access CommandListener'Class);
   procedure keyPressed (This : in out GameInputMappingCanvas; keyCode : Integer);
   procedure keyReleased (This : in out GameInputMappingCanvas; keyCode : Integer);
   procedure keyRepeated (This : in out GameInputMappingCanvas; keyCode : Integer);
   procedure keyPressedByDevice (This : in out GameInputMappingCanvas; keyCode : Integer; deviceId : Integer);
   procedure addGameKey (This : in out GameInputMappingCanvas; keyCode : Integer; repeated : Boolean);
   procedure processInputMapping (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey'Class; input_Param : access Input'Class);
   procedure setSelectedAction (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey'Class);
   procedure gameActionCrud (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey'Class; input_Param : access Input'Class);
   procedure addNewMapping (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey'Class; input_Param : access Input'Class);
   procedure deleteCurrentMapping (This : in out GameInputMappingCanvas);
   procedure setDefault (This : in out GameInputMappingCanvas);
   procedure update (This : in out GameInputMappingCanvas);
   procedure paint (This : in out GameInputMappingCanvas; graphics_Param : access Graphics'Class);

end org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;


