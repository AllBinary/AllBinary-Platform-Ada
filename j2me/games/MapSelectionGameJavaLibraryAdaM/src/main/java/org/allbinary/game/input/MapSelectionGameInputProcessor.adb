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


package body org.allbinary.game.input.MapSelectionGameInputProcessor_Package is

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
--                  This.setRunning (True);
--                  SecondaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
--                  track := (This.preGameSelectorPaintable.getPreGameSelectionForm.getSelectedIndex) + (1);
--                  wave := This.raceTrackGeographicMapInterfaceFactoryInterface.getFirstWaveWithTrack (track);
--                  This.gameCanvas.getLayerManager.getGameInfo.setCurrentLevel (wave);
--                  This.gameCanvas.buildGameInit (False);
--                  GameKeyEventHandler_Package.getInstance.removeListener (This.getPlayerGameInput);
--                  This.setRunning (False);
--              exception
--                  when Java_Occurrence : others =>
--                      declare
--                          e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                      begin
--                  This.setRunning (False);
--                  logUtil := LogUtil_Package.getInstance;
--                  commonStrings := CommonStrings_Package.getInstance;
--                  logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
--                      end;
--              end;
--     end run;
;
   end Initialize_Fields;


   procedure Initialize (This : in out MapSelectionGameInputProcessor'Class; gameCanvas : AllBinaryGameCanvas_Access; raceTrackGeographicMapInterfaceFactoryInterface : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access; mapSelectorPaintable : PreGameSelectorPaintable_Access; lockedIndex : Integer) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
        This.raceTrackGeographicMapInterfaceFactoryInterface := raceTrackGeographicMapInterfaceFactoryInterface;
        This.preGameSelectorPaintable := mapSelectorPaintable;
        This.playerGameInput := GameInputProcessorComposite_Package.Create (To_Unbounded_String ("Map Selection"), This'Unchecked_Access);
        This.lockedIndex := lockedIndex;
   end Initialize;

   function Create (gameCanvas : AllBinaryGameCanvas_Access; raceTrackGeographicMapInterfaceFactoryInterface : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access; mapSelectorPaintable : PreGameSelectorPaintable_Access; lockedIndex : Integer) return MapSelectionGameInputProcessor_Access is
      This : constant MapSelectionGameInputProcessor_Access := new MapSelectionGameInputProcessor;
   begin
      Initialize (This.all, gameCanvas, raceTrackGeographicMapInterfaceFactoryInterface, mapSelectorPaintable, lockedIndex);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out MapSelectionGameInputProcessor) is
   begin
        This.getPlayerGameInput.update;
   end process;

   --  throws Exception
   procedure onInput (This : in out MapSelectionGameInputProcessor; list : BasicArrayList_Access) is
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
   procedure processInput (This : in out MapSelectionGameInputProcessor; layerManager : AllBinaryLayerManager_Access) is
   begin
        null;
   end processInput;

   procedure initInputProcessors (This : in out MapSelectionGameInputProcessor) is
   begin
        null;
   end initInputProcessors;

   function getName (This : in out MapSelectionGameInputProcessor) return Unbounded_String is
   begin
        return This.toString;
   end getName;

   function getPlayerGameInput (This : in out MapSelectionGameInputProcessor) return PlayerGameInput_Access is
   begin
        return This.playerGameInput;
   end getPlayerGameInput;

   procedure getName (This : in out MapSelectionGameInputProcessor) is
      Java_Result : constant Unbounded_String := MapSelectionGameInputProcessor'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getPlayerGameInput (This : in out MapSelectionGameInputProcessor) is
      Java_Result : constant PlayerGameInput_Access := MapSelectionGameInputProcessor'Class (This).getPlayerGameInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlayerGameInput;

end org.allbinary.game.input.MapSelectionGameInputProcessor_Package;


