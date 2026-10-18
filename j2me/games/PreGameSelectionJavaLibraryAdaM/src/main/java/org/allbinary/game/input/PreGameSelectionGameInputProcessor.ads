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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package; use org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package PreGameSelectorPaintable_Package renames Standard.org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type PreGameSelectionGameInputProcessor is tagged;
   type PreGameSelectionGameInputProcessor_Access is access all PreGameSelectionGameInputProcessor'Class;
   type PreGameSelectionGameInputProcessor_Access_Array is array (Natural range <>) of PreGameSelectionGameInputProcessor_Access;
   type PreGameSelectionGameInputProcessor_Access_Array_Access is access all PreGameSelectionGameInputProcessor_Access_Array;
   type PreGameSelectionGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of PreGameSelectionGameInputProcessor_Access_Array_Access;
   type PreGameSelectionGameInputProcessor_Access_Array_Access_Array_Access is access all PreGameSelectionGameInputProcessor_Access_Array_Access_Array;

   type PreGameSelectionGameInputProcessor is new Processor and GameInputProcessorInterface and PlayerGameInputCompositeInterface with record
      logUtil : LogUtil_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      preGameSelectorPaintable : PreGameSelectorPaintable_Access;
      inputTimeHelper : TimeDelayHelper_Access;
      nextGameState : GameState_Access;
      playerGameInput : PlayerGameInput_Access;
      lockedIndex : Integer;
      abRunnable : ABRunnable_Access;
   end record;

   procedure Initialize (This : in out PreGameSelectionGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; preGameSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; nextGameState_Param : access GameState_Package.GameState'Class; lockedIndex : Integer);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; preGameSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; nextGameState_Param : access GameState_Package.GameState'Class; lockedIndex : Integer) return PreGameSelectionGameInputProcessor_Access;
   procedure process (This : in out PreGameSelectionGameInputProcessor);
   procedure onInput (This : in out PreGameSelectionGameInputProcessor; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getPreGameSelectorPaintable (This : in out PreGameSelectionGameInputProcessor) return PreGameSelectorPaintable_Access;
   procedure processInput (This : in out PreGameSelectionGameInputProcessor; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure initInputProcessors (This : in out PreGameSelectionGameInputProcessor);
   function getName (This : in out PreGameSelectionGameInputProcessor) return Unbounded_String;
   function getPlayerGameInput (This : in out PreGameSelectionGameInputProcessor) return PlayerGameInput_Access;

end org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package;


