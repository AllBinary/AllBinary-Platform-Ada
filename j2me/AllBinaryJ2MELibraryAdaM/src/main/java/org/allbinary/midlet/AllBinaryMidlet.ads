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

with AllBinary_Java;
limited with org.allbinary.midlet.AllBinaryMidlet_Package;
package org.allbinary.midlet.AllBinaryMidlet_Package_References is
   type AllBinaryMidlet_Access is access all org.allbinary.midlet.AllBinaryMidlet_Package.AllBinaryMidlet'Class;
   type AllBinaryMidlet_Access_Array is array (Natural range <>) of AllBinaryMidlet_Access;
   type AllBinaryMidlet_Access_Array_Access is access all AllBinaryMidlet_Access_Array;
   type AllBinaryMidlet_Access_Array_Access_Array is array (Natural range <>) of AllBinaryMidlet_Access_Array_Access;
   type AllBinaryMidlet_Access_Array_Access_Array_Access is access all AllBinaryMidlet_Access_Array_Access_Array;
   type AllBinaryMidlet_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryMidlet_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryMidlet_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryMidlet_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryMidlet_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryMidlet_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryMidlet_Access_Array_Object'Class then AllBinaryMidlet_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryMidlet_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryMidlet_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryMidlet_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryMidlet_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryMidlet_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryMidlet_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryMidlet_Access_Array_Access_Array_Object'Class then AllBinaryMidlet_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.midlet.AllBinaryMidlet_Package_References;

with org.allbinary.midlet.AllBinaryMidlet_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
limited with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.Display_Package_References;
limited with javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.midlet.AllBinaryMidlet_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Display_Package renames Standard.javax.microedition.lcdui.Display_Package;
   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype Display_Access is javax.microedition.lcdui.Display_Package_References.Display_Access;
   use type Display_Access;
   subtype Display_Access_Array is javax.microedition.lcdui.Display_Package_References.Display_Access_Array;
   use type Display_Access_Array;
   subtype Display_Access_Array_Access is javax.microedition.lcdui.Display_Package_References.Display_Access_Array_Access;
   use type Display_Access_Array_Access;
   subtype Display_Access_Array_Access_Array is javax.microedition.lcdui.Display_Package_References.Display_Access_Array_Access_Array;
   use type Display_Access_Array_Access_Array;
   subtype Display_Access_Array_Access_Array_Access is javax.microedition.lcdui.Display_Package_References.Display_Access_Array_Access_Array_Access;
   use type Display_Access_Array_Access_Array_Access;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryMidlet_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   function Java_Box (Value : AllBinaryMidlet_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.AllBinaryMidlet_Package_References.Java_Box;
   function Java_Unbox_AllBinaryMidlet_Access_Array (Value : access Java_Object'Class) return AllBinaryMidlet_Access_Array_Access renames org.allbinary.midlet.AllBinaryMidlet_Package_References.Java_Unbox_AllBinaryMidlet_Access_Array;
   subtype AllBinaryMidlet_Access_Array_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   function Java_Box (Value : AllBinaryMidlet_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.AllBinaryMidlet_Package_References.Java_Box;
   function Java_Unbox_AllBinaryMidlet_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryMidlet_Access_Array_Access_Array_Access renames org.allbinary.midlet.AllBinaryMidlet_Package_References.Java_Unbox_AllBinaryMidlet_Access_Array_Access_Array;

   type AllBinaryMidlet is new MIDlet_Package.MIDlet and CommandListener with record
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


