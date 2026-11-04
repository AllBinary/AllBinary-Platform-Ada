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

limited with org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package;
package org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References is
   type BufferedGameCanvasPaintHelper_Access is access all org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package.BufferedGameCanvasPaintHelper'Class;
   type BufferedGameCanvasPaintHelper_Access_Array is array (Natural range <>) of BufferedGameCanvasPaintHelper_Access;
   type BufferedGameCanvasPaintHelper_Access_Array_Access is access all BufferedGameCanvasPaintHelper_Access_Array;
   type BufferedGameCanvasPaintHelper_Access_Array_Access_Array is array (Natural range <>) of BufferedGameCanvasPaintHelper_Access_Array_Access;
   type BufferedGameCanvasPaintHelper_Access_Array_Access_Array_Access is access all BufferedGameCanvasPaintHelper_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References;

with org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
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
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
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


   subtype BufferedGameCanvasPaintHelper_Access is org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References.BufferedGameCanvasPaintHelper_Access;
   function "=" (Left, Right : BufferedGameCanvasPaintHelper_Access) return Boolean renames org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References."=";
   subtype BufferedGameCanvasPaintHelper_Access_Array is org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References.BufferedGameCanvasPaintHelper_Access_Array;
   function "=" (Left, Right : BufferedGameCanvasPaintHelper_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References."=";
   subtype BufferedGameCanvasPaintHelper_Access_Array_Access is org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References.BufferedGameCanvasPaintHelper_Access_Array_Access;
   function "=" (Left, Right : BufferedGameCanvasPaintHelper_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References."=";
   subtype BufferedGameCanvasPaintHelper_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References.BufferedGameCanvasPaintHelper_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedGameCanvasPaintHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References."=";
   subtype BufferedGameCanvasPaintHelper_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References.BufferedGameCanvasPaintHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedGameCanvasPaintHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package_References."=";

   type BufferedGameCanvasPaintHelper is new ProcessPaintable with record
      gameCanvas : Canvas_Access;
      offScreenImage : Image_Access_Array_Access;
      previousImage : Image_Access;
      circularIndexUtil : CircularIndexUtil_Access;
      drawCircularIndexUtil : CircularIndexUtil_Access;
      anchor : Integer;
   end record;
   MAX_IMAGES : constant Integer := 4;

   procedure Initialize (This : in out BufferedGameCanvasPaintHelper'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return BufferedGameCanvasPaintHelper_Access;
   procedure process (This : in out BufferedGameCanvasPaintHelper);
   procedure paint (This : in out BufferedGameCanvasPaintHelper; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper_Package;


