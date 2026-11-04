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


with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScoresHelperBase_Package; use org.allbinary.game.score.HighScoresHelperBase_Package;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;

package body org.allbinary.game.displayable.canvas.EndGameProcessor_Package is

   package HighScores_Package renames Standard.org.allbinary.game.score.HighScores_Package;
   package HighScoresHelperBase_Package renames Standard.org.allbinary.game.score.HighScoresHelperBase_Package;
   package NullHighScoresSingletonFactory_Package renames Standard.org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   subtype GameStateFactory_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access;
   function "=" (Left, Right : GameStateFactory_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array;
   function "=" (Left, Right : GameStateFactory_Access_Array) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
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
   procedure Initialize_Fields (This : in out EndGameProcessor'Class) is
   begin
      null;
      This.gameStateFactory := GameStateFactory_Package.getInstance;
      
      This.WAIT := 5000;
   end Initialize_Fields;


   procedure Initialize (This : in out EndGameProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return EndGameProcessor_Access is
      This : constant EndGameProcessor_Access := new EndGameProcessor;
   begin
      EndGameProcessor_Package.Initialize (This.all, gameCanvas_Param);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out EndGameProcessor) is
      highScoresBase : HighScoresHelperBase_Access;
      highScores : HighScores_Access;
   begin
        if This.gameCanvas.isHighScoreSubmitted then
            if This.gameCanvas.getGameStateTimeHelper.isElapsedTNT (This.WAIT) then
                if (This.gameCanvas.getGameState) = (This.gameStateFactory.SHOW_END_RESULT_GAME_STATE) then
                    highScoresBase := HighScoresHelperBase_Access (This.gameCanvas.highScoresHelper);
                    highScores := highScoresBase.getSelectedHighScores;
                    if (highScores) /= (NullHighScoresSingletonFactory_Package.getInstance) then
                        highScoresBase.selectHighScores;
                        This.gameCanvas.getRealHighScoresPaintable.setHighScores (highScores);
                        This.gameCanvas.setGameState (This.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE);
                        This.gameCanvas.setHighScoresPaintable (This.gameCanvas.getRealHighScoresPaintable);
                    end if;
                elsif (This.gameCanvas.getGameState) = (This.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) then
                    This.gameCanvas.setGameState (This.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
                    This.gameCanvas.setHighScoresPaintable (NullPaintable_Package.getInstance);
                end if;
            end if;
        end if;
   end process;

end org.allbinary.game.displayable.canvas.EndGameProcessor_Package;


