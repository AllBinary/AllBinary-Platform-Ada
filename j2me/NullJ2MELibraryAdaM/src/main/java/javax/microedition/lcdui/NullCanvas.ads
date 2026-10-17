--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Stack_Package; use java.util.Stack_Package;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package javax.microedition.lcdui.NullCanvas_Package is

   package Stack_Package renames Standard.java.util.Stack_Package;

   type NullCanvas is tagged;
   type NullCanvas_Access is access all NullCanvas'Class;
   type NullCanvas_Access_Array is array (Natural range <>) of NullCanvas_Access;
   type NullCanvas_Access_Array_Access is access all NullCanvas_Access_Array;

   type NullCanvas is new Canvas with null record;
   NULL_CANVAS : NullCanvas_Access;

   procedure Initialize (This : in out NullCanvas'Class);
   function Create return NullCanvas_Access;
   procedure setFullScreenMode (This : in out NullCanvas; mode : Boolean);
   procedure sizeChanged (This : in out NullCanvas; w : Integer; h : Integer);
   function getCommandStack (This : in out NullCanvas) return Stack_Access;
   function isCommand (This : in out NullCanvas; command : Command_Access) return Boolean;
   procedure isCommand (This : in out NullCanvas; command : Command_Access);
   procedure addCommand (This : in out NullCanvas; command : Command_Access);
   procedure removeCommand (This : in out NullCanvas; command : Command_Access);
   procedure removeAllCommands (This : in out NullCanvas);
   procedure setCommandListener (This : in out NullCanvas; l : CommandListener_Access);
   function getCustomCommandListener (This : in out NullCanvas) return CommandListener_Access;
   function isPaused (This : in out NullCanvas) return Boolean;
   procedure removePauseCommand (This : in out NullCanvas);
   procedure pause (This : in out NullCanvas);
   procedure unPause (This : in out NullCanvas);
   procedure process (This : in out NullCanvas);
   procedure paint (This : in out NullCanvas; graphics : Graphics_Access);
   procedure destroy (This : in out NullCanvas);
   procedure setPaused (This : in out NullCanvas; isPaused : Boolean);
   procedure pointerDragged (This : in out NullCanvas; x : Integer; y : Integer);
   procedure pointerPressed (This : in out NullCanvas; x : Integer; y : Integer);
   procedure pointerReleased (This : in out NullCanvas; x : Integer; y : Integer);

end javax.microedition.lcdui.NullCanvas_Package;


