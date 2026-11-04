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

limited with org.allbinary.game.score.HighScoresPaintable_Package;
package org.allbinary.game.score.HighScoresPaintable_Package_References is
   type HighScoresPaintable_Access is access all org.allbinary.game.score.HighScoresPaintable_Package.HighScoresPaintable'Class;
   type HighScoresPaintable_Access_Array is array (Natural range <>) of HighScoresPaintable_Access;
   type HighScoresPaintable_Access_Array_Access is access all HighScoresPaintable_Access_Array;
   type HighScoresPaintable_Access_Array_Access_Array is array (Natural range <>) of HighScoresPaintable_Access_Array_Access;
   type HighScoresPaintable_Access_Array_Access_Array_Access is access all HighScoresPaintable_Access_Array_Access_Array;
end org.allbinary.game.score.HighScoresPaintable_Package_References;

with org.allbinary.game.score.HighScoresPaintable_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.ColorChangeListener_Package; use org.allbinary.graphics.color.ColorChangeListener_Package;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;

package org.allbinary.game.score.HighScoresPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorChangeListener_Package renames Standard.org.allbinary.graphics.color.ColorChangeListener_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   use type HighScores_Access;
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   use type HighScores_Access_Array;
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   use type HighScores_Access_Array_Access;
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   use type HighScores_Access_Array_Access_Array;
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   use type HighScores_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HighScoresPaintable_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access;
   function "=" (Left, Right : HighScoresPaintable_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array;
   function "=" (Left, Right : HighScoresPaintable_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access_Array is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";

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


