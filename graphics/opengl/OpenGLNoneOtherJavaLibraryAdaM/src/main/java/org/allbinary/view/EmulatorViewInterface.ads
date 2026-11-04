--  Generated Code Do Not Modify

limited with org.allbinary.view.EmulatorViewInterface_Package;
package org.allbinary.view.EmulatorViewInterface_Package_References is
   type EmulatorViewInterface_Access is access all org.allbinary.view.EmulatorViewInterface_Package.EmulatorViewInterface'Class;
   type EmulatorViewInterface_Access_Array is array (Natural range <>) of EmulatorViewInterface_Access;
   type EmulatorViewInterface_Access_Array_Access is access all EmulatorViewInterface_Access_Array;
   type EmulatorViewInterface_Access_Array_Access_Array is array (Natural range <>) of EmulatorViewInterface_Access_Array_Access;
   type EmulatorViewInterface_Access_Array_Access_Array_Access is access all EmulatorViewInterface_Access_Array_Access_Array;
end org.allbinary.view.EmulatorViewInterface_Package_References;

with org.allbinary.view.EmulatorViewInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
limited with javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDlet_Package_References;

package org.allbinary.view.EmulatorViewInterface_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;
   package Reference_Types is
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   use type Displayable_Access;
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   use type Displayable_Access_Array;
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   use type Displayable_Access_Array_Access;
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   use type Displayable_Access_Array_Access_Array;
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   use type Displayable_Access_Array_Access_Array_Access;
   subtype MIDlet_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access;
   use type MIDlet_Access;
   subtype MIDlet_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array;
   use type MIDlet_Access_Array;
   subtype MIDlet_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access;
   use type MIDlet_Access_Array_Access;
   subtype MIDlet_Access_Array_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array;
   use type MIDlet_Access_Array_Access_Array;
   subtype MIDlet_Access_Array_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array_Access;
   use type MIDlet_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type EmulatorViewInterface is interface;
   subtype EmulatorViewInterface_Access is org.allbinary.view.EmulatorViewInterface_Package_References.EmulatorViewInterface_Access;
   function "=" (Left, Right : EmulatorViewInterface_Access) return Boolean renames org.allbinary.view.EmulatorViewInterface_Package_References."=";
   subtype EmulatorViewInterface_Access_Array is org.allbinary.view.EmulatorViewInterface_Package_References.EmulatorViewInterface_Access_Array;
   function "=" (Left, Right : EmulatorViewInterface_Access_Array) return Boolean renames org.allbinary.view.EmulatorViewInterface_Package_References."=";
   subtype EmulatorViewInterface_Access_Array_Access is org.allbinary.view.EmulatorViewInterface_Package_References.EmulatorViewInterface_Access_Array_Access;
   function "=" (Left, Right : EmulatorViewInterface_Access_Array_Access) return Boolean renames org.allbinary.view.EmulatorViewInterface_Package_References."=";
   subtype EmulatorViewInterface_Access_Array_Access_Array is org.allbinary.view.EmulatorViewInterface_Package_References.EmulatorViewInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EmulatorViewInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.view.EmulatorViewInterface_Package_References."=";
   subtype EmulatorViewInterface_Access_Array_Access_Array_Access is org.allbinary.view.EmulatorViewInterface_Package_References.EmulatorViewInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmulatorViewInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.EmulatorViewInterface_Package_References."=";
   function Java_Object_Access_From_EmulatorViewInterface (Value : EmulatorViewInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setMidlet (This : in out EmulatorViewInterface; midlet_Param : access MIDlet_Package.MIDlet'Class) is abstract;
   procedure onEmulatorInitComplete (This : in out EmulatorViewInterface; midletActivity_Param : access Java_Object'Class) is abstract;
   procedure onSetDisplayable (This : in out EmulatorViewInterface; displayable_Param : access Displayable_Package.Displayable'Class) is abstract;

end org.allbinary.view.EmulatorViewInterface_Package;


