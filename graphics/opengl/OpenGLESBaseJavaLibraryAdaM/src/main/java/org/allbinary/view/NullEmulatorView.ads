-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.view.NullEmulatorView_Package;
package org.allbinary.view.NullEmulatorView_Package_References is
   type NullEmulatorView_Access is access all org.allbinary.view.NullEmulatorView_Package.NullEmulatorView'Class;
   type NullEmulatorView_Access_Array is array (Natural range <>) of NullEmulatorView_Access;
   type NullEmulatorView_Access_Array_Access is access all NullEmulatorView_Access_Array;
   type NullEmulatorView_Access_Array_Access_Array is array (Natural range <>) of NullEmulatorView_Access_Array_Access;
   type NullEmulatorView_Access_Array_Access_Array_Access is access all NullEmulatorView_Access_Array_Access_Array;
end org.allbinary.view.NullEmulatorView_Package_References;

with org.allbinary.view.NullEmulatorView_Package_References;
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
with org.allbinary.view.EmulatorViewInterface_Package; use org.allbinary.view.EmulatorViewInterface_Package;

package org.allbinary.view.NullEmulatorView_Package is

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


   subtype NullEmulatorView_Access is org.allbinary.view.NullEmulatorView_Package_References.NullEmulatorView_Access;
   function "=" (Left, Right : NullEmulatorView_Access) return Boolean renames org.allbinary.view.NullEmulatorView_Package_References."=";
   subtype NullEmulatorView_Access_Array is org.allbinary.view.NullEmulatorView_Package_References.NullEmulatorView_Access_Array;
   function "=" (Left, Right : NullEmulatorView_Access_Array) return Boolean renames org.allbinary.view.NullEmulatorView_Package_References."=";
   subtype NullEmulatorView_Access_Array_Access is org.allbinary.view.NullEmulatorView_Package_References.NullEmulatorView_Access_Array_Access;
   function "=" (Left, Right : NullEmulatorView_Access_Array_Access) return Boolean renames org.allbinary.view.NullEmulatorView_Package_References."=";
   subtype NullEmulatorView_Access_Array_Access_Array is org.allbinary.view.NullEmulatorView_Package_References.NullEmulatorView_Access_Array_Access_Array;
   function "=" (Left, Right : NullEmulatorView_Access_Array_Access_Array) return Boolean renames org.allbinary.view.NullEmulatorView_Package_References."=";
   subtype NullEmulatorView_Access_Array_Access_Array_Access is org.allbinary.view.NullEmulatorView_Package_References.NullEmulatorView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullEmulatorView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.NullEmulatorView_Package_References."=";

   type NullEmulatorView is new Java_Object and EmulatorViewInterface with null record;
   NULL_EMULATOR_VIEW : NullEmulatorView_Access;

   procedure Initialize (This : in out NullEmulatorView'Class);
   function Create return NullEmulatorView_Access;
   procedure setMidlet (This : in out NullEmulatorView; midlet_Param : access MIDlet_Package.MIDlet'Class);
   procedure onEmulatorInitComplete (This : in out NullEmulatorView; midletActivity_Param : access Java_Object'Class);
   procedure onSetDisplayable (This : in out NullEmulatorView; displayable_Param : access Displayable_Package.Displayable'Class);
   procedure onEmulatorInitComplete (This : in out NullEmulatorView; Value : Unbounded_String);

end org.allbinary.view.NullEmulatorView_Package;


