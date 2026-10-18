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
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;

   type GameCanvasPaintHelper is tagged;
   type GameCanvasPaintHelper_Access is access all GameCanvasPaintHelper'Class;
   type GameCanvasPaintHelper_Access_Array is array (Natural range <>) of GameCanvasPaintHelper_Access;
   type GameCanvasPaintHelper_Access_Array_Access is access all GameCanvasPaintHelper_Access_Array;
   type GameCanvasPaintHelper_Access_Array_Access_Array is array (Natural range <>) of GameCanvasPaintHelper_Access_Array_Access;
   type GameCanvasPaintHelper_Access_Array_Access_Array_Access is access all GameCanvasPaintHelper_Access_Array_Access_Array;

   type GameCanvasPaintHelper is new ProcessPaintable with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out GameCanvasPaintHelper'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameCanvasPaintHelper_Access;
   procedure process (This : in out GameCanvasPaintHelper);
   procedure paint (This : in out GameCanvasPaintHelper; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package;


