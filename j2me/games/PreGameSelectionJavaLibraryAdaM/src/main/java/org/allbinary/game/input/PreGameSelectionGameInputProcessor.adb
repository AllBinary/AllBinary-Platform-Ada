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
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEventUtil_Package; use org.allbinary.game.input.event.GameKeyEventUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.game.input.GameInputProcessorComposite_Package; use org.allbinary.game.input.GameInputProcessorComposite_Package;

package body org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package LockedFeatureNotificationUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package GameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package GameKeyEventUtil_Package renames Standard.org.allbinary.game.input.event.GameKeyEventUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package ThreadObjectUtil_Package renames Standard.org.allbinary.thread.ThreadObjectUtil_Package;
   procedure Initialize_Fields (This : in out PreGameSelectionGameInputProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      This.inputTimeHelper := TimeDelayHelper_Package.Create (650);
      
      
      
      This.abRunnable := ABRunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--          
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        commonStrings : CommonStrings_Access;
--     begin
--              begin
--                  PreGameSelectionGameInputProcessor'Class (This).setRunning (True);
--                  SecondaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
--                  This.gameCanvas.setGameState (This.nextGameState);
--                  GameKeyEventHandler_Package.getInstance.removeListener (PreGameSelectionGameInputProcessor'Class (This).getPlayerGameInput);
--                  PreGameSelectionGameInputProcessor'Class (This).setRunning (False);
--              exception
--                  when Java_Occurrence : others =>
--                      declare
--                          e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                      begin
--                  PreGameSelectionGameInputProcessor'Class (This).setRunning (False);
--                  logUtil := LogUtil_Package.getInstance;
--                  commonStrings := CommonStrings_Package.getInstance;
--                  logUtil.put (commonStrings.EXCEPTION_Id, PreGameSelectionGameInputProcessor_Access'(This'Unchecked_Access), commonStrings.RUN, e);
--                      end;
--              end;
--     end run;
;
   end Initialize_Fields;


   procedure Initialize (This : in out PreGameSelectionGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; preGameSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; nextGameState_Param : access GameState_Package.GameState'Class; lockedIndex : Integer) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
      preGameSelectorPaintable : constant PreGameSelectorPaintable_Access := PreGameSelectorPaintable_Access (preGameSelectorPaintable_Param);
      nextGameState : constant GameState_Access := GameState_Access (nextGameState_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
        This.preGameSelectorPaintable := preGameSelectorPaintable;
        This.nextGameState := nextGameState;
        This.playerGameInput := PlayerGameInput_Access (GameInputProcessorComposite_Package.Create (To_Unbounded_String ("Pre Game Selection"), PreGameSelectionGameInputProcessor_Access'(This'Unchecked_Access)));
        This.lockedIndex := lockedIndex;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; preGameSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; nextGameState_Param : access GameState_Package.GameState'Class; lockedIndex : Integer) return PreGameSelectionGameInputProcessor_Access is
      This : constant PreGameSelectionGameInputProcessor_Access := new PreGameSelectionGameInputProcessor;
   begin
      PreGameSelectionGameInputProcessor_Package.Initialize (This.all, gameCanvas_Param, preGameSelectorPaintable_Param, nextGameState_Param, lockedIndex);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out PreGameSelectionGameInputProcessor) is
   begin
        PreGameSelectionGameInputProcessor'Class (This).getPlayerGameInput.update;
   end process;

   --  throws Exception
   procedure onInput (This : in out PreGameSelectionGameInputProcessor; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
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
                    PreGameSelectionGameInputProcessor'Class (This).getPreGameSelectorPaintable.getPreGameSelectionForm.processInputKey (key);
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
        end loop;
        list.clear;
   end onInput;

   function getPreGameSelectorPaintable (This : in out PreGameSelectionGameInputProcessor) return PreGameSelectorPaintable_Access is
   begin
        return This.preGameSelectorPaintable;
   end getPreGameSelectorPaintable;

   --  throws Exception
   procedure processInput (This : in out PreGameSelectionGameInputProcessor; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
   begin
        null;
   end processInput;

   procedure initInputProcessors (This : in out PreGameSelectionGameInputProcessor) is
   begin
        null;
   end initInputProcessors;

   function getName (This : in out PreGameSelectionGameInputProcessor) return Unbounded_String is
   begin
        return PreGameSelectionGameInputProcessor'Class (This).toString;
   end getName;

   function getPlayerGameInput (This : in out PreGameSelectionGameInputProcessor) return PlayerGameInput_Access is
   begin
        return This.playerGameInput;
   end getPlayerGameInput;

end org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package;


