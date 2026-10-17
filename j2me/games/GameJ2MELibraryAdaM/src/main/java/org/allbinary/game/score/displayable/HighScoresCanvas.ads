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
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillPaintableFactory_Package; use org.allbinary.game.paint.ColorFillPaintableFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package; use org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresHelperBase_Package; use org.allbinary.game.score.HighScoresHelperBase_Package;
with org.allbinary.game.score.HighScoresPaintable_Package; use org.allbinary.game.score.HighScoresPaintable_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.NoHighScoresFactory_Package; use org.allbinary.game.score.NoHighScoresFactory_Package;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.SimpleTextPaintable_Package; use org.allbinary.graphics.paint.SimpleTextPaintable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.thread.SecondaryThreadPool_Package; use org.allbinary.thread.SecondaryThreadPool_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;

package org.allbinary.game.score.displayable.HighScoresCanvas_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameCommandCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ColorFillBasePaintable_Package renames Standard.org.allbinary.game.paint.ColorFillBasePaintable_Package;
   package ColorFillPaintableFactory_Package renames Standard.org.allbinary.game.paint.ColorFillPaintableFactory_Package;
   package HighScoreCommandsFactory_Package renames Standard.org.allbinary.game.score.HighScoreCommandsFactory_Package;
   package HighScores_Package renames Standard.org.allbinary.game.score.HighScores_Package;
   package HighScoresCanvasInputProcessor_Package renames Standard.org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
   package HighScoresCanvasInputProcessorFactoryInterface_Package renames Standard.org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
   package HighScoresFactoryInterface_Package renames Standard.org.allbinary.game.score.HighScoresFactoryInterface_Package;
   package HighScoresHelperBase_Package renames Standard.org.allbinary.game.score.HighScoresHelperBase_Package;
   package HighScoresPaintable_Package renames Standard.org.allbinary.game.score.HighScoresPaintable_Package;
   package HighScoresResultsListener_Package renames Standard.org.allbinary.game.score.HighScoresResultsListener_Package;
   package NoHighScoresFactory_Package renames Standard.org.allbinary.game.score.NoHighScoresFactory_Package;
   package NullHighScoresSingletonFactory_Package renames Standard.org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package SimpleTextPaintable_Package renames Standard.org.allbinary.graphics.paint.SimpleTextPaintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package SecondaryThreadPool_Package renames Standard.org.allbinary.thread.SecondaryThreadPool_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;

   type HighScoresCanvas is tagged;
   type HighScoresCanvas_Access is access all HighScoresCanvas'Class;
   type HighScoresCanvas_Access_Array is array (Natural range <>) of HighScoresCanvas_Access;
   type HighScoresCanvas_Access_Array_Access is access all HighScoresCanvas_Access_Array;

   type HighScoresCanvas is new GameCommandCanvas and HighScoresResultsListener with record
      paintable : Paintable_Access;
      highScoreCommandsFactory : HighScoreCommandsFactory_Access;
      waitPaintable : SimpleTextPaintable_Access;
      highScoresPaintable : HighScoresPaintable_Access;
      highScoresFactoryInterface : HighScoresFactoryInterface_Access;
      colorFillPaintable : ColorFillBasePaintable_Access;
      highScoresHelper : HighScoresHelperBase_Access;
      gameInfo : GameInfo_Access;
      highScoresCanvasInputProcessor : HighScoresCanvasInputProcessor_Access;
      currentCommand : Command_Access;
      hasPainted : Boolean;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out HighScoresCanvas'Class; commandListener_Param : access CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class; gameInfo_Param : access GameInfo'Class; paintable_Param : access HighScoresPaintable'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface'Class; highScoresCanvasInputProcessorFactoryInterface_Param : access HighScoresCanvasInputProcessorFactoryInterface'Class);
   function Create (commandListener_Param : access CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class; gameInfo_Param : access GameInfo'Class; paintable_Param : access HighScoresPaintable'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface'Class; highScoresCanvasInputProcessorFactoryInterface_Param : access HighScoresCanvasInputProcessorFactoryInterface'Class) return HighScoresCanvas_Access;
   procedure initCommands (This : in out HighScoresCanvas; cmdListener_Param : access CommandListener'Class);
   procedure open (This : in out HighScoresCanvas);
   procedure close (This : in out HighScoresCanvas);
   procedure paint (This : in out HighScoresCanvas; graphics_Param : access Graphics'Class);
   procedure executeUpdate (This : in out HighScoresCanvas);
   function getHighScoresPaintable (This : in out HighScoresCanvas) return HighScoresPaintable_Access;
   procedure setHighScoresArray (This : in out HighScoresCanvas; highScoresArray : HighScores_Access_Array_Access);
   procedure updateCommand (This : in out HighScoresCanvas; command_Param : access Command'Class);
   function getGameInfo (This : in out HighScoresCanvas) return GameInfo_Access;
   procedure setPaintable (This : in out HighScoresCanvas; paintable_Param : access Paintable'Class);

end org.allbinary.game.score.displayable.HighScoresCanvas_Package;


