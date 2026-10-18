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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;

package org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type NullGameCanvasRunnable is tagged;
   type NullGameCanvasRunnable_Access is access all NullGameCanvasRunnable'Class;
   type NullGameCanvasRunnable_Access_Array is array (Natural range <>) of NullGameCanvasRunnable_Access;
   type NullGameCanvasRunnable_Access_Array_Access is access all NullGameCanvasRunnable_Access_Array;
   type NullGameCanvasRunnable_Access_Array_Access_Array is array (Natural range <>) of NullGameCanvasRunnable_Access_Array_Access;
   type NullGameCanvasRunnable_Access_Array_Access_Array_Access is access all NullGameCanvasRunnable_Access_Array_Access_Array;

   type NullGameCanvasRunnable is new Java_Object and GameCanvasRunnableInterface with record
      gameStateFactory : GameStateFactory_Access;
   end record;
   NULL_GAME_CANVAS_RUNNABLE : NullGameCanvasRunnable_Access;

   procedure Initialize (This : in out NullGameCanvasRunnable'Class);
   function Create return NullGameCanvasRunnable_Access;
   function getTitle (This : in out NullGameCanvasRunnable) return Unbounded_String;
   function isInitialized (This : in out NullGameCanvasRunnable) return Boolean;
   function isPaused (This : in out NullGameCanvasRunnable) return Boolean;
   procedure unPause (This : in out NullGameCanvasRunnable);
   procedure pause (This : in out NullGameCanvasRunnable);
   function isHighScoreSubmitted (This : in out NullGameCanvasRunnable) return Boolean;
   procedure setHighScoreSubmitted (This : in out NullGameCanvasRunnable; highScoreSubmitted : Boolean);
   procedure processGameOver (This : in out NullGameCanvasRunnable);
   function isGameOver (This : in out NullGameCanvasRunnable) return Boolean;
   procedure initCommands (This : in out NullGameCanvasRunnable; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   function getCurrentStateHashtable (This : in out NullGameCanvasRunnable) return ABHashtable_Access;
   function getLoadStateHashtable (This : in out NullGameCanvasRunnable) return ABHashtable_Access;
   procedure setLoadStateHashtable (This : in out NullGameCanvasRunnable; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function getType (This : in out NullGameCanvasRunnable) return Integer;
   procedure setGameState (This : in out NullGameCanvasRunnable; gameState_Param : access GameState_Package.GameState'Class);
   function getGameState (This : in out NullGameCanvasRunnable) return GameState_Access;
   procedure itemStateChanged (This : in out NullGameCanvasRunnable; item_Param : access Item_Package.Item'Class);
   procedure paint (This : in out NullGameCanvasRunnable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out NullGameCanvasRunnable; graphics_Param : access Graphics_Package.Graphics'Class);
   function isRunning (This : in out NullGameCanvasRunnable) return Boolean;
   procedure setRunning (This : in out NullGameCanvasRunnable; isRunning : Boolean);
   procedure setThread (This : in out NullGameCanvasRunnable; thread_Param : access Thread_Package.Thread'Class);
   procedure run (This : in out NullGameCanvasRunnable);

end org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;


