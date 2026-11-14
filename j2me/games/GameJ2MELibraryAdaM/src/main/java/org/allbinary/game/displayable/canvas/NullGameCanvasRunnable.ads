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

with AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;
package org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References is
   type NullGameCanvasRunnable_Access is access all org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package.NullGameCanvasRunnable'Class;
   type NullGameCanvasRunnable_Access_Array is array (Natural range <>) of NullGameCanvasRunnable_Access;
   type NullGameCanvasRunnable_Access_Array_Access is access all NullGameCanvasRunnable_Access_Array;
   type NullGameCanvasRunnable_Access_Array_Access_Array is array (Natural range <>) of NullGameCanvasRunnable_Access_Array_Access;
   type NullGameCanvasRunnable_Access_Array_Access_Array_Access is access all NullGameCanvasRunnable_Access_Array_Access_Array;
   type NullGameCanvasRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullGameCanvasRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : NullGameCanvasRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullGameCanvasRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullGameCanvasRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullGameCanvasRunnable_Access_Array_Access is (if Value /= null and then Value.all in NullGameCanvasRunnable_Access_Array_Object'Class then NullGameCanvasRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type NullGameCanvasRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullGameCanvasRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullGameCanvasRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullGameCanvasRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullGameCanvasRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullGameCanvasRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullGameCanvasRunnable_Access_Array_Access_Array_Object'Class then NullGameCanvasRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References;

with org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.Item_Package_References;
limited with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;
limited with org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.state.GameStateFactory_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype Item_Access is javax.microedition.lcdui.Item_Package_References.Item_Access;
   use type Item_Access;
   subtype Item_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array;
   use type Item_Access_Array;
   subtype Item_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access;
   use type Item_Access_Array_Access;
   subtype Item_Access_Array_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array;
   use type Item_Access_Array_Access_Array;
   subtype Item_Access_Array_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array_Access;
   use type Item_Access_Array_Access_Array_Access;
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   use type GameState_Access;
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   use type GameState_Access_Array;
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   use type GameState_Access_Array_Access;
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   use type GameState_Access_Array_Access_Array;
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   use type GameState_Access_Array_Access_Array_Access;
   subtype GameStateFactory_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access;
   use type GameStateFactory_Access;
   subtype GameStateFactory_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array;
   use type GameStateFactory_Access_Array;
   subtype GameStateFactory_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access;
   use type GameStateFactory_Access_Array_Access;
   subtype GameStateFactory_Access_Array_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array;
   use type GameStateFactory_Access_Array_Access_Array;
   subtype GameStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array_Access;
   use type GameStateFactory_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullGameCanvasRunnable_Access is org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.NullGameCanvasRunnable_Access;
   function "=" (Left, Right : NullGameCanvasRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References."=";
   subtype NullGameCanvasRunnable_Access_Array is org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.NullGameCanvasRunnable_Access_Array;
   function "=" (Left, Right : NullGameCanvasRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References."=";
   subtype NullGameCanvasRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.NullGameCanvasRunnable_Access_Array_Access;
   function "=" (Left, Right : NullGameCanvasRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References."=";
   function Java_Box (Value : NullGameCanvasRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.Java_Box;
   function Java_Unbox_NullGameCanvasRunnable_Access_Array (Value : access Java_Object'Class) return NullGameCanvasRunnable_Access_Array_Access renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.Java_Unbox_NullGameCanvasRunnable_Access_Array;
   subtype NullGameCanvasRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.NullGameCanvasRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : NullGameCanvasRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References."=";
   subtype NullGameCanvasRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.NullGameCanvasRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullGameCanvasRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References."=";
   function Java_Box (Value : NullGameCanvasRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.Java_Box;
   function Java_Unbox_NullGameCanvasRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return NullGameCanvasRunnable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package_References.Java_Unbox_NullGameCanvasRunnable_Access_Array_Access_Array;

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


