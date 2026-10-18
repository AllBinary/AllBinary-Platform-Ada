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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type GameCanvasNonBotPaintable is tagged;
   type GameCanvasNonBotPaintable_Access is access all GameCanvasNonBotPaintable'Class;
   type GameCanvasNonBotPaintable_Access_Array is array (Natural range <>) of GameCanvasNonBotPaintable_Access;
   type GameCanvasNonBotPaintable_Access_Array_Access is access all GameCanvasNonBotPaintable_Access_Array;
   type GameCanvasNonBotPaintable_Access_Array_Access_Array is array (Natural range <>) of GameCanvasNonBotPaintable_Access_Array_Access;
   type GameCanvasNonBotPaintable_Access_Array_Access_Array_Access is access all GameCanvasNonBotPaintable_Access_Array_Access_Array;

   type GameCanvasNonBotPaintable is new Paintable with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out GameCanvasNonBotPaintable'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameCanvasNonBotPaintable_Access;
   procedure paint (This : in out GameCanvasNonBotPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package;


