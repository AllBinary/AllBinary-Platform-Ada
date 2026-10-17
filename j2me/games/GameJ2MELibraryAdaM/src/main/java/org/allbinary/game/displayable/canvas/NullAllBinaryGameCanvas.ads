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
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;

package org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package is

   package AllBinaryGameLayerManager_Package renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package;

   type NullAllBinaryGameCanvas is tagged;
   type NullAllBinaryGameCanvas_Access is access all NullAllBinaryGameCanvas'Class;
   type NullAllBinaryGameCanvas_Access_Array is array (Natural range <>) of NullAllBinaryGameCanvas_Access;
   type NullAllBinaryGameCanvas_Access_Array_Access is access all NullAllBinaryGameCanvas_Access_Array;

   type NullAllBinaryGameCanvas is new AllBinaryGameCanvasInterface with null record;
   NULL_ALLBINARY_GAME_CANVAS : NullAllBinaryGameCanvas_Access;

   procedure Initialize (This : in out NullAllBinaryGameCanvas'Class);
   function Create return NullAllBinaryGameCanvas_Access;
   function getLayerManager (This : in out NullAllBinaryGameCanvas) return AllBinaryGameLayerManager_Access;
   procedure getLayerManager (This : in out NullAllBinaryGameCanvas);
   procedure addCommand (This : in out NullAllBinaryGameCanvas; cmd : Command_Access);
   function getHeight (This : in out NullAllBinaryGameCanvas) return Integer;
   procedure getHeight (This : in out NullAllBinaryGameCanvas);
   function getWidth (This : in out NullAllBinaryGameCanvas) return Integer;
   procedure getWidth (This : in out NullAllBinaryGameCanvas);
   procedure removeCommand (This : in out NullAllBinaryGameCanvas; cmd : Command_Access);
   procedure setCommandListener (This : in out NullAllBinaryGameCanvas; l : CommandListener_Access);

end org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package;


