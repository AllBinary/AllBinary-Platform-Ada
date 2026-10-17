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


package body org.allbinary.game.score.displayable.HighScoresCanvas_Package is

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


   procedure Initialize (This : in out HighScoresCanvas'Class; commandListener : CommandListener_Access; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access; gameInfo : GameInfo_Access; paintable : HighScoresPaintable_Access; highScoresFactoryInterface : HighScoresFactoryInterface_Access; highScoresCanvasInputProcessorFactoryInterface : HighScoresCanvasInputProcessorFactoryInterface_Access) is
   begin
        GameCommandCanvas_Package.Initialize (This, commandListener, HighScoresCanvas_Package.NAME, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.highScoresPaintable := paintable;
        This.highScoresFactoryInterface := highScoresFactoryInterface;
        This.highScoresCanvasInputProcessor := highScoresCanvasInputProcessorFactoryInterface.getInstance (This'Unchecked_Access);
        This.gameInfo := gameInfo;
        This.waitPaintable.setBasicColorP (allBinaryGameLayerManager.getForegroundBasicColor);
        This.getHighScoresPaintable.setBasicColorP (allBinaryGameLayerManager.getForegroundBasicColor);
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
        if (This.highScoresHelper.getHighScoresArray) = (NoHighScoresFactory_Package.getInstance.NO_HIGH_SCORES) then
            This.setPaintable (This.waitPaintable);
        else
            This.logUtil.putF (To_Unbounded_String ("Show HighScores that are already loaded"), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            This.updateCommand (This.currentCommand);
            This.setPaintable (This.getHighScoresPaintable);
        end if;
        --  Java nested class HighScoreRunnable: move it to its own package
        SecondaryThreadPool_Package.getInstance.runTask (HighScoreRunnable_Package.Create (This'Unchecked_Access));
   end Initialize;

   function Create (commandListener : CommandListener_Access; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access; gameInfo : GameInfo_Access; paintable : HighScoresPaintable_Access; highScoresFactoryInterface : HighScoresFactoryInterface_Access; highScoresCanvasInputProcessorFactoryInterface : HighScoresCanvasInputProcessorFactoryInterface_Access) return HighScoresCanvas_Access is
      This : constant HighScoresCanvas_Access := new HighScoresCanvas;
   begin
      HighScoresCanvas_Package.Initialize (This.all, commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface);
      return This;
   end Create;

   procedure initCommands (This : in out HighScoresCanvas; cmdListener : CommandListener_Access) is
   begin
        This.removeAllCommands;
        This.addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        This.setCommandListener (cmdListener);
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

   procedure paint (This : in out HighScoresCanvas; graphics : Graphics_Access) is
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
            This.highScoresFactoryInterface.fetchHighScores (This.getGameInfo, This'Unchecked_Access);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.UPDATE, e);
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
                This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).appendint (highScoresArray'Length).toString, This'Unchecked_Access, To_Unbounded_String ("setHighScoresArray"));
            else
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("setHighScoresArray"));
            end if;
            This.highScoresHelper.setHighScoresArray (highScoresArray);
            This.updateCommand (This.currentCommand);
            This.setPaintable (This.getHighScoresPaintable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.UPDATE, e);
                end;
        end;
   end setHighScoresArray;

   --  throws Exception
   procedure updateCommand (This : in out HighScoresCanvas; command : Command_Access) is
      gameCommandsFactory : GameCommandsFactory_Access;
      index : Integer;
      nextIndex : Integer;
      highScoresArray : HighScores_Access_Array_Access;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (This.stringUtil.toString (command)).toString, This'Unchecked_Access, This.commonStrings.UPDATE);
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        if This.highScoreCommandsFactory.isHighScoreCommand (command) then
            index := This.highScoreCommandsFactory.getIndex (command);
            nextIndex := (index) + (1);
            highScoresArray := This.highScoresHelper.getHighScoresArray;
            if (nextIndex) >= (highScoresArray'Length) then
                nextIndex := 0;
            end if;
            if (highScoresArray'Length) > (0) then
                This.getHighScoresPaintable.setHighScores (highScoresArray (index));
            else
                This.getHighScoresPaintable.setHighScores (NullHighScoresSingletonFactory_Package.getInstance);
            end if;
            if (index) /= (nextIndex) then
                This.removeAllCommands;
                This.addCommand (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
                This.addCommand (This.highScoreCommandsFactory.HIGH_SCORE_COMMANDS (nextIndex));
            end if;
        end if;
        This.currentCommand := command;
        This.close;
        GameCommandCanvas (This).initMenu;
        This.open;
        This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
   end updateCommand;

   function getGameInfo (This : in out HighScoresCanvas) return GameInfo_Access is
   begin
        return This.gameInfo;
   end getGameInfo;

   procedure setPaintable (This : in out HighScoresCanvas; paintable : Paintable_Access) is
   begin
        This.paintable := paintable;
        This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
   end setPaintable;

begin
   null;
   NAME := To_Unbounded_String ("HighScoresCanvas");

end org.allbinary.game.score.displayable.HighScoresCanvas_Package;


