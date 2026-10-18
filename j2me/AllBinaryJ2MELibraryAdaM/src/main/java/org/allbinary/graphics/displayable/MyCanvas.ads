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
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.graphics.displayable.command.MyCommandInterface_Package; use org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.input.TouchJ2ME_Package; use org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABStack_Package; use org.allbinary.util.ABStack_Package;
with org.allbinary.graphics.displayable.DisplayableInterface_Package; use org.allbinary.graphics.displayable.DisplayableInterface_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;

package org.allbinary.graphics.displayable.MyCanvas_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package NullCommandListener_Package renames Standard.javax.microedition.lcdui.NullCommandListener_Package;
   package MyCommandInterface_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
   package MyCommandsFactory_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
   package TouchJ2ME_Package renames Standard.org.allbinary.input.TouchJ2ME_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABStack_Package renames Standard.org.allbinary.util.ABStack_Package;

   type MyCanvas is tagged;
   type MyCanvas_Access is access all MyCanvas'Class;
   type MyCanvas_Access_Array is array (Natural range <>) of MyCanvas_Access;
   type MyCanvas_Access_Array_Access is access all MyCanvas_Access_Array;

   type MyCanvas is new Canvas and DisplayableInterface and MyCommandInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
      stringUtil : StringUtil_Access;
      displayInfo : DisplayInfoSingleton_Access;
      name : Unbounded_String;
      childNameList : BasicArrayList_Access;
      commandStack : ABStack_Access;
      commandListener : CommandListener_Access;
      paused : Boolean;
      touchME : TouchJ2ME_Access;
   end record;

   procedure Initialize (This : in out MyCanvas'Class; name : Unbounded_String; childNameList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (name : Unbounded_String; childNameList_Param : access BasicArrayList_Package.BasicArrayList'Class) return MyCanvas_Access;
   procedure setFullScreenMode (This : in out MyCanvas; mode : Boolean);
   procedure sizeChanged (This : in out MyCanvas; w : Integer; h : Integer);
   function getCommandStack (This : in out MyCanvas) return ABStack_Access;
   function isCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) return Boolean;
   procedure isCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class);
   procedure addCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class);
   procedure removeCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class);
   procedure removeAllCommands (This : in out MyCanvas);
   procedure setCommandListener (This : in out MyCanvas; l_Param : access CommandListener_Package.CommandListener'Class);
   function getCustomCommandListener (This : in out MyCanvas) return CommandListener_Access;
   function isPaused (This : in out MyCanvas) return Boolean;
   procedure removePauseCommand (This : in out MyCanvas);
   procedure pause (This : in out MyCanvas);
   procedure unPause (This : in out MyCanvas);
   procedure process (This : in out MyCanvas);
   procedure paint (This : in out MyCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure draw (This : in out MyCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   function hasChild (This : in out MyCanvas; displayable_Param : access MyCanvas_Package.MyCanvas'Class) return Boolean;
   procedure hasChild (This : in out MyCanvas; displayable_Param : access MyCanvas_Package.MyCanvas'Class);
   procedure destroy (This : in out MyCanvas);
   procedure setPaused (This : in out MyCanvas; isPaused : Boolean);
   procedure keyPressedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer);
   procedure keyRepeatedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer);
   procedure pointerDragged (This : in out MyCanvas; x : Integer; y : Integer);
   procedure pointerPressed (This : in out MyCanvas; x : Integer; y : Integer);
   procedure pointerReleased (This : in out MyCanvas; x : Integer; y : Integer);
   procedure nextSong (This : in out MyCanvas; nextSongSound_Param : access Sound_Package.Sound'Class; leftVolume : Integer; rightVolume : Integer);

end org.allbinary.graphics.displayable.MyCanvas_Package;


