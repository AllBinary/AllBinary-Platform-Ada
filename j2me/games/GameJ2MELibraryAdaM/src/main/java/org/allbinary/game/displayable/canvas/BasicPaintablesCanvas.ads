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
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;

package org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ColorFillBasePaintable_Package renames Standard.org.allbinary.game.paint.ColorFillBasePaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type BasicPaintablesCanvas is tagged;
   type BasicPaintablesCanvas_Access is access all BasicPaintablesCanvas'Class;
   type BasicPaintablesCanvas_Access_Array is array (Natural range <>) of BasicPaintablesCanvas_Access;
   type BasicPaintablesCanvas_Access_Array_Access is access all BasicPaintablesCanvas_Access_Array;
   type BasicPaintablesCanvas_Access_Array_Access_Array is array (Natural range <>) of BasicPaintablesCanvas_Access_Array_Access;
   type BasicPaintablesCanvas_Access_Array_Access_Array_Access is access all BasicPaintablesCanvas_Access_Array_Access_Array;

   type BasicPaintablesCanvas is new GameCommandCanvas with record
      paintableArray : Paintable_Access_Array_Access;
      colorFillPaintable : ColorFillBasePaintable_Access;
   end record;

   procedure Initialize (This : in out BasicPaintablesCanvas'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; paintableArray : Paintable_Access_Array_Access);
   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; paintableArray : Paintable_Access_Array_Access) return BasicPaintablesCanvas_Access;
   procedure paint (This : in out BasicPaintablesCanvas; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package;


