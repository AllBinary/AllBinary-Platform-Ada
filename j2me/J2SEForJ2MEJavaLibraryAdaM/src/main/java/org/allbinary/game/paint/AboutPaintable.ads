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
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.paint.AboutPaintable_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type AboutPaintable is tagged;
   type AboutPaintable_Access is access all AboutPaintable'Class;
   type AboutPaintable_Access_Array is array (Natural range <>) of AboutPaintable_Access;
   type AboutPaintable_Access_Array_Access is access all AboutPaintable_Access_Array;

   type AboutPaintable is new Paintable and UpdateMyFontInterface with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      ABOUT : Unbounded_String;
      info : Unbounded_String_Array_Access;
      developers : Unbounded_String_Array_Access;
      paintableArray : Paintable_Access_Array_Access;
      myFontProcessor : MyFontProcessor_Access;
      charHeight : Integer;
      aboutBeginWidth : Integer;
      infoBeginWidth : Integer_Array_Access;
      developersBeginWidth : Integer_Array_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out AboutPaintable'Class; info : Unbounded_String_Array_Access; developers : Unbounded_String_Array_Access);
   function Create (info : Unbounded_String_Array_Access; developers : Unbounded_String_Array_Access) return AboutPaintable_Access;
   function getInstance (info : Unbounded_String_Array_Access; developers : Unbounded_String_Array_Access) return AboutPaintable_Access;
   procedure getInstance (info : Unbounded_String_Array_Access; developers : Unbounded_String_Array_Access);
   procedure updateMeasurement (This : in out AboutPaintable; graphics : Graphics_Access);
   function getPaintableArrayInstance (This : in out AboutPaintable) return Paintable_Access_Array_Access;
   procedure paint (This : in out AboutPaintable; graphics : Graphics_Access);

end org.allbinary.game.paint.AboutPaintable_Package;


