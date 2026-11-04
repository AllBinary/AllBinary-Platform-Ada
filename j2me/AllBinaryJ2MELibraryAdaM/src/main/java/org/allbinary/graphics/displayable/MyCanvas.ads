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

limited with org.allbinary.graphics.displayable.MyCanvas_Package;
package org.allbinary.graphics.displayable.MyCanvas_Package_References is
   type MyCanvas_Access is access all org.allbinary.graphics.displayable.MyCanvas_Package.MyCanvas'Class;
   type MyCanvas_Access_Array is array (Natural range <>) of MyCanvas_Access;
   type MyCanvas_Access_Array_Access is access all MyCanvas_Access_Array;
   type MyCanvas_Access_Array_Access_Array is array (Natural range <>) of MyCanvas_Access_Array_Access;
   type MyCanvas_Access_Array_Access_Array_Access is access all MyCanvas_Access_Array_Access_Array;
end org.allbinary.graphics.displayable.MyCanvas_Package_References;

with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.displayable.command.MyCommandInterface_Package; use org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
limited with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.input.TouchJ2ME_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABStack_Package_References;
with org.allbinary.graphics.displayable.DisplayableInterface_Package; use org.allbinary.graphics.displayable.DisplayableInterface_Package;
limited with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package_References;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;

package org.allbinary.graphics.displayable.MyCanvas_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyCommandInterface_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
   package TouchJ2ME_Package renames Standard.org.allbinary.input.TouchJ2ME_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ABStack_Package renames Standard.org.allbinary.util.ABStack_Package;
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
   subtype TouchJ2ME_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access;
   use type TouchJ2ME_Access;
   subtype TouchJ2ME_Access_Array is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array;
   use type TouchJ2ME_Access_Array;
   subtype TouchJ2ME_Access_Array_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access;
   use type TouchJ2ME_Access_Array_Access;
   subtype TouchJ2ME_Access_Array_Access_Array is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access_Array;
   use type TouchJ2ME_Access_Array_Access_Array;
   subtype TouchJ2ME_Access_Array_Access_Array_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access_Array_Access;
   use type TouchJ2ME_Access_Array_Access_Array_Access;
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
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   use type Sound_Access;
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   use type Sound_Access_Array;
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   use type Sound_Access_Array_Access;
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   use type Sound_Access_Array_Access_Array;
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   use type Sound_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype ABStack_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access;
   use type ABStack_Access;
   subtype ABStack_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array;
   use type ABStack_Access_Array;
   subtype ABStack_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access;
   use type ABStack_Access_Array_Access;
   subtype ABStack_Access_Array_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array;
   use type ABStack_Access_Array_Access_Array;
   subtype ABStack_Access_Array_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array_Access;
   use type ABStack_Access_Array_Access_Array_Access;
   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   use type CanvasStrings_Access;
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   use type CanvasStrings_Access_Array;
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access;
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   use type CanvasStrings_Access_Array_Access_Array;
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access_Array_Access;
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   function "=" (Left, Right : MyCanvas_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";

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
   function getWidth (This : in out MyCanvas) return Integer;
   function getHeight (This : in out MyCanvas) return Integer;
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


