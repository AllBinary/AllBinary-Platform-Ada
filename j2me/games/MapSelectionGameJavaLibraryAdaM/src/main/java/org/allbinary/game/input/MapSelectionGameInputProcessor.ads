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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package; use org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package; use org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.GameInputProcessorComposite_Package; use org.allbinary.game.input.GameInputProcessorComposite_Package;

package org.allbinary.game.input.MapSelectionGameInputProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LockedFeatureNotificationUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package PreGameSelectorPaintable_Package renames Standard.org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
   package GameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
   package ThreadObjectUtil_Package renames Standard.org.allbinary.thread.ThreadObjectUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type MapSelectionGameInputProcessor is tagged;
   type MapSelectionGameInputProcessor_Access is access all MapSelectionGameInputProcessor'Class;
   type MapSelectionGameInputProcessor_Access_Array is array (Natural range <>) of MapSelectionGameInputProcessor_Access;
   type MapSelectionGameInputProcessor_Access_Array_Access is access all MapSelectionGameInputProcessor_Access_Array;

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

   procedure Initialize (This : in out MapSelectionGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas'Class; raceTrackGeographicMapInterfaceFactoryInterface_Param : access MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface'Class; mapSelectorPaintable_Param : access PreGameSelectorPaintable'Class; lockedIndex : Integer);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas'Class; raceTrackGeographicMapInterfaceFactoryInterface_Param : access MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface'Class; mapSelectorPaintable_Param : access PreGameSelectorPaintable'Class; lockedIndex : Integer) return MapSelectionGameInputProcessor_Access;
   procedure process (This : in out MapSelectionGameInputProcessor);
   procedure onInput (This : in out MapSelectionGameInputProcessor; list_Param : access BasicArrayList'Class);
   procedure processInput (This : in out MapSelectionGameInputProcessor; layerManager_Param : access AllBinaryLayerManager'Class);
   procedure initInputProcessors (This : in out MapSelectionGameInputProcessor);
   function getName (This : in out MapSelectionGameInputProcessor) return Unbounded_String;
   function getPlayerGameInput (This : in out MapSelectionGameInputProcessor) return PlayerGameInput_Access;

end org.allbinary.game.input.MapSelectionGameInputProcessor_Package;


