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

limited with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
package org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References is
   type GameCanvasRunnableInterface_Access is access all org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class;
   type GameCanvasRunnableInterface_Access_Array is array (Natural range <>) of GameCanvasRunnableInterface_Access;
   type GameCanvasRunnableInterface_Access_Array_Access is access all GameCanvasRunnableInterface_Access_Array;
   type GameCanvasRunnableInterface_Access_Array_Access_Array is array (Natural range <>) of GameCanvasRunnableInterface_Access_Array_Access;
   type GameCanvasRunnableInterface_Access_Array_Access_Array_Access is access all GameCanvasRunnableInterface_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References;

with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References;
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
with javax.microedition.lcdui.ItemStateListener_Package; use javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.game.state.GameStateCompositeInterface_Package; use org.allbinary.game.state.GameStateCompositeInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package ItemStateListener_Package renames Standard.javax.microedition.lcdui.ItemStateListener_Package;
   package GameStateCompositeInterface_Package renames Standard.org.allbinary.game.state.GameStateCompositeInterface_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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


   type GameCanvasRunnableInterface is interface and RunnableInterface and PaintableInterface and ItemStateListener and GameStateCompositeInterface;
   subtype GameCanvasRunnableInterface_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameCanvasRunnableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References."=";
   function Java_Object_Access_From_GameCanvasRunnableInterface (Value : GameCanvasRunnableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getTitle (This : in out GameCanvasRunnableInterface) return Unbounded_String is abstract;
   function isInitialized (This : in out GameCanvasRunnableInterface) return Boolean is abstract;
   function isPaused (This : in out GameCanvasRunnableInterface) return Boolean is abstract;
   procedure unPause (This : in out GameCanvasRunnableInterface) is abstract;
   procedure pause (This : in out GameCanvasRunnableInterface) is abstract;
   function isHighScoreSubmitted (This : in out GameCanvasRunnableInterface) return Boolean is abstract;
   procedure setHighScoreSubmitted (This : in out GameCanvasRunnableInterface; highScoreSubmitted : Boolean) is abstract;
   procedure processGameOver (This : in out GameCanvasRunnableInterface) is abstract;
   function isGameOver (This : in out GameCanvasRunnableInterface) return Boolean is abstract;
   procedure initCommands (This : in out GameCanvasRunnableInterface; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is abstract;
   function getCurrentStateHashtable (This : in out GameCanvasRunnableInterface) return ABHashtable_Access is abstract;
   function getLoadStateHashtable (This : in out GameCanvasRunnableInterface) return ABHashtable_Access is abstract;
   procedure setLoadStateHashtable (This : in out GameCanvasRunnableInterface; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is abstract;
   function getType (This : in out GameCanvasRunnableInterface) return Integer is abstract;

end org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;


