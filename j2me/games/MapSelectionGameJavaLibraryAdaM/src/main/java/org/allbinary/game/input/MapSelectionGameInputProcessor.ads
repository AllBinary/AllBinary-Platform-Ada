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

limited with org.allbinary.game.input.MapSelectionGameInputProcessor_Package;
package org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References is
   type MapSelectionGameInputProcessor_Access is access all org.allbinary.game.input.MapSelectionGameInputProcessor_Package.MapSelectionGameInputProcessor'Class;
   type MapSelectionGameInputProcessor_Access_Array is array (Natural range <>) of MapSelectionGameInputProcessor_Access;
   type MapSelectionGameInputProcessor_Access_Array_Access is access all MapSelectionGameInputProcessor_Access_Array;
   type MapSelectionGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of MapSelectionGameInputProcessor_Access_Array_Access;
   type MapSelectionGameInputProcessor_Access_Array_Access_Array_Access is access all MapSelectionGameInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References;

with org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
limited with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References;
limited with org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ABRunnable_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;

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
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   subtype PreGameSelectorPaintable_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access;
   use type PreGameSelectorPaintable_Access;
   subtype PreGameSelectorPaintable_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array;
   use type PreGameSelectorPaintable_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access;
   use type PreGameSelectorPaintable_Access_Array_Access;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array;
   use type PreGameSelectorPaintable_Access_Array_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   use type PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype ABRunnable_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access;
   use type ABRunnable_Access;
   subtype ABRunnable_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array;
   use type ABRunnable_Access_Array;
   subtype ABRunnable_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access;
   use type ABRunnable_Access_Array_Access;
   subtype ABRunnable_Access_Array_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array;
   use type ABRunnable_Access_Array_Access_Array;
   subtype ABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array_Access;
   use type ABRunnable_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MapSelectionGameInputProcessor_Access is org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References.MapSelectionGameInputProcessor_Access;
   function "=" (Left, Right : MapSelectionGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References."=";
   subtype MapSelectionGameInputProcessor_Access_Array is org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References.MapSelectionGameInputProcessor_Access_Array;
   function "=" (Left, Right : MapSelectionGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References."=";
   subtype MapSelectionGameInputProcessor_Access_Array_Access is org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References.MapSelectionGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : MapSelectionGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References."=";
   subtype MapSelectionGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References.MapSelectionGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MapSelectionGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References."=";
   subtype MapSelectionGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References.MapSelectionGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MapSelectionGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.MapSelectionGameInputProcessor_Package_References."=";

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

limited with org.allbinary.game.input.MapSelectionRunnable_Package;
package org.allbinary.game.input.MapSelectionRunnable_Package_References is
   type MapSelectionRunnable_Access is access all org.allbinary.game.input.MapSelectionRunnable_Package.MapSelectionRunnable'Class;
   type MapSelectionRunnable_Access_Array is array (Natural range <>) of MapSelectionRunnable_Access;
   type MapSelectionRunnable_Access_Array_Access is access all MapSelectionRunnable_Access_Array;
   type MapSelectionRunnable_Access_Array_Access_Array is array (Natural range <>) of MapSelectionRunnable_Access_Array_Access;
   type MapSelectionRunnable_Access_Array_Access_Array_Access is access all MapSelectionRunnable_Access_Array_Access_Array;
end org.allbinary.game.input.MapSelectionRunnable_Package_References;

with org.allbinary.game.input.MapSelectionRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
limited with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;

package org.allbinary.game.input.MapSelectionRunnable_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package PreGameSelectorPaintable_Package renames Standard.org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   use type Processor_Access;
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   use type Processor_Access_Array;
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   use type Processor_Access_Array_Access;
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   use type Processor_Access_Array_Access_Array;
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   use type Processor_Access_Array_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   subtype PreGameSelectorPaintable_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access;
   use type PreGameSelectorPaintable_Access;
   subtype PreGameSelectorPaintable_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array;
   use type PreGameSelectorPaintable_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access;
   use type PreGameSelectorPaintable_Access_Array_Access;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array;
   use type PreGameSelectorPaintable_Access_Array_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   use type PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype GameInputProcessorInterface_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access;
   use type GameInputProcessorInterface_Access;
   subtype GameInputProcessorInterface_Access_Array is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array;
   use type GameInputProcessorInterface_Access_Array;
   subtype GameInputProcessorInterface_Access_Array_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access;
   use type GameInputProcessorInterface_Access_Array_Access;
   subtype GameInputProcessorInterface_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access_Array;
   use type GameInputProcessorInterface_Access_Array_Access_Array;
   subtype GameInputProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access_Array_Access;
   use type GameInputProcessorInterface_Access_Array_Access_Array_Access;
   subtype PlayerGameInputCompositeInterface_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access;
   use type PlayerGameInputCompositeInterface_Access;
   subtype PlayerGameInputCompositeInterface_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array;
   use type PlayerGameInputCompositeInterface_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access;
   use type PlayerGameInputCompositeInterface_Access_Array_Access;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   use type PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   use type PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MapSelectionRunnable_Access is org.allbinary.game.input.MapSelectionRunnable_Package_References.MapSelectionRunnable_Access;
   function "=" (Left, Right : MapSelectionRunnable_Access) return Boolean renames org.allbinary.game.input.MapSelectionRunnable_Package_References."=";
   subtype MapSelectionRunnable_Access_Array is org.allbinary.game.input.MapSelectionRunnable_Package_References.MapSelectionRunnable_Access_Array;
   function "=" (Left, Right : MapSelectionRunnable_Access_Array) return Boolean renames org.allbinary.game.input.MapSelectionRunnable_Package_References."=";
   subtype MapSelectionRunnable_Access_Array_Access is org.allbinary.game.input.MapSelectionRunnable_Package_References.MapSelectionRunnable_Access_Array_Access;
   function "=" (Left, Right : MapSelectionRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.input.MapSelectionRunnable_Package_References."=";
   subtype MapSelectionRunnable_Access_Array_Access_Array is org.allbinary.game.input.MapSelectionRunnable_Package_References.MapSelectionRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : MapSelectionRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.MapSelectionRunnable_Package_References."=";
   subtype MapSelectionRunnable_Access_Array_Access_Array_Access is org.allbinary.game.input.MapSelectionRunnable_Package_References.MapSelectionRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MapSelectionRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.MapSelectionRunnable_Package_References."=";

   type MapSelectionRunnable is new ABRunnable with record
      inputProcessor : MapSelectionGameInputProcessor_Access;
   end record;

   procedure Initialize (This : in out MapSelectionRunnable'Class; inputProcessor_Param : access MapSelectionGameInputProcessor_Package.MapSelectionGameInputProcessor'Class);
   function Create (inputProcessor_Param : access MapSelectionGameInputProcessor_Package.MapSelectionGameInputProcessor'Class) return MapSelectionRunnable_Access;
   procedure run (This : in out MapSelectionRunnable);

end org.allbinary.game.input.MapSelectionRunnable_Package;


