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

limited with org.allbinary.game.displayable.canvas.NullGameCanvas_Package;
package org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References is
   type NullGameCanvas_Access is access all org.allbinary.game.displayable.canvas.NullGameCanvas_Package.NullGameCanvas'Class;
   type NullGameCanvas_Access_Array is array (Natural range <>) of NullGameCanvas_Access;
   type NullGameCanvas_Access_Array_Access is access all NullGameCanvas_Access_Array;
   type NullGameCanvas_Access_Array_Access_Array is array (Natural range <>) of NullGameCanvas_Access_Array_Access;
   type NullGameCanvas_Access_Array_Access_Array_Access is access all NullGameCanvas_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References;

with org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References;
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
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.NullGameCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
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
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullGameCanvas_Access is org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References.NullGameCanvas_Access;
   function "=" (Left, Right : NullGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References."=";
   subtype NullGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References.NullGameCanvas_Access_Array;
   function "=" (Left, Right : NullGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References."=";
   subtype NullGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References.NullGameCanvas_Access_Array_Access;
   function "=" (Left, Right : NullGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References."=";
   subtype NullGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References.NullGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : NullGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References."=";
   subtype NullGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References.NullGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullGameCanvas_Package_References."=";

   type NullGameCanvas is new AllBinaryGameCanvas with record
      runningNull : Boolean;
   end record;
   instance : Java_Object_Access;
   NO_GAME : Unbounded_String;
   TYPE_Id : constant Integer := 1;

   procedure Initialize (This : in out NullGameCanvas'Class; gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   function Create (gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) return NullGameCanvas_Access;
   function createNull return NullGameCanvas_Access;
   function getInstance return NullGameCanvas_Access;
   function createCanvas (gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) return NullGameCanvas_Access;
   procedure createCanvas (gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   function isGameOver (This : in out NullGameCanvas) return Boolean;
   procedure setRunning (This : in out NullGameCanvas; running : Boolean);
   function isRunning (This : in out NullGameCanvas) return Boolean;
   procedure pause (This : in out NullGameCanvas);
   procedure unPause (This : in out NullGameCanvas);
   procedure initCommands (This : in out NullGameCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure buildGameInit (This : in out NullGameCanvas; isProgress : Boolean);
   procedure draw (This : in out NullGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure run (This : in out NullGameCanvas);
   function getType (This : in out NullGameCanvas) return Integer;

end org.allbinary.game.displayable.canvas.NullGameCanvas_Package;


