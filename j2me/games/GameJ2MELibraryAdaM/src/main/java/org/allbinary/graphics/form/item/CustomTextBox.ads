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
limited with org.allbinary.graphics.form.item.CustomTextBox_Package;
package org.allbinary.graphics.form.item.CustomTextBox_Package_References is
   type CustomTextBox_Access is access all org.allbinary.graphics.form.item.CustomTextBox_Package.CustomTextBox'Class;
   type CustomTextBox_Access_Array is array (Natural range <>) of CustomTextBox_Access;
   type CustomTextBox_Access_Array_Access is access all CustomTextBox_Access_Array;
   type CustomTextBox_Access_Array_Access_Array is array (Natural range <>) of CustomTextBox_Access_Array_Access;
   type CustomTextBox_Access_Array_Access_Array_Access is access all CustomTextBox_Access_Array_Access_Array;
   type CustomTextBox_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTextBox_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTextBox_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTextBox_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTextBox_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTextBox_Access_Array_Access is (if Value /= null and then Value.all in CustomTextBox_Access_Array_Object'Class then CustomTextBox_Access_Array_Object'Class (Value.all).Value else null);
   type CustomTextBox_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTextBox_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTextBox_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTextBox_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTextBox_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTextBox_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomTextBox_Access_Array_Access_Array_Object'Class then CustomTextBox_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.CustomTextBox_Package_References;

with org.allbinary.graphics.form.item.CustomTextBox_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
limited with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.InputFactory_Package_References;
with org.allbinary.game.input.event.RawKeyEventListener_Package; use org.allbinary.game.input.event.RawKeyEventListener_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.form.item.ABTextFieldItem_Package;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package_References;

package org.allbinary.graphics.form.item.CustomTextBox_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GameCommandCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package RawKeyEventListener_Package renames Standard.org.allbinary.game.input.event.RawKeyEventListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
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
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
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
   subtype InputFactory_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access;
   use type InputFactory_Access;
   subtype InputFactory_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array;
   use type InputFactory_Access_Array;
   subtype InputFactory_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access;
   use type InputFactory_Access_Array_Access;
   subtype InputFactory_Access_Array_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array;
   use type InputFactory_Access_Array_Access_Array;
   subtype InputFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array_Access;
   use type InputFactory_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype ABTextFieldItem_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access;
   use type ABTextFieldItem_Access;
   subtype ABTextFieldItem_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array;
   use type ABTextFieldItem_Access_Array;
   subtype ABTextFieldItem_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access;
   use type ABTextFieldItem_Access_Array_Access;
   subtype ABTextFieldItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array;
   use type ABTextFieldItem_Access_Array_Access_Array;
   subtype ABTextFieldItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array_Access;
   use type ABTextFieldItem_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomTextBox_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access;
   function "=" (Left, Right : CustomTextBox_Access) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   subtype CustomTextBox_Access_Array is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array;
   function "=" (Left, Right : CustomTextBox_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   subtype CustomTextBox_Access_Array_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access;
   function "=" (Left, Right : CustomTextBox_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   function Java_Box (Value : CustomTextBox_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.CustomTextBox_Package_References.Java_Box;
   function Java_Unbox_CustomTextBox_Access_Array (Value : access Java_Object'Class) return CustomTextBox_Access_Array_Access renames org.allbinary.graphics.form.item.CustomTextBox_Package_References.Java_Unbox_CustomTextBox_Access_Array;
   subtype CustomTextBox_Access_Array_Access_Array is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTextBox_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   subtype CustomTextBox_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTextBox_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CustomTextBox_Package_References."=";
   function Java_Box (Value : CustomTextBox_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.CustomTextBox_Package_References.Java_Box;
   function Java_Unbox_CustomTextBox_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomTextBox_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.CustomTextBox_Package_References.Java_Unbox_CustomTextBox_Access_Array_Access_Array;

   type CustomTextBox is new GameCommandCanvas and RawKeyEventListener with record
      textFieldItem : ABTextFieldItem_Access;
      inputFactory : InputFactory_Access;
   end record;

   procedure Initialize (This : in out CustomTextBox'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CustomTextBox_Access;
   procedure submit (This : in out CustomTextBox);
   procedure onEventRaw (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   procedure keyPressed (This : in out CustomTextBox; keyCode : Integer);
   procedure keyReleased (This : in out CustomTextBox; keyCode : Integer);
   procedure keyRepeated (This : in out CustomTextBox; keyCode : Integer);
   procedure keyPressedByDevice (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer);
   procedure paint (This : in out CustomTextBox; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintXY (This : in out CustomTextBox; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   function getTextFieldItem (This : in out CustomTextBox) return ABTextFieldItem_Access;

end org.allbinary.graphics.form.item.CustomTextBox_Package;


