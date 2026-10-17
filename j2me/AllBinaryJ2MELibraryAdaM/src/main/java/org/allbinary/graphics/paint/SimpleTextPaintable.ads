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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.graphics.paint.SimpleTextPaintable_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;

   type SimpleTextPaintable is tagged;
   type SimpleTextPaintable_Access is access all SimpleTextPaintable'Class;
   type SimpleTextPaintable_Access_Array is array (Natural range <>) of SimpleTextPaintable_Access;
   type SimpleTextPaintable_Access_Array_Access is access all SimpleTextPaintable_Access_Array;

   type SimpleTextPaintable is new Paintable and UpdateMyFontInterface with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      text : Unbounded_String;
      basicColor : BasicColor_Access;
      topScoresWidth : Integer;
      fontHeight : Integer;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out SimpleTextPaintable'Class; text : Unbounded_String; basicColor : BasicColor_Access);
   function Create (text : Unbounded_String; basicColor : BasicColor_Access) return SimpleTextPaintable_Access;
   procedure updateMeasurement (This : in out SimpleTextPaintable; graphics : Graphics_Access);
   procedure paint (This : in out SimpleTextPaintable; graphics : Graphics_Access);
   procedure setBasicColorP (This : in out SimpleTextPaintable; basicColor : BasicColor_Access);
   function getBasicColorP (This : in out SimpleTextPaintable) return BasicColor_Access;
   procedure setText (This : in out SimpleTextPaintable; text : Unbounded_String);
   function getText (This : in out SimpleTextPaintable) return Unbounded_String;

end org.allbinary.graphics.paint.SimpleTextPaintable_Package;


