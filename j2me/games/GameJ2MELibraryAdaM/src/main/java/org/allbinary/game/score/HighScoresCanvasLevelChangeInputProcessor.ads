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
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package; use org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;

package org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type HighScoresCanvasLevelChangeInputProcessor is tagged;
   type HighScoresCanvasLevelChangeInputProcessor_Access is access all HighScoresCanvasLevelChangeInputProcessor'Class;
   type HighScoresCanvasLevelChangeInputProcessor_Access_Array is array (Natural range <>) of HighScoresCanvasLevelChangeInputProcessor_Access;
   type HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access is access all HighScoresCanvasLevelChangeInputProcessor_Access_Array;

   type HighScoresCanvasLevelChangeInputProcessor is new HighScoresCanvasInputProcessor and UpdateMyFontInterface with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      INSTRUCTIONS : Unbounded_String;
      myFontProcessor : MyFontProcessor_Access;
      anchor : Integer;
      fontHeight : Integer;
   end record;

   procedure Initialize (This : in out HighScoresCanvasLevelChangeInputProcessor'Class; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class);
   function Create (highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) return HighScoresCanvasLevelChangeInputProcessor_Access;
   procedure updateMeasurement (This : in out HighScoresCanvasLevelChangeInputProcessor; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure open (This : in out HighScoresCanvasLevelChangeInputProcessor);
   procedure close (This : in out HighScoresCanvasLevelChangeInputProcessor);
   procedure update (This : in out HighScoresCanvasLevelChangeInputProcessor);
   procedure paint (This : in out HighScoresCanvasLevelChangeInputProcessor; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package;


