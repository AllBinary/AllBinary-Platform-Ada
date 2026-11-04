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

limited with org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package;
package org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References is
   type GameCanvasNonBotPaintable_Access is access all org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package.GameCanvasNonBotPaintable'Class;
   type GameCanvasNonBotPaintable_Access_Array is array (Natural range <>) of GameCanvasNonBotPaintable_Access;
   type GameCanvasNonBotPaintable_Access_Array_Access is access all GameCanvasNonBotPaintable_Access_Array;
   type GameCanvasNonBotPaintable_Access_Array_Access_Array is array (Natural range <>) of GameCanvasNonBotPaintable_Access_Array_Access;
   type GameCanvasNonBotPaintable_Access_Array_Access_Array_Access is access all GameCanvasNonBotPaintable_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References;

with org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package Reference_Types is
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
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameCanvasNonBotPaintable_Access is org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References.GameCanvasNonBotPaintable_Access;
   function "=" (Left, Right : GameCanvasNonBotPaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References."=";
   subtype GameCanvasNonBotPaintable_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References.GameCanvasNonBotPaintable_Access_Array;
   function "=" (Left, Right : GameCanvasNonBotPaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References."=";
   subtype GameCanvasNonBotPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References.GameCanvasNonBotPaintable_Access_Array_Access;
   function "=" (Left, Right : GameCanvasNonBotPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References."=";
   subtype GameCanvasNonBotPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References.GameCanvasNonBotPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : GameCanvasNonBotPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References."=";
   subtype GameCanvasNonBotPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References.GameCanvasNonBotPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameCanvasNonBotPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package_References."=";

   type GameCanvasNonBotPaintable is new Paintable with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out GameCanvasNonBotPaintable'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameCanvasNonBotPaintable_Access;
   procedure paint (This : in out GameCanvasNonBotPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.GameCanvasNonBotPaintable_Package;


