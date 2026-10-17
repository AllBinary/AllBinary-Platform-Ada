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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
--  with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with org.allbinary.view.EmulatorViewInterface_Package; use org.allbinary.view.EmulatorViewInterface_Package;

package org.allbinary.view.NullEmulatorView_Package is


   type NullEmulatorView is tagged;
   type NullEmulatorView_Access is access all NullEmulatorView'Class;
   type NullEmulatorView_Access_Array is array (Natural range <>) of NullEmulatorView_Access;
   type NullEmulatorView_Access_Array_Access is access all NullEmulatorView_Access_Array;

   type NullEmulatorView is new EmulatorViewInterface with null record;
   NULL_EMULATOR_VIEW : NullEmulatorView_Access;

   procedure Initialize (This : in out NullEmulatorView'Class);
   function Create return NullEmulatorView_Access;
   procedure setMidlet (This : in out NullEmulatorView; midlet : MIDlet_Access);
   procedure onEmulatorInitComplete (This : in out NullEmulatorView; midletActivity : Java_Object_Access);
   procedure onSetDisplayable (This : in out NullEmulatorView; displayable : Displayable_Access);

end org.allbinary.view.NullEmulatorView_Package;


