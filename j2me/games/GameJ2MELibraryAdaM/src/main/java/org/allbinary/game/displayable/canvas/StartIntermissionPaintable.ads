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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.FontDebugFactory_Package; use org.allbinary.graphics.font.FontDebugFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package FontDebugFactory_Package renames Standard.org.allbinary.graphics.font.FontDebugFactory_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type StartIntermissionPaintable is tagged;
   type StartIntermissionPaintable_Access is access all StartIntermissionPaintable'Class;
   type StartIntermissionPaintable_Access_Array is array (Natural range <>) of StartIntermissionPaintable_Access;
   type StartIntermissionPaintable_Access_Array_Access is access all StartIntermissionPaintable_Access_Array;

   type StartIntermissionPaintable is new InitUpdatePaintable and UpdateMyFontInterface with record
      fontDebugFactory : FontDebugFactory_Access;
      basicSetColorUtil : BasicColorSetUtil_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      stringArray : Unbounded_String_Array_Access;
      fontSize : Integer;
      font : Font_Access;
      lastWidth : Integer_Array_Access;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      basicColor : BasicColor_Access;
      color : Integer;
      lineYOffsetArray : Integer_Array_Access;
      hasChanged : Boolean;
      anchor : Integer;
      fontHeightP : Integer;
      BEGIN_LEVEL : Unbounded_String;
      EMPTY_STRING : Unbounded_String;
   end record;

   procedure Initialize (This : in out StartIntermissionPaintable'Class; gameCanvas : AllBinaryGameCanvas_Access; stringArray : Unbounded_String_Array_Access; basicColor : BasicColor_Access; font : Font_Access);
   function Create (gameCanvas : AllBinaryGameCanvas_Access; stringArray : Unbounded_String_Array_Access; basicColor : BasicColor_Access; font : Font_Access) return StartIntermissionPaintable_Access;
   procedure updateMeasurement (This : in out StartIntermissionPaintable; graphics : Graphics_Access);
   procedure paint (This : in out StartIntermissionPaintable; graphics : Graphics_Access);
   procedure update (This : in out StartIntermissionPaintable);
   procedure setBasicColorP (This : in out StartIntermissionPaintable; basicColor : BasicColor_Access);
   function getBasicColorP (This : in out StartIntermissionPaintable) return BasicColor_Access;

end org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package;


