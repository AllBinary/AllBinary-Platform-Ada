--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;

package javax.microedition.lcdui.NullCommandListener_Package is


   type NullCommandListener is tagged;
   type NullCommandListener_Access is access all NullCommandListener'Class;
   type NullCommandListener_Access_Array is array (Natural range <>) of NullCommandListener_Access;
   type NullCommandListener_Access_Array_Access is access all NullCommandListener_Access_Array;

   type NullCommandListener is new CommandListener with null record;
   NULL_COMMAND_LISTENER : NullCommandListener_Access;

   procedure Initialize (This : in out NullCommandListener'Class);
   function Create return NullCommandListener_Access;
   procedure commandAction (This : in out NullCommandListener; c : Command_Access; d : Displayable_Access);

end javax.microedition.lcdui.NullCommandListener_Package;


