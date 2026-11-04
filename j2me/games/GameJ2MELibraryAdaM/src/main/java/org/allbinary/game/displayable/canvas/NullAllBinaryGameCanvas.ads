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

limited with org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package;
package org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References is
   type NullAllBinaryGameCanvas_Access is access all org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package.NullAllBinaryGameCanvas'Class;
   type NullAllBinaryGameCanvas_Access_Array is array (Natural range <>) of NullAllBinaryGameCanvas_Access;
   type NullAllBinaryGameCanvas_Access_Array_Access is access all NullAllBinaryGameCanvas_Access_Array;
   type NullAllBinaryGameCanvas_Access_Array_Access_Array is array (Natural range <>) of NullAllBinaryGameCanvas_Access_Array_Access;
   type NullAllBinaryGameCanvas_Access_Array_Access_Array_Access is access all NullAllBinaryGameCanvas_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References;

with org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;

package org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
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


   subtype NullAllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References.NullAllBinaryGameCanvas_Access;
   function "=" (Left, Right : NullAllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References."=";
   subtype NullAllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References.NullAllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : NullAllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References."=";
   subtype NullAllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References.NullAllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : NullAllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References."=";
   subtype NullAllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References.NullAllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : NullAllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References."=";
   subtype NullAllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References.NullAllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullAllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package_References."=";

   type NullAllBinaryGameCanvas is new Java_Object and AllBinaryGameCanvasInterface with null record;
   NULL_ALLBINARY_GAME_CANVAS : NullAllBinaryGameCanvas_Access;

   procedure Initialize (This : in out NullAllBinaryGameCanvas'Class);
   function Create return NullAllBinaryGameCanvas_Access;
   function getLayerManager (This : in out NullAllBinaryGameCanvas) return AllBinaryGameLayerManager_Access;
   procedure addCommand (This : in out NullAllBinaryGameCanvas; cmd_Param : access Command_Package.Command'Class);
   function getHeight (This : in out NullAllBinaryGameCanvas) return Integer;
   function getWidth (This : in out NullAllBinaryGameCanvas) return Integer;
   procedure removeCommand (This : in out NullAllBinaryGameCanvas; cmd_Param : access Command_Package.Command'Class);
   procedure setCommandListener (This : in out NullAllBinaryGameCanvas; l_Param : access CommandListener_Package.CommandListener'Class);

end org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package;


