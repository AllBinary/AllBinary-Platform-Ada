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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package; use org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package; use org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References;
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ABRunnable_Package_References;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;
with org.allbinary.game.input.MapSelectionRunnable_Package; use org.allbinary.game.input.MapSelectionRunnable_Package;
with org.allbinary.game.input.GameInputProcessorComposite_Package; use org.allbinary.game.input.GameInputProcessorComposite_Package;
with org.allbinary.game.input.MapSelectionRunnable_Package;

package body org.allbinary.game.input.MapSelectionGameInputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package LockedFeatureNotificationUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package GameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package ThreadObjectUtil_Package renames Standard.org.allbinary.thread.ThreadObjectUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype PreGameSelectorPaintable_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype ABRunnable_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access;
   function "=" (Left, Right : ABRunnable_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array;
   function "=" (Left, Right : ABRunnable_Access_Array) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access;
   function "=" (Left, Right : ABRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ABRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   function "=" (Left, Right : PlayerGameInput_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   procedure Initialize_Fields (This : in out MapSelectionGameInputProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      This.inputTimeHelper := TimeDelayHelper_Package.Create (650);
      
      
      This.abRunnable := ABRunnable_Access (MapSelectionRunnable_Package.Create (MapSelectionGameInputProcessor_Access'(This'Unchecked_Access)));
   end Initialize_Fields;


   procedure Initialize (This : in out MapSelectionGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; raceTrackGeographicMapInterfaceFactoryInterface_Param : access MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface'Class; mapSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; lockedIndex : Integer) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
      raceTrackGeographicMapInterfaceFactoryInterface : constant MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access := MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access (raceTrackGeographicMapInterfaceFactoryInterface_Param);
      mapSelectorPaintable : constant PreGameSelectorPaintable_Access := PreGameSelectorPaintable_Access (mapSelectorPaintable_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
        This.raceTrackGeographicMapInterfaceFactoryInterface := raceTrackGeographicMapInterfaceFactoryInterface;
        This.preGameSelectorPaintable := mapSelectorPaintable;
        This.playerGameInput := PlayerGameInput_Access (GameInputProcessorComposite_Package.Create (To_Unbounded_String ("Map Selection"), MapSelectionGameInputProcessor_Access'(This'Unchecked_Access)));
        This.lockedIndex := lockedIndex;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; raceTrackGeographicMapInterfaceFactoryInterface_Param : access MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface'Class; mapSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; lockedIndex : Integer) return MapSelectionGameInputProcessor_Access is
      This : constant MapSelectionGameInputProcessor_Access := new MapSelectionGameInputProcessor;
   begin
      MapSelectionGameInputProcessor_Package.Initialize (This.all, gameCanvas_Param, raceTrackGeographicMapInterfaceFactoryInterface_Param, mapSelectorPaintable_Param, lockedIndex);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out MapSelectionGameInputProcessor) is
   begin
        MapSelectionGameInputProcessor'Class (This).getPlayerGameInput.update;
   end process;

   --  throws Exception
   procedure onInput (This : in out MapSelectionGameInputProcessor; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      anyType : Java_Object_Access;
      key : Integer;
      selectedIndex : Integer;
      index : Integer;
   begin
        size := list.size;
        for index in 0 .. (size) - 1 loop
            anyType := list.get (index);
            key := GameKeyEventUtil_Package.getKey (anyType);
            if ((((key) = (Canvas_Package.LEFT)) or else ((key) = (Canvas_Package.RIGHT))) or else ((key) = (Canvas_Package.UP))) or else ((key) = (Canvas_Package.DOWN)) then
                if This.inputTimeHelper.isTimeTNT then
                    SecondaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
                    This.preGameSelectorPaintable.getPreGameSelectionForm.processInputKey (key);
                    exit;
                end if;
            elsif (key) = (Canvas_Package.KEY_NUM0) then
                selectedIndex := This.preGameSelectorPaintable.getPreGameSelectionForm.getSelectedIndex;
                if ((selectedIndex) < (This.lockedIndex)) or else (not (LockedUtil_Package.getInstance.isLocked)) then
                    if not (This.abRunnable.isRunning) then
                        This.abRunnable.setRunning (True);
                        ThreadObjectUtil_Package.getInstance.processThread (This.abRunnable);
                    end if;
                    exit;
                else
                    LockedFeatureNotificationUtil_Package.getInstance.fire;
                end if;
            end if;
            list.clear;
        end loop;
   end onInput;

   --  throws Exception
   procedure processInput (This : in out MapSelectionGameInputProcessor; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
   begin
        null;
   end processInput;

   procedure initInputProcessors (This : in out MapSelectionGameInputProcessor) is
   begin
        null;
   end initInputProcessors;

   function getName (This : in out MapSelectionGameInputProcessor) return Unbounded_String is
   begin
        return MapSelectionGameInputProcessor'Class (This).toString;
   end getName;

   function getPlayerGameInput (This : in out MapSelectionGameInputProcessor) return PlayerGameInput_Access is
   begin
        return This.playerGameInput;
   end getPlayerGameInput;

end org.allbinary.game.input.MapSelectionGameInputProcessor_Package;


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package; use org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package; use org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References;
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.GameInputProcessorInterface_Package_References;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;
with org.allbinary.game.input.GameInputProcessorComposite_Package; use org.allbinary.game.input.GameInputProcessorComposite_Package;
with org.allbinary.game.input.MapSelectionGameInputProcessor_Package;

package body org.allbinary.game.input.MapSelectionRunnable_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package LockedFeatureNotificationUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package GameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package ThreadObjectUtil_Package renames Standard.org.allbinary.thread.ThreadObjectUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   function "=" (Left, Right : Processor_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   function "=" (Left, Right : Processor_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   function "=" (Left, Right : Processor_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype PreGameSelectorPaintable_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype GameInputProcessorInterface_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access;
   function "=" (Left, Right : GameInputProcessorInterface_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype GameInputProcessorInterface_Access_Array is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array;
   function "=" (Left, Right : GameInputProcessorInterface_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype GameInputProcessorInterface_Access_Array_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype GameInputProcessorInterface_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype GameInputProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   function "=" (Left, Right : PlayerGameInput_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   procedure Initialize_Fields (This : in out MapSelectionRunnable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out MapSelectionRunnable'Class; inputProcessor_Param : access MapSelectionGameInputProcessor_Package.MapSelectionGameInputProcessor'Class) is
      inputProcessor : constant MapSelectionGameInputProcessor_Access := MapSelectionGameInputProcessor_Access (inputProcessor_Param);
   begin
      ABRunnable_Package.Initialize (This);
      Initialize_Fields (This);
            This.inputProcessor := inputProcessor;
   end Initialize;

   function Create (inputProcessor_Param : access MapSelectionGameInputProcessor_Package.MapSelectionGameInputProcessor'Class) return MapSelectionRunnable_Access is
      This : constant MapSelectionRunnable_Access := new MapSelectionRunnable;
   begin
      MapSelectionRunnable_Package.Initialize (This.all, inputProcessor_Param);
      return This;
   end Create;
    
   procedure run (This : in out MapSelectionRunnable) is
      track : Integer;
      wave : Integer;
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
            begin
                MapSelectionGameInputProcessor'Class (This).setRunning (True);
                SecondaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
                track := (This.inputProcessor.preGameSelectorPaintable.getPreGameSelectionForm.getSelectedIndex) + (1);
                wave := This.inputProcessor.raceTrackGeographicMapInterfaceFactoryInterface.getFirstWaveWithTrack (track);
                This.inputProcessor.gameCanvas.getLayerManager.getGameInfo.setCurrentLevel (wave);
                This.inputProcessor.gameCanvas.buildGameInit (False);
                GameKeyEventHandler_Package.getInstance.removeListener (This.inputProcessor.getPlayerGameInput);
                MapSelectionGameInputProcessor'Class (This).setRunning (False);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                MapSelectionGameInputProcessor'Class (This).setRunning (False);
                logUtil := LogUtil_Package.getInstance;
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.put (commonStrings.EXCEPTION_Id, MapSelectionGameInputProcessor_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                    end;
            end;
   end run;

end org.allbinary.game.input.MapSelectionRunnable_Package;


