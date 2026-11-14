-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package;
package org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References is
   type CustomTextBoxIndexedAnimation_Access is access all org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package.CustomTextBoxIndexedAnimation'Class;
   type CustomTextBoxIndexedAnimation_Access_Array is array (Natural range <>) of CustomTextBoxIndexedAnimation_Access;
   type CustomTextBoxIndexedAnimation_Access_Array_Access is access all CustomTextBoxIndexedAnimation_Access_Array;
   type CustomTextBoxIndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of CustomTextBoxIndexedAnimation_Access_Array_Access;
   type CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access is access all CustomTextBoxIndexedAnimation_Access_Array_Access_Array;
   type CustomTextBoxIndexedAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTextBoxIndexedAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTextBoxIndexedAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTextBoxIndexedAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTextBoxIndexedAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTextBoxIndexedAnimation_Access_Array_Access is (if Value /= null and then Value.all in CustomTextBoxIndexedAnimation_Access_Array_Object'Class then CustomTextBoxIndexedAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTextBoxIndexedAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Object'Class then CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References;

with org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.game.input.event.RawKeyEventListener_Package; use org.allbinary.game.input.event.RawKeyEventListener_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package_References;
with org.allbinary.animation.text.TextInterface_Package; use org.allbinary.animation.text.TextInterface_Package;
limited with org.allbinary.animation.text.TextChangeListener_Package;
with org.allbinary.animation.text.TextChangeListener_Package_References;

package org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package RawKeyEventListener_Package renames Standard.org.allbinary.game.input.event.RawKeyEventListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package Reference_Types is
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
   subtype CustomTextBox_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access;
   use type CustomTextBox_Access;
   subtype CustomTextBox_Access_Array is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array;
   use type CustomTextBox_Access_Array;
   subtype CustomTextBox_Access_Array_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access;
   use type CustomTextBox_Access_Array_Access;
   subtype CustomTextBox_Access_Array_Access_Array is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access_Array;
   use type CustomTextBox_Access_Array_Access_Array;
   subtype CustomTextBox_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CustomTextBox_Package_References.CustomTextBox_Access_Array_Access_Array_Access;
   use type CustomTextBox_Access_Array_Access_Array_Access;
   subtype TextChangeListener_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access;
   use type TextChangeListener_Access;
   subtype TextChangeListener_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array;
   use type TextChangeListener_Access_Array;
   subtype TextChangeListener_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access;
   use type TextChangeListener_Access_Array_Access;
   subtype TextChangeListener_Access_Array_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array;
   use type TextChangeListener_Access_Array_Access_Array;
   subtype TextChangeListener_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array_Access;
   use type TextChangeListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomTextBoxIndexedAnimation_Access is org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.CustomTextBoxIndexedAnimation_Access;
   function "=" (Left, Right : CustomTextBoxIndexedAnimation_Access) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References."=";
   subtype CustomTextBoxIndexedAnimation_Access_Array is org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.CustomTextBoxIndexedAnimation_Access_Array;
   function "=" (Left, Right : CustomTextBoxIndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References."=";
   subtype CustomTextBoxIndexedAnimation_Access_Array_Access is org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.CustomTextBoxIndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : CustomTextBoxIndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References."=";
   function Java_Box (Value : CustomTextBoxIndexedAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.Java_Box;
   function Java_Unbox_CustomTextBoxIndexedAnimation_Access_Array (Value : access Java_Object'Class) return CustomTextBoxIndexedAnimation_Access_Array_Access renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.Java_Unbox_CustomTextBoxIndexedAnimation_Access_Array;
   subtype CustomTextBoxIndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.CustomTextBoxIndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTextBoxIndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References."=";
   subtype CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References."=";
   function Java_Box (Value : CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.Java_Box;
   function Java_Unbox_CustomTextBoxIndexedAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomTextBoxIndexedAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package_References.Java_Unbox_CustomTextBoxIndexedAnimation_Access_Array_Access_Array;

   type CustomTextBoxIndexedAnimation is new IndexedAnimation and RawKeyEventListener and UpdateMyFontInterface and TextInterface with record
      customTextBox : CustomTextBox_Access;
      lastText : Unbounded_String;
      hasChanged : Boolean;
      textChangeListener : TextChangeListener_Access;
   end record;

   procedure Initialize (This : in out CustomTextBoxIndexedAnimation'Class; customTextBox_Param : access CustomTextBox_Package.CustomTextBox'Class);
   function Create (customTextBox_Param : access CustomTextBox_Package.CustomTextBox'Class) return CustomTextBoxIndexedAnimation_Access;
   procedure setBasicColorP (This : in out CustomTextBoxIndexedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setBackgroundBasicColorP (This : in out CustomTextBoxIndexedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setTextWithOnMeasure (This : in out CustomTextBoxIndexedAnimation; text : Unbounded_String; textChangeListener_Param : access TextChangeListener_Package.TextChangeListener'Class);
   procedure updateMeasurement (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setText (This : in out CustomTextBoxIndexedAnimation; text : Unbounded_String);
   function getText (This : in out CustomTextBoxIndexedAnimation) return Unbounded_String;
   procedure onEventRaw (This : in out CustomTextBoxIndexedAnimation; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   function getFontHeight (This : in out CustomTextBoxIndexedAnimation) return Integer;
   procedure paintXY (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   function getWidth (This : in out CustomTextBoxIndexedAnimation) return Integer;

end org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package;


