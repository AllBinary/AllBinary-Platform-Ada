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

limited with org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package;
package org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References is
   type BasicPaintablesCanvas_Access is access all org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package.BasicPaintablesCanvas'Class;
   type BasicPaintablesCanvas_Access_Array is array (Natural range <>) of BasicPaintablesCanvas_Access;
   type BasicPaintablesCanvas_Access_Array_Access is access all BasicPaintablesCanvas_Access_Array;
   type BasicPaintablesCanvas_Access_Array_Access_Array is array (Natural range <>) of BasicPaintablesCanvas_Access_Array_Access;
   type BasicPaintablesCanvas_Access_Array_Access_Array_Access is access all BasicPaintablesCanvas_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References;

with org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References;
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
limited with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package_References;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;

package org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ColorFillBasePaintable_Package renames Standard.org.allbinary.game.paint.ColorFillBasePaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicPaintablesCanvas_Access is org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References.BasicPaintablesCanvas_Access;
   function "=" (Left, Right : BasicPaintablesCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References."=";
   subtype BasicPaintablesCanvas_Access_Array is org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References.BasicPaintablesCanvas_Access_Array;
   function "=" (Left, Right : BasicPaintablesCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References."=";
   subtype BasicPaintablesCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References.BasicPaintablesCanvas_Access_Array_Access;
   function "=" (Left, Right : BasicPaintablesCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References."=";
   subtype BasicPaintablesCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References.BasicPaintablesCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : BasicPaintablesCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References."=";
   subtype BasicPaintablesCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References.BasicPaintablesCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicPaintablesCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package_References."=";

   type BasicPaintablesCanvas is new GameCommandCanvas with record
      paintableArray : Paintable_Access_Array_Access;
      colorFillPaintable : ColorFillBasePaintable_Access;
   end record;

   procedure Initialize (This : in out BasicPaintablesCanvas'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; paintableArray : Paintable_Access_Array_Access);
   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; paintableArray : Paintable_Access_Array_Access) return BasicPaintablesCanvas_Access;
   procedure paint (This : in out BasicPaintablesCanvas; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package;


