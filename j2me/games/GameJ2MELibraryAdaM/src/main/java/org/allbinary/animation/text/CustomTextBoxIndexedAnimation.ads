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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.game.input.event.RawKeyEventListener_Package; use org.allbinary.game.input.event.RawKeyEventListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.animation.text.TextInterface_Package; use org.allbinary.animation.text.TextInterface_Package;
with org.allbinary.animation.text.TextChangeListener_Package; use org.allbinary.animation.text.TextChangeListener_Package;

package org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package RawKeyEventListener_Package renames Standard.org.allbinary.game.input.event.RawKeyEventListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type CustomTextBoxIndexedAnimation is tagged;
   type CustomTextBoxIndexedAnimation_Access is access all CustomTextBoxIndexedAnimation'Class;
   type CustomTextBoxIndexedAnimation_Access_Array is array (Natural range <>) of CustomTextBoxIndexedAnimation_Access;
   type CustomTextBoxIndexedAnimation_Access_Array_Access is access all CustomTextBoxIndexedAnimation_Access_Array;

   type CustomTextBoxIndexedAnimation is new IndexedAnimation and RawKeyEventListener and UpdateMyFontInterface and TextInterface with record
      customTextBox : CustomTextBox_Access;
      lastText : Unbounded_String;
      hasChanged : Boolean;
      textChangeListener : TextChangeListener_Access;
   end record;

   procedure Initialize (This : in out CustomTextBoxIndexedAnimation'Class; customTextBox_Param : access CustomTextBox'Class);
   function Create (customTextBox_Param : access CustomTextBox'Class) return CustomTextBoxIndexedAnimation_Access;
   procedure setBasicColorP (This : in out CustomTextBoxIndexedAnimation; basicColor_Param : access BasicColor'Class);
   procedure setBackgroundBasicColorP (This : in out CustomTextBoxIndexedAnimation; basicColor_Param : access BasicColor'Class);
   procedure setTextWithOnMeasure (This : in out CustomTextBoxIndexedAnimation; text : Unbounded_String; textChangeListener_Param : access TextChangeListener'Class);
   procedure updateMeasurement (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics'Class);
   procedure setText (This : in out CustomTextBoxIndexedAnimation; text : Unbounded_String);
   function getText (This : in out CustomTextBoxIndexedAnimation) return Unbounded_String;
   procedure onEventRaw (This : in out CustomTextBoxIndexedAnimation; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   function getFontHeight (This : in out CustomTextBoxIndexedAnimation) return Integer;
   procedure paintXY (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package;


