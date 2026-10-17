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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type BufferedGameCanvasPaintHelper is tagged;
   type BufferedGameCanvasPaintHelper_Access is access all BufferedGameCanvasPaintHelper'Class;
   type BufferedGameCanvasPaintHelper_Access_Array is array (Natural range <>) of BufferedGameCanvasPaintHelper_Access;
   type BufferedGameCanvasPaintHelper_Access_Array_Access is access all BufferedGameCanvasPaintHelper_Access_Array;

   type BufferedGameCanvasPaintHelper is new ProcessPaintable with record
      gameCanvas : Canvas_Access;
      offScreenImage : Image_Access_Array_Access;
      previousImage : Image_Access;
      circularIndexUtil : CircularIndexUtil_Access;
      drawCircularIndexUtil : CircularIndexUtil_Access;
      anchor : Integer;
   end record;
   MAX_IMAGES : Integer;

   procedure Initialize (This : in out BufferedGameCanvasPaintHelper'Class; gameCanvas : AllBinaryGameCanvas_Access);
   function Create (gameCanvas : AllBinaryGameCanvas_Access) return BufferedGameCanvasPaintHelper_Access;
   procedure process (This : in out BufferedGameCanvasPaintHelper);
   procedure paint (This : in out BufferedGameCanvasPaintHelper; graphics : Graphics_Access);

end org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package;


