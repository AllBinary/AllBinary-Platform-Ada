-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package is

   procedure Initialize_Fields (This : in out NullGameCanvasRunnable'Class) is
   begin
      null;
      This.gameStateFactory := GameStateFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out NullGameCanvasRunnable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullGameCanvasRunnable_Access is
      This : constant NullGameCanvasRunnable_Access := new NullGameCanvasRunnable;
   begin
      NullGameCanvasRunnable_Package.Initialize (This.all);
      return This;
   end Create;


   function getTitle (This : in out NullGameCanvasRunnable) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getTitle;

   function isInitialized (This : in out NullGameCanvasRunnable) return Boolean is
   begin
        return False;
   end isInitialized;

   function isPaused (This : in out NullGameCanvasRunnable) return Boolean is
   begin
        return False;
   end isPaused;

   procedure unPause (This : in out NullGameCanvasRunnable) is
   begin
        null;
   end unPause;

   procedure pause (This : in out NullGameCanvasRunnable) is
   begin
        null;
   end pause;

   function isHighScoreSubmitted (This : in out NullGameCanvasRunnable) return Boolean is
   begin
        return False;
   end isHighScoreSubmitted;

   --  throws Exception
   procedure setHighScoreSubmitted (This : in out NullGameCanvasRunnable; highScoreSubmitted : Boolean) is
   begin
        null;
   end setHighScoreSubmitted;

   --  throws Exception
   procedure processGameOver (This : in out NullGameCanvasRunnable) is
   begin
        null;
   end processGameOver;

   function isGameOver (This : in out NullGameCanvasRunnable) return Boolean is
   begin
        return False;
   end isGameOver;

   procedure initCommands (This : in out NullGameCanvasRunnable; cmdListener_Param : access CommandListener'Class) is
      cmdListener : CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        null;
   end initCommands;

   --  throws Exception
   function getCurrentStateHashtable (This : in out NullGameCanvasRunnable) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end getCurrentStateHashtable;

   --  throws Exception
   function getLoadStateHashtable (This : in out NullGameCanvasRunnable) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end getLoadStateHashtable;

   --  throws Exception
   procedure setLoadStateHashtable (This : in out NullGameCanvasRunnable; hashtable_Param : access ABHashtable'Class) is
      hashtable : ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
        null;
   end setLoadStateHashtable;

   function getType (This : in out NullGameCanvasRunnable) return Integer is
   begin
        return -(1);
   end getType;

   --  throws Exception
   procedure setGameState (This : in out NullGameCanvasRunnable; gameState_Param : access GameState'Class) is
      gameState : GameState_Access := GameState_Access (gameState_Param);
   begin
        null;
   end setGameState;

   function getGameState (This : in out NullGameCanvasRunnable) return GameState_Access is
   begin
        return This.gameStateFactory.NO_GAME_STATE;
   end getGameState;

   procedure itemStateChanged (This : in out NullGameCanvasRunnable; item_Param : access Item'Class) is
      item : Item_Access := Item_Access (item_Param);
   begin
        null;
   end itemStateChanged;

   procedure paint (This : in out NullGameCanvasRunnable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure paintThreed (This : in out NullGameCanvasRunnable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   function isRunning (This : in out NullGameCanvasRunnable) return Boolean is
   begin
        return False;
   end isRunning;

   procedure setRunning (This : in out NullGameCanvasRunnable; isRunning : Boolean) is
   begin
        null;
   end setRunning;

   --  throws Exception
   procedure setThread (This : in out NullGameCanvasRunnable; thread_Param : access Thread'Class) is
      thread : Thread_Access := Thread_Access (thread_Param);
   begin
        null;
   end setThread;

   procedure run (This : in out NullGameCanvasRunnable) is
   begin
        null;
   end run;

begin
   null;
   NULL_GAME_CANVAS_RUNNABLE := NullGameCanvasRunnable_Package.Create;

end org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;


