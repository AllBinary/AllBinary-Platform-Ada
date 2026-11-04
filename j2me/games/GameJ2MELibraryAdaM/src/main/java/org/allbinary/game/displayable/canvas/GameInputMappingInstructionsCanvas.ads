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

limited with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
package org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References is
   type GameInputMappingInstructionsCanvas_Access is access all org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package.GameInputMappingInstructionsCanvas'Class;
   type GameInputMappingInstructionsCanvas_Access_Array is array (Natural range <>) of GameInputMappingInstructionsCanvas_Access;
   type GameInputMappingInstructionsCanvas_Access_Array_Access is access all GameInputMappingInstructionsCanvas_Access_Array;
   type GameInputMappingInstructionsCanvas_Access_Array_Access_Array is array (Natural range <>) of GameInputMappingInstructionsCanvas_Access_Array_Access;
   type GameInputMappingInstructionsCanvas_Access_Array_Access_Array_Access is access all GameInputMappingInstructionsCanvas_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References;

with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References;
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
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package_References;
limited with org.allbinary.graphics.draw.DrawStringUtil_Package;
with org.allbinary.graphics.draw.DrawStringUtil_Package_References;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;

package org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ColorFillBasePaintable_Package renames Standard.org.allbinary.game.paint.ColorFillBasePaintable_Package;
   package DrawStringUtil_Package renames Standard.org.allbinary.graphics.draw.DrawStringUtil_Package;
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
   subtype ColorFillBasePaintable_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access;
   use type ColorFillBasePaintable_Access;
   subtype ColorFillBasePaintable_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array;
   use type ColorFillBasePaintable_Access_Array;
   subtype ColorFillBasePaintable_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access;
   use type ColorFillBasePaintable_Access_Array_Access;
   subtype ColorFillBasePaintable_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array;
   use type ColorFillBasePaintable_Access_Array_Access_Array;
   subtype ColorFillBasePaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array_Access;
   use type ColorFillBasePaintable_Access_Array_Access_Array_Access;
   subtype DrawStringUtil_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access;
   use type DrawStringUtil_Access;
   subtype DrawStringUtil_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array;
   use type DrawStringUtil_Access_Array;
   subtype DrawStringUtil_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access;
   use type DrawStringUtil_Access_Array_Access;
   subtype DrawStringUtil_Access_Array_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array;
   use type DrawStringUtil_Access_Array_Access_Array;
   subtype DrawStringUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array_Access;
   use type DrawStringUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInputMappingInstructionsCanvas_Access is org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References.GameInputMappingInstructionsCanvas_Access;
   function "=" (Left, Right : GameInputMappingInstructionsCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References."=";
   subtype GameInputMappingInstructionsCanvas_Access_Array is org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References.GameInputMappingInstructionsCanvas_Access_Array;
   function "=" (Left, Right : GameInputMappingInstructionsCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References."=";
   subtype GameInputMappingInstructionsCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References.GameInputMappingInstructionsCanvas_Access_Array_Access;
   function "=" (Left, Right : GameInputMappingInstructionsCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References."=";
   subtype GameInputMappingInstructionsCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References.GameInputMappingInstructionsCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMappingInstructionsCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References."=";
   subtype GameInputMappingInstructionsCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References.GameInputMappingInstructionsCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMappingInstructionsCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package_References."=";

   type GameInputMappingInstructionsCanvas is new GameCommandCanvas with record
      drawStringUtil : DrawStringUtil_Access;
      TITLE : Unbounded_String;
      instructions : Unbounded_String_Array_Access;
      colorFillPaintable : ColorFillBasePaintable_Access;
      anchor : Integer;
   end record;
   DISPLAY : Command_Access;
   CLOSE : Command_Access;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GameInputMappingInstructionsCanvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) return GameInputMappingInstructionsCanvas_Access;
   procedure initCommands (This : in out GameInputMappingInstructionsCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure paint (This : in out GameInputMappingInstructionsCanvas; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;


