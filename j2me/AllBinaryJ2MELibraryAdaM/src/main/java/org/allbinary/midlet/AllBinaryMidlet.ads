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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Display_Package; use javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.midlet.AllBinaryMidlet_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Display_Package renames Standard.javax.microedition.lcdui.Display_Package;
   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type AllBinaryMidlet is tagged;
   type AllBinaryMidlet_Access is access all AllBinaryMidlet'Class;
   type AllBinaryMidlet_Access_Array is array (Natural range <>) of AllBinaryMidlet_Access;
   type AllBinaryMidlet_Access_Array_Access is access all AllBinaryMidlet_Access_Array;
   type AllBinaryMidlet_Access_Array_Access_Array is array (Natural range <>) of AllBinaryMidlet_Access_Array_Access;
   type AllBinaryMidlet_Access_Array_Access_Array_Access is access all AllBinaryMidlet_Access_Array_Access_Array;

   type AllBinaryMidlet is new MIDlet and CommandListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      SET_DISPLAY : Unbounded_String;
      SETTING_U : Unbounded_String;
      U_DISPLAY_U : Unbounded_String;
      SETTING_NO_TITLE : Unbounded_String;
      hashtable : ABHashtable_Access;
      midletDestroyed : Boolean;
   end record;
   NULL_ALLBINARY_MIDLET : Java_Object_Access;

   procedure Initialize (This : in out AllBinaryMidlet'Class);
   function Create return AllBinaryMidlet_Access;
   function getNullInstance return AllBinaryMidlet_Access;
   procedure setDisplay (This : in out AllBinaryMidlet; newDisplay_Param : access Displayable_Package.Displayable'Class);
   function getDisplay (This : in out AllBinaryMidlet) return Display_Access;
   function getCurrentDisplayable (This : in out AllBinaryMidlet) return Displayable_Access;
   procedure setDestroyed (This : in out AllBinaryMidlet; destroyed : Boolean);
   function isDestroyed (This : in out AllBinaryMidlet) return Boolean;
   procedure startApp (This : in out AllBinaryMidlet);
   procedure pauseApp (This : in out AllBinaryMidlet);
   procedure destroyAppInRunnable (This : in out AllBinaryMidlet; unconditional : Boolean; isProgress : Boolean);
   procedure destroyApp (This : in out AllBinaryMidlet; unconditional : Boolean);
   procedure setStartStateHashtable (This : in out AllBinaryMidlet; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function getStartStateHashtable (This : in out AllBinaryMidlet) return ABHashtable_Access;
   function getCurrentStateHashtable (This : in out AllBinaryMidlet) return ABHashtable_Access;
   procedure commandAction (This : in out AllBinaryMidlet; command_Param : access Command_Package.Command'Class; displayable_Param : access Displayable_Package.Displayable'Class);

end org.allbinary.midlet.AllBinaryMidlet_Package;


