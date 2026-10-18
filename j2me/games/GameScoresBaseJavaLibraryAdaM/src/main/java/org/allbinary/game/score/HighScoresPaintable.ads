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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.ColorChangeListener_Package; use org.allbinary.graphics.color.ColorChangeListener_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;

package org.allbinary.game.score.HighScoresPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorChangeListener_Package renames Standard.org.allbinary.graphics.color.ColorChangeListener_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type HighScoresPaintable is tagged;
   type HighScoresPaintable_Access is access all HighScoresPaintable'Class;
   type HighScoresPaintable_Access_Array is array (Natural range <>) of HighScoresPaintable_Access;
   type HighScoresPaintable_Access_Array_Access is access all HighScoresPaintable_Access_Array;
   type HighScoresPaintable_Access_Array_Access_Array is array (Natural range <>) of HighScoresPaintable_Access_Array_Access;
   type HighScoresPaintable_Access_Array_Access_Array_Access is access all HighScoresPaintable_Access_Array_Access_Array;

   type HighScoresPaintable is new Paintable and ColorChangeListener and UpdateMyFontInterface with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      myFontProcessor : MyFontProcessor_Access;
      basicColor : BasicColor_Access;
      highScores : HighScores_Access;
      anchor : Integer;
      charHeight : Integer;
   end record;

   procedure Initialize (This : in out HighScoresPaintable'Class);
   function Create return HighScoresPaintable_Access;
   procedure updateMeasurement (This : in out HighScoresPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure onEvent (This : in out HighScoresPaintable; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure paint (This : in out HighScoresPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setBasicColorP (This : in out HighScoresPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out HighScoresPaintable) return BasicColor_Access;
   procedure setHighScores (This : in out HighScoresPaintable; highScores_Param : access HighScores_Package.HighScores'Class);

end org.allbinary.game.score.HighScoresPaintable_Package;


