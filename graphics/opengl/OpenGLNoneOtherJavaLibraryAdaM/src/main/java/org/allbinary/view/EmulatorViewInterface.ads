--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;

package org.allbinary.view.EmulatorViewInterface_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;

   type EmulatorViewInterface is interface;
   type EmulatorViewInterface_Access is access all EmulatorViewInterface'Class;
   type EmulatorViewInterface_Access_Array is array (Natural range <>) of EmulatorViewInterface_Access;
   type EmulatorViewInterface_Access_Array_Access is access all EmulatorViewInterface_Access_Array;
   procedure setMidlet (This : in out EmulatorViewInterface; midlet_Param : access MIDlet_Package.MIDlet'Class) is abstract;
   procedure onEmulatorInitComplete (This : in out EmulatorViewInterface; midletActivity_Param : access Java_Object'Class) is abstract;
   procedure onSetDisplayable (This : in out EmulatorViewInterface; displayable_Param : access Displayable_Package.Displayable'Class) is abstract;

end org.allbinary.view.EmulatorViewInterface_Package;


