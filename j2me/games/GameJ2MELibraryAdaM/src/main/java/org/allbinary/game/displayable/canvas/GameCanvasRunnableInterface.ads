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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.ItemStateListener_Package; use javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.game.state.GameStateCompositeInterface_Package; use org.allbinary.game.state.GameStateCompositeInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package is

   package GameStateCompositeInterface_Package renames Standard.org.allbinary.game.state.GameStateCompositeInterface_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type GameCanvasRunnableInterface is interface and RunnableInterface and PaintableInterface and ItemStateListener and GameStateCompositeInterface;
   type GameCanvasRunnableInterface_Access is access all GameCanvasRunnableInterface'Class;
   type GameCanvasRunnableInterface_Access_Array is array (Natural range <>) of GameCanvasRunnableInterface_Access;
   type GameCanvasRunnableInterface_Access_Array_Access is access all GameCanvasRunnableInterface_Access_Array;
   function getTitle (This : in out GameCanvasRunnableInterface) return Unbounded_String is abstract;
   function isInitialized (This : in out GameCanvasRunnableInterface) return Boolean is abstract;
   function isPaused (This : in out GameCanvasRunnableInterface) return Boolean is abstract;
   procedure unPause (This : in out GameCanvasRunnableInterface) is abstract;
   procedure pause (This : in out GameCanvasRunnableInterface) is abstract;
   function isHighScoreSubmitted (This : in out GameCanvasRunnableInterface) return Boolean is abstract;
   procedure setHighScoreSubmitted (This : in out GameCanvasRunnableInterface; highScoreSubmitted : Boolean) is abstract;
   procedure processGameOver (This : in out GameCanvasRunnableInterface) is abstract;
   function isGameOver (This : in out GameCanvasRunnableInterface) return Boolean is abstract;
   procedure initCommands (This : in out GameCanvasRunnableInterface; cmdListener : CommandListener_Access) is abstract;
   function getCurrentStateHashtable (This : in out GameCanvasRunnableInterface) return ABHashtable_Access is abstract;
   function getLoadStateHashtable (This : in out GameCanvasRunnableInterface) return ABHashtable_Access is abstract;
   procedure setLoadStateHashtable (This : in out GameCanvasRunnableInterface; hashtable : ABHashtable_Access) is abstract;
   function getType (This : in out GameCanvasRunnableInterface) return Integer is abstract;

end org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;


