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

limited with org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
package org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References is
   type GameInputMappingCanvas_Access is access all org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package.GameInputMappingCanvas'Class;
   type GameInputMappingCanvas_Access_Array is array (Natural range <>) of GameInputMappingCanvas_Access;
   type GameInputMappingCanvas_Access_Array_Access is access all GameInputMappingCanvas_Access_Array;
   type GameInputMappingCanvas_Access_Array_Access_Array is array (Natural range <>) of GameInputMappingCanvas_Access_Array_Access;
   type GameInputMappingCanvas_Access_Array_Access_Array_Access is access all GameInputMappingCanvas_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References;

with org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References;
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
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
limited with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.InputFactory_Package_References;
with org.allbinary.game.input.mapping.InputMappingInterface_Package; use org.allbinary.game.input.mapping.InputMappingInterface_Package;
limited with org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package_References;
limited with org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package_References;
limited with org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;
with org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References;
limited with org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;

package org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package InputMappingInterface_Package renames Standard.org.allbinary.game.input.mapping.InputMappingInterface_Package;
   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ColorFillBasePaintable_Package renames Standard.org.allbinary.game.paint.ColorFillBasePaintable_Package;
   package HelpPaintable_Package renames Standard.org.allbinary.game.paint.help.HelpPaintable_Package;
   package InputMappingHelpPaintable_Package renames Standard.org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   use type Input_Access;
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   use type Input_Access_Array;
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   use type Input_Access_Array_Access;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   use type Input_Access_Array_Access_Array;
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   use type Input_Access_Array_Access_Array_Access;
   subtype InputFactory_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access;
   use type InputFactory_Access;
   subtype InputFactory_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array;
   use type InputFactory_Access_Array;
   subtype InputFactory_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access;
   use type InputFactory_Access_Array_Access;
   subtype InputFactory_Access_Array_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array;
   use type InputFactory_Access_Array_Access_Array;
   subtype InputFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array_Access;
   use type InputFactory_Access_Array_Access_Array_Access;
   subtype PersistentInputMapping_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access;
   use type PersistentInputMapping_Access;
   subtype PersistentInputMapping_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array;
   use type PersistentInputMapping_Access_Array;
   subtype PersistentInputMapping_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access;
   use type PersistentInputMapping_Access_Array_Access;
   subtype PersistentInputMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array;
   use type PersistentInputMapping_Access_Array_Access_Array;
   subtype PersistentInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array_Access;
   use type PersistentInputMapping_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype ColorFillBasePaintable_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access;
   use type ColorFillBasePaintable_Access;
   subtype ColorFillBasePaintable_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array;
   use type ColorFillBasePaintable_Access_Array;
   subtype ColorFillBasePaintable_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access;
   use type ColorFillBasePaintable_Access_Array_Access;
   subtype ColorFillBasePaintable_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array;
   use type ColorFillBasePaintable_Access_Array_Access_Array;
   subtype ColorFillBasePaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array_Access;
   use type ColorFillBasePaintable_Access_Array_Access_Array_Access;
   subtype HelpPaintable_Access is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access;
   use type HelpPaintable_Access;
   subtype HelpPaintable_Access_Array is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access_Array;
   use type HelpPaintable_Access_Array;
   subtype HelpPaintable_Access_Array_Access is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access_Array_Access;
   use type HelpPaintable_Access_Array_Access;
   subtype HelpPaintable_Access_Array_Access_Array is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access_Array_Access_Array;
   use type HelpPaintable_Access_Array_Access_Array;
   subtype HelpPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access_Array_Access_Array_Access;
   use type HelpPaintable_Access_Array_Access_Array_Access;
   subtype InputMappingHelpPaintable_Access is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access;
   use type InputMappingHelpPaintable_Access;
   subtype InputMappingHelpPaintable_Access_Array is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access_Array;
   use type InputMappingHelpPaintable_Access_Array;
   subtype InputMappingHelpPaintable_Access_Array_Access is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access_Array_Access;
   use type InputMappingHelpPaintable_Access_Array_Access;
   subtype InputMappingHelpPaintable_Access_Array_Access_Array is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access_Array_Access_Array;
   use type InputMappingHelpPaintable_Access_Array_Access_Array;
   subtype InputMappingHelpPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access_Array_Access_Array_Access;
   use type InputMappingHelpPaintable_Access_Array_Access_Array_Access;
   subtype ProcessPaintable_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access;
   use type ProcessPaintable_Access;
   subtype ProcessPaintable_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array;
   use type ProcessPaintable_Access_Array;
   subtype ProcessPaintable_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access;
   use type ProcessPaintable_Access_Array_Access;
   subtype ProcessPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array;
   use type ProcessPaintable_Access_Array_Access_Array;
   subtype ProcessPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array_Access;
   use type ProcessPaintable_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInputMappingCanvas_Access is org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References.GameInputMappingCanvas_Access;
   function "=" (Left, Right : GameInputMappingCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References."=";
   subtype GameInputMappingCanvas_Access_Array is org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References.GameInputMappingCanvas_Access_Array;
   function "=" (Left, Right : GameInputMappingCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References."=";
   subtype GameInputMappingCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References.GameInputMappingCanvas_Access_Array_Access;
   function "=" (Left, Right : GameInputMappingCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References."=";
   subtype GameInputMappingCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References.GameInputMappingCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMappingCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References."=";
   subtype GameInputMappingCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References.GameInputMappingCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMappingCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package_References."=";

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

   procedure Initialize (This : in out GameInputMappingCanvas'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; helpPaintable_Param : access HelpPaintable_Package.HelpPaintable'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; helpPaintable_Param : access HelpPaintable_Package.HelpPaintable'Class) return GameInputMappingCanvas_Access;
   procedure close (This : in out GameInputMappingCanvas);
   procedure initCommands (This : in out GameInputMappingCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure keyPressed (This : in out GameInputMappingCanvas; keyCode : Integer);
   procedure keyReleased (This : in out GameInputMappingCanvas; keyCode : Integer);
   procedure keyRepeated (This : in out GameInputMappingCanvas; keyCode : Integer);
   procedure keyPressedByDevice (This : in out GameInputMappingCanvas; keyCode : Integer; deviceId : Integer);
   procedure addGameKey (This : in out GameInputMappingCanvas; keyCode : Integer; repeated : Boolean);
   procedure processInputMapping (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class);
   procedure setSelectedAction (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class);
   procedure gameActionCrud (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class);
   procedure addNewMapping (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class);
   procedure deleteCurrentMapping (This : in out GameInputMappingCanvas);
   procedure setDefault (This : in out GameInputMappingCanvas);
   procedure update (This : in out GameInputMappingCanvas);
   procedure paint (This : in out GameInputMappingCanvas; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;


