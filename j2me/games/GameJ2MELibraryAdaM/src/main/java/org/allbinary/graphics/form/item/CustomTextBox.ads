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
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.PlatformKeyFactory_Package; use org.allbinary.game.input.PlatformKeyFactory_Package;
with org.allbinary.game.input.event.RawKeyEventListener_Package; use org.allbinary.game.input.event.RawKeyEventListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.validation.TextItemVisitor_Package; use org.allbinary.graphics.form.item.validation.TextItemVisitor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package; use org.allbinary.graphics.form.item.ABTextFieldItem_Package;

package org.allbinary.graphics.form.item.CustomTextBox_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package GameCommandCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package PlatformKeyFactory_Package renames Standard.org.allbinary.game.input.PlatformKeyFactory_Package;
   package RawKeyEventListener_Package renames Standard.org.allbinary.game.input.event.RawKeyEventListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package TextItemVisitor_Package renames Standard.org.allbinary.graphics.form.item.validation.TextItemVisitor_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type CustomTextBox is tagged;
   type CustomTextBox_Access is access all CustomTextBox'Class;
   type CustomTextBox_Access_Array is array (Natural range <>) of CustomTextBox_Access;
   type CustomTextBox_Access_Array_Access is access all CustomTextBox_Access_Array;

   type CustomTextBox is new GameCommandCanvas and RawKeyEventListener with record
      textFieldItem : ABTextFieldItem_Access;
      inputFactory : InputFactory_Access;
   end record;

   procedure Initialize (This : in out CustomTextBox'Class; cmdListener : CommandListener_Access; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font : Font_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (cmdListener : CommandListener_Access; label : Unbounded_String; text : Unbounded_String; maxSize : Integer; constraints : Integer; font : Font_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CustomTextBox_Access;
   procedure submit (This : in out CustomTextBox);
   procedure onEventRaw (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   procedure keyPressed (This : in out CustomTextBox; keyCode : Integer);
   procedure keyReleased (This : in out CustomTextBox; keyCode : Integer);
   procedure keyRepeated (This : in out CustomTextBox; keyCode : Integer);
   procedure keyPressedByDevice (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out CustomTextBox; keyCode : Integer; deviceId : Integer);
   procedure paint (This : in out CustomTextBox; graphics : Graphics_Access);
   procedure paintXY (This : in out CustomTextBox; graphics : Graphics_Access; x : Integer; y : Integer);
   function getTextFieldItem (This : in out CustomTextBox) return ABTextFieldItem_Access;

end org.allbinary.graphics.form.item.CustomTextBox_Package;


