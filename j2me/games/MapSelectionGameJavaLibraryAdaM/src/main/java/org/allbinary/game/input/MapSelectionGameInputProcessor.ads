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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.MapSelectionGameInputProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package PreGameSelectorPaintable_Package renames Standard.org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type MapSelectionGameInputProcessor is tagged;
   type MapSelectionGameInputProcessor_Access is access all MapSelectionGameInputProcessor'Class;
   type MapSelectionGameInputProcessor_Access_Array is array (Natural range <>) of MapSelectionGameInputProcessor_Access;
   type MapSelectionGameInputProcessor_Access_Array_Access is access all MapSelectionGameInputProcessor_Access_Array;
   type MapSelectionGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of MapSelectionGameInputProcessor_Access_Array_Access;
   type MapSelectionGameInputProcessor_Access_Array_Access_Array_Access is access all MapSelectionGameInputProcessor_Access_Array_Access_Array;

   type MapSelectionGameInputProcessor is new Processor and GameInputProcessorInterface and PlayerGameInputCompositeInterface with record
      logUtil : LogUtil_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      raceTrackGeographicMapInterfaceFactoryInterface : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
      preGameSelectorPaintable : PreGameSelectorPaintable_Access;
      inputTimeHelper : TimeDelayHelper_Access;
      playerGameInput : PlayerGameInput_Access;
      lockedIndex : Integer;
      abRunnable : ABRunnable_Access;
   end record;

   procedure Initialize (This : in out MapSelectionGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; raceTrackGeographicMapInterfaceFactoryInterface_Param : access MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface'Class; mapSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; lockedIndex : Integer);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; raceTrackGeographicMapInterfaceFactoryInterface_Param : access MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface'Class; mapSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; lockedIndex : Integer) return MapSelectionGameInputProcessor_Access;
   procedure process (This : in out MapSelectionGameInputProcessor);
   procedure onInput (This : in out MapSelectionGameInputProcessor; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure processInput (This : in out MapSelectionGameInputProcessor; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure initInputProcessors (This : in out MapSelectionGameInputProcessor);
   function getName (This : in out MapSelectionGameInputProcessor) return Unbounded_String;
   function getPlayerGameInput (This : in out MapSelectionGameInputProcessor) return PlayerGameInput_Access;

end org.allbinary.game.input.MapSelectionGameInputProcessor_Package;


