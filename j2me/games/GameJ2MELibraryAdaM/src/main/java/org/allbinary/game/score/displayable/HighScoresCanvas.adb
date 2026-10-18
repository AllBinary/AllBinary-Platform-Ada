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


with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.paint.ColorFillPaintableFactory_Package; use org.allbinary.game.paint.ColorFillPaintableFactory_Package;
with org.allbinary.game.score.NoHighScoresFactory_Package; use org.allbinary.game.score.NoHighScoresFactory_Package;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.thread.SecondaryThreadPool_Package; use org.allbinary.thread.SecondaryThreadPool_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;

package body org.allbinary.game.score.displayable.HighScoresCanvas_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package ColorFillPaintableFactory_Package renames Standard.org.allbinary.game.paint.ColorFillPaintableFactory_Package;
   package NoHighScoresFactory_Package renames Standard.org.allbinary.game.score.NoHighScoresFactory_Package;
   package NullHighScoresSingletonFactory_Package renames Standard.org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package SecondaryThreadPool_Package renames Standard.org.allbinary.thread.SecondaryThreadPool_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;
   procedure Initialize_Fields (This : in out HighScoresCanvas'Class) is
   begin
      null;
      This.paintable := NullPaintable_Package.getInstance;
      This.highScoreCommandsFactory := HighScoreCommandsFactory_Package.getInstance;
      This.waitPaintable := SimpleTextPaintable_Package.Create (This.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory_Package.getInstance.WHITE);
      
      
      
      This.highScoresHelper := HighScoresHelperBase_Package.Create;
      
      
      This.currentCommand := This.highScoreCommandsFactory.HIGH_SCORE_COMMANDS (0);
      This.hasPainted := False;
   end Initialize_Fields;


   procedure Initialize (This : in out HighScoresCanvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; paintable_Param : access HighScoresPaintable_Package.HighScoresPaintable'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresCanvasInputProcessorFactoryInterface_Param : access HighScoresCanvasInputProcessorFactoryInterface_Package.HighScoresCanvasInputProcessorFactoryInterface'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      paintable : constant HighScoresPaintable_Access := HighScoresPaintable_Access (paintable_Param);
      highScoresFactoryInterface : constant HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      highScoresCanvasInputProcessorFactoryInterface : constant HighScoresCanvasInputProcessorFactoryInterface_Access := HighScoresCanvasInputProcessorFactoryInterface_Access (highScoresCanvasInputProcessorFactoryInterface_Param);
   begin
        GameCommandCanvas_Package.Initialize (This, commandListener, HighScoresCanvas_Package.NAME, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.highScoresPaintable := paintable;
        This.highScoresFactoryInterface := highScoresFactoryInterface;
        This.highScoresCanvasInputProcessor := highScoresCanvasInputProcessorFactoryInterface.getInstance (HighScoresCanvas_Access'(This'Unchecked_Access));
        This.gameInfo := gameInfo;
        This.waitPaintable.setBasicColorP (allBinaryGameLayerManager.getForegroundBasicColor);
        HighScoresCanvas'Class (This).getHighScoresPaintable.setBasicColorP (allBinaryGameLayerManager.getForegroundBasicColor);
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
        if (This.highScoresHelper.getHighScoresArray) = (NoHighScoresFactory_Package.getInstance.NO_HIGH_SCORES) then
            HighScoresCanvas'Class (This).setPaintable (This.waitPaintable);
        else
            This.logUtil.putF (To_Unbounded_String ("Show HighScores that are already loaded"), HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            HighScoresCanvas'Class (This).updateCommand (This.currentCommand);
            HighScoresCanvas'Class (This).setPaintable (HighScoresCanvas'Class (This).getHighScoresPaintable);
        end if;
        --  Java nested class HighScoreRunnable: move it to its own package
        SecondaryThreadPool_Package.getInstance.runTask (HighScoreRunnable_Package.Create (HighScoresCanvas_Access'(This'Unchecked_Access)));
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; paintable_Param : access HighScoresPaintable_Package.HighScoresPaintable'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; highScoresCanvasInputProcessorFactoryInterface_Param : access HighScoresCanvasInputProcessorFactoryInterface_Package.HighScoresCanvasInputProcessorFactoryInterface'Class) return HighScoresCanvas_Access is
      This : constant HighScoresCanvas_Access := new HighScoresCanvas;
   begin
      HighScoresCanvas_Package.Initialize (This.all, commandListener_Param, allBinaryGameLayerManager_Param, gameInfo_Param, paintable_Param, highScoresFactoryInterface_Param, highScoresCanvasInputProcessorFactoryInterface_Param);
      return This;
   end Create;

   procedure initCommands (This : in out HighScoresCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        HighScoresCanvas'Class (This).removeAllCommands;
        HighScoresCanvas'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        HighScoresCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure open (This : in out HighScoresCanvas) is
   begin
        GameCommandCanvas (This).open;
        This.highScoresCanvasInputProcessor.open;
   end open;

   --  throws Exception
   procedure close (This : in out HighScoresCanvas) is
   begin
        GameCommandCanvas (This).close;
        This.highScoresCanvasInputProcessor.close;
   end close;

   procedure paint (This : in out HighScoresCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.colorFillPaintable.paint (graphics);
        This.paintable.paint (graphics);
        if (This.waitPaintable) /= (This.paintable) then
            This.highScoresCanvasInputProcessor.paint (graphics);
        end if;
        GameCommandCanvas (This).paint (graphics);
        This.hasPainted := True;
   end paint;

   procedure executeUpdate (This : in out HighScoresCanvas) is
   begin
        begin
            This.highScoresFactoryInterface.fetchHighScores (HighScoresCanvas'Class (This).getGameInfo, HighScoresCanvas_Access'(This'Unchecked_Access));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.UPDATE, e);
                end;
        end;
   end executeUpdate;

   function getHighScoresPaintable (This : in out HighScoresCanvas) return HighScoresPaintable_Access is
   begin
        return This.highScoresPaintable;
   end getHighScoresPaintable;

   procedure setHighScoresArray (This : in out HighScoresCanvas; highScoresArray : HighScores_Access_Array_Access) is
   begin
        begin
            if (highScoresArray) /= (null) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).appendint (highScoresArray'Length).toString, HighScoresCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setHighScoresArray"));
            else
                This.logUtil.putF (This.commonStrings.START, HighScoresCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setHighScoresArray"));
            end if;
            This.highScoresHelper.setHighScoresArray (highScoresArray);
            HighScoresCanvas'Class (This).updateCommand (This.currentCommand);
            HighScoresCanvas'Class (This).setPaintable (HighScoresCanvas'Class (This).getHighScoresPaintable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.UPDATE, e);
                end;
        end;
   end setHighScoresArray;

   --  throws Exception
   procedure updateCommand (This : in out HighScoresCanvas; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
      gameCommandsFactory : GameCommandsFactory_Access;
      index : Integer;
      nextIndex : Integer;
      highScoresArray : HighScores_Access_Array_Access;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (This.stringUtil.toString (command)).toString, HighScoresCanvas_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        if This.highScoreCommandsFactory.isHighScoreCommand (command) then
            index := This.highScoreCommandsFactory.getIndex (command);
            nextIndex := (index) + (1);
            highScoresArray := This.highScoresHelper.getHighScoresArray;
            if (nextIndex) >= (highScoresArray'Length) then
                nextIndex := 0;
            end if;
            if (highScoresArray'Length) > (0) then
                HighScoresCanvas'Class (This).getHighScoresPaintable.setHighScores (highScoresArray (index));
            else
                HighScoresCanvas'Class (This).getHighScoresPaintable.setHighScores (NullHighScoresSingletonFactory_Package.getInstance);
            end if;
            if (index) /= (nextIndex) then
                HighScoresCanvas'Class (This).removeAllCommands;
                HighScoresCanvas'Class (This).addCommand (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
                HighScoresCanvas'Class (This).addCommand (This.highScoreCommandsFactory.HIGH_SCORE_COMMANDS (nextIndex));
            end if;
        end if;
        This.currentCommand := command;
        HighScoresCanvas'Class (This).close;
        GameCommandCanvas (This).initMenu;
        HighScoresCanvas'Class (This).open;
        This.repaintBehavior.onChangeRepaint (HighScoresCanvas_Access'(This'Unchecked_Access));
   end updateCommand;

   function getGameInfo (This : in out HighScoresCanvas) return GameInfo_Access is
   begin
        return This.gameInfo;
   end getGameInfo;

   procedure setPaintable (This : in out HighScoresCanvas; paintable_Param : access Paintable_Package.Paintable'Class) is
      paintable : constant Paintable_Access := Paintable_Access (paintable_Param);
   begin
        This.paintable := paintable;
        This.repaintBehavior.onChangeRepaint (HighScoresCanvas_Access'(This'Unchecked_Access));
   end setPaintable;

begin
   null;
   NAME := To_Unbounded_String ("HighScoresCanvas");

end org.allbinary.game.score.displayable.HighScoresCanvas_Package;


