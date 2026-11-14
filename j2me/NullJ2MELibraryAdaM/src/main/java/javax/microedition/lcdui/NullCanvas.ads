--  Generated Code Do Not Modify

with AllBinary_Java;
limited with javax.microedition.lcdui.NullCanvas_Package;
package javax.microedition.lcdui.NullCanvas_Package_References is
   type NullCanvas_Access is access all javax.microedition.lcdui.NullCanvas_Package.NullCanvas'Class;
   type NullCanvas_Access_Array is array (Natural range <>) of NullCanvas_Access;
   type NullCanvas_Access_Array_Access is access all NullCanvas_Access_Array;
   type NullCanvas_Access_Array_Access_Array is array (Natural range <>) of NullCanvas_Access_Array_Access;
   type NullCanvas_Access_Array_Access_Array_Access is access all NullCanvas_Access_Array_Access_Array;
   type NullCanvas_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullCanvas_Access_Array_Access;
   end record;
   function Java_Box (Value : NullCanvas_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullCanvas_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullCanvas_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullCanvas_Access_Array_Access is (if Value /= null and then Value.all in NullCanvas_Access_Array_Object'Class then NullCanvas_Access_Array_Object'Class (Value.all).Value else null);
   type NullCanvas_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullCanvas_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullCanvas_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullCanvas_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullCanvas_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullCanvas_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullCanvas_Access_Array_Access_Array_Object'Class then NullCanvas_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end javax.microedition.lcdui.NullCanvas_Package_References;

with javax.microedition.lcdui.NullCanvas_Package_References;
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
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;

package javax.microedition.lcdui.NullCanvas_Package is

   package Stack_Package renames Standard.java.util.Stack_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype NullCanvas_Access is javax.microedition.lcdui.NullCanvas_Package_References.NullCanvas_Access;
   function "=" (Left, Right : NullCanvas_Access) return Boolean renames javax.microedition.lcdui.NullCanvas_Package_References."=";
   subtype NullCanvas_Access_Array is javax.microedition.lcdui.NullCanvas_Package_References.NullCanvas_Access_Array;
   function "=" (Left, Right : NullCanvas_Access_Array) return Boolean renames javax.microedition.lcdui.NullCanvas_Package_References."=";
   subtype NullCanvas_Access_Array_Access is javax.microedition.lcdui.NullCanvas_Package_References.NullCanvas_Access_Array_Access;
   function "=" (Left, Right : NullCanvas_Access_Array_Access) return Boolean renames javax.microedition.lcdui.NullCanvas_Package_References."=";
   function Java_Box (Value : NullCanvas_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.NullCanvas_Package_References.Java_Box;
   function Java_Unbox_NullCanvas_Access_Array (Value : access Java_Object'Class) return NullCanvas_Access_Array_Access renames javax.microedition.lcdui.NullCanvas_Package_References.Java_Unbox_NullCanvas_Access_Array;
   subtype NullCanvas_Access_Array_Access_Array is javax.microedition.lcdui.NullCanvas_Package_References.NullCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : NullCanvas_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.NullCanvas_Package_References."=";
   subtype NullCanvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.NullCanvas_Package_References.NullCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullCanvas_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.NullCanvas_Package_References."=";
   function Java_Box (Value : NullCanvas_Access_Array_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.NullCanvas_Package_References.Java_Box;
   function Java_Unbox_NullCanvas_Access_Array_Access_Array (Value : access Java_Object'Class) return NullCanvas_Access_Array_Access_Array_Access renames javax.microedition.lcdui.NullCanvas_Package_References.Java_Unbox_NullCanvas_Access_Array_Access_Array;

   type NullCanvas is new Canvas with null record;
   NULL_CANVAS : NullCanvas_Access;

   procedure Initialize (This : in out NullCanvas'Class);
   function Create return NullCanvas_Access;
   procedure setFullScreenMode (This : in out NullCanvas; mode : Boolean);
   procedure sizeChanged (This : in out NullCanvas; w : Integer; h : Integer);
   function getCommandStack (This : in out NullCanvas) return Stack_Access;
   function isCommand (This : in out NullCanvas; command_Param : access Command_Package.Command'Class) return Boolean;
   procedure isCommand (This : in out NullCanvas; command_Param : access Command_Package.Command'Class);
   procedure addCommand (This : in out NullCanvas; command_Param : access Command_Package.Command'Class);
   procedure removeCommand (This : in out NullCanvas; command_Param : access Command_Package.Command'Class);
   procedure removeAllCommands (This : in out NullCanvas);
   procedure setCommandListener (This : in out NullCanvas; l_Param : access CommandListener_Package.CommandListener'Class);
   function getCustomCommandListener (This : in out NullCanvas) return CommandListener_Access;
   function isPaused (This : in out NullCanvas) return Boolean;
   procedure removePauseCommand (This : in out NullCanvas);
   procedure pause (This : in out NullCanvas);
   procedure unPause (This : in out NullCanvas);
   procedure process (This : in out NullCanvas);
   procedure paint (This : in out NullCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure destroy (This : in out NullCanvas);
   procedure setPaused (This : in out NullCanvas; isPaused : Boolean);
   procedure pointerDragged (This : in out NullCanvas; x : Integer; y : Integer);
   procedure pointerPressed (This : in out NullCanvas; x : Integer; y : Integer);
   procedure pointerReleased (This : in out NullCanvas; x : Integer; y : Integer);

end javax.microedition.lcdui.NullCanvas_Package;


