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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.NullGameCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;

   type NullGameCanvas is tagged;
   type NullGameCanvas_Access is access all NullGameCanvas'Class;
   type NullGameCanvas_Access_Array is array (Natural range <>) of NullGameCanvas_Access;
   type NullGameCanvas_Access_Array_Access is access all NullGameCanvas_Access_Array;
   type NullGameCanvas_Access_Array_Access_Array is array (Natural range <>) of NullGameCanvas_Access_Array_Access;
   type NullGameCanvas_Access_Array_Access_Array_Access is access all NullGameCanvas_Access_Array_Access_Array;

   type NullGameCanvas is new AllBinaryGameCanvas with record
      runningNull : Boolean;
   end record;
   instance : Java_Object_Access;
   NO_GAME : Unbounded_String;
   TYPE_Id : Integer;

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


