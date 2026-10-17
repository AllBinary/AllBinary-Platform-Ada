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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package; use org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.score.HighScoresCanvasInputProcessor_Package is

   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type HighScoresCanvasInputProcessor is tagged;
   type HighScoresCanvasInputProcessor_Access is access all HighScoresCanvasInputProcessor'Class;
   type HighScoresCanvasInputProcessor_Access_Array is array (Natural range <>) of HighScoresCanvasInputProcessor_Access;
   type HighScoresCanvasInputProcessor_Access_Array_Access is access all HighScoresCanvasInputProcessor_Access_Array;

   type HighScoresCanvasInputProcessor is new PlayerGameInput with record
      highScoresCanvas : HighScoresCanvas_Access;
   end record;

   procedure Initialize (This : in out HighScoresCanvasInputProcessor'Class; highScoresCanvas : HighScoresCanvas_Access);
   function Create (highScoresCanvas : HighScoresCanvas_Access) return HighScoresCanvasInputProcessor_Access;
   procedure open (This : in out HighScoresCanvasInputProcessor);
   procedure close (This : in out HighScoresCanvasInputProcessor);
   procedure onPressGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent : GameKeyEvent_Access);
   procedure onDownGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent : GameKeyEvent_Access);
   procedure onUpGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent : GameKeyEvent_Access);
   procedure paint (This : in out HighScoresCanvasInputProcessor; graphics : Graphics_Access);
   function getHighScoresCanvas (This : in out HighScoresCanvasInputProcessor) return HighScoresCanvas_Access;
   procedure getHighScoresCanvas (This : in out HighScoresCanvasInputProcessor);

end org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;


