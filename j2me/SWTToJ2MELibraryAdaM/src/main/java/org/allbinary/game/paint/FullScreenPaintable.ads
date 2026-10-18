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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.paint.FullScreenPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type FullScreenPaintable is tagged;
   type FullScreenPaintable_Access is access all FullScreenPaintable'Class;
   type FullScreenPaintable_Access_Array is array (Natural range <>) of FullScreenPaintable_Access;
   type FullScreenPaintable_Access_Array_Access is access all FullScreenPaintable_Access_Array;
   type FullScreenPaintable_Access_Array_Access_Array is array (Natural range <>) of FullScreenPaintable_Access_Array_Access;
   type FullScreenPaintable_Access_Array_Access_Array_Access is access all FullScreenPaintable_Access_Array_Access_Array;

   type FullScreenPaintable is new Paintable and UpdateMyFontInterface with record
      displayInfo : DisplayInfoSingleton_Access;
      myFontProcessor : MyFontProcessor_Access;
      FULLSCREEN_TEXT : Unbounded_String;
      anchor : Integer;
      Y : Integer;
      beginWidth : Integer;
   end record;

   procedure Initialize (This : in out FullScreenPaintable'Class);
   function Create return FullScreenPaintable_Access;
   function getInstance return FullScreenPaintable_Access;
   procedure updateMeasurement (This : in out FullScreenPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out FullScreenPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.paint.FullScreenPaintable_Package;


