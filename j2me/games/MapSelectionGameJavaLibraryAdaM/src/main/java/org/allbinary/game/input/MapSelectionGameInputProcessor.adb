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
with org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package; use org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.game.input.GameInputProcessorComposite_Package; use org.allbinary.game.input.GameInputProcessorComposite_Package;

package body org.allbinary.game.input.MapSelectionGameInputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package LockedFeatureNotificationUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package ThreadObjectUtil_Package renames Standard.org.allbinary.thread.ThreadObjectUtil_Package;
   procedure Initialize_Fields (This : in out MapSelectionGameInputProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      This.inputTimeHelper := TimeDelayHelper_Package.Create (650);
      
      
      This.abRunnable := ABRunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--          
--     procedure run (This : in out ) is
--        track : Integer;
--        wave : Integer;
--        logUtil : LogUtil_Access;
--        commonStrings : CommonStrings_Access;
--     begin
--              begin
--                  MapSelectionGameInputProcessor'Class (This).setRunning (True);
--                  SecondaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
--                  track := (This.preGameSelectorPaintable.getPreGameSelectionForm.getSelectedIndex) + (1);
--                  wave := This.raceTrackGeographicMapInterfaceFactoryInterface.getFirstWaveWithTrack (track);
--                  This.gameCanvas.getLayerManager.getGameInfo.setCurrentLevel (wave);
--                  This.gameCanvas.buildGameInit (False);
--                  GameKeyEventHandler_Package.getInstance.removeListener (MapSelectionGameInputProcessor'Class (This).getPlayerGameInput);
--                  MapSelectionGameInputProcessor'Class (This).setRunning (False);
--              exception
--                  when Java_Occurrence : others =>
--                      declare
--                          e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                      begin
--                  MapSelectionGameInputProcessor'Class (This).setRunning (False);
--                  logUtil := LogUtil_Package.getInstance;
--                  commonStrings := CommonStrings_Package.getInstance;
--                  logUtil.put (commonStrings.EXCEPTION_Id, MapSelectionGameInputProcessor_Access'(This'Unchecked_Access), commonStrings.RUN, e);
--                      end;
--              end;
--     end run;
;
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


