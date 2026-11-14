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

with AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package;
package org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References is
   type GameCanvasPaintHelper_Access is access all org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package.GameCanvasPaintHelper'Class;
   type GameCanvasPaintHelper_Access_Array is array (Natural range <>) of GameCanvasPaintHelper_Access;
   type GameCanvasPaintHelper_Access_Array_Access is access all GameCanvasPaintHelper_Access_Array;
   type GameCanvasPaintHelper_Access_Array_Access_Array is array (Natural range <>) of GameCanvasPaintHelper_Access_Array_Access;
   type GameCanvasPaintHelper_Access_Array_Access_Array_Access is access all GameCanvasPaintHelper_Access_Array_Access_Array;
   type GameCanvasPaintHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameCanvasPaintHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : GameCanvasPaintHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameCanvasPaintHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameCanvasPaintHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameCanvasPaintHelper_Access_Array_Access is (if Value /= null and then Value.all in GameCanvasPaintHelper_Access_Array_Object'Class then GameCanvasPaintHelper_Access_Array_Object'Class (Value.all).Value else null);
   type GameCanvasPaintHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameCanvasPaintHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameCanvasPaintHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameCanvasPaintHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameCanvasPaintHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameCanvasPaintHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameCanvasPaintHelper_Access_Array_Access_Array_Object'Class then GameCanvasPaintHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References;

with org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References;
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
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;
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


   subtype GameCanvasPaintHelper_Access is org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.GameCanvasPaintHelper_Access;
   function "=" (Left, Right : GameCanvasPaintHelper_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References."=";
   subtype GameCanvasPaintHelper_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.GameCanvasPaintHelper_Access_Array;
   function "=" (Left, Right : GameCanvasPaintHelper_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References."=";
   subtype GameCanvasPaintHelper_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.GameCanvasPaintHelper_Access_Array_Access;
   function "=" (Left, Right : GameCanvasPaintHelper_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References."=";
   function Java_Box (Value : GameCanvasPaintHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.Java_Box;
   function Java_Unbox_GameCanvasPaintHelper_Access_Array (Value : access Java_Object'Class) return GameCanvasPaintHelper_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.Java_Unbox_GameCanvasPaintHelper_Access_Array;
   subtype GameCanvasPaintHelper_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.GameCanvasPaintHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameCanvasPaintHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References."=";
   subtype GameCanvasPaintHelper_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.GameCanvasPaintHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameCanvasPaintHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References."=";
   function Java_Box (Value : GameCanvasPaintHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.Java_Box;
   function Java_Unbox_GameCanvasPaintHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return GameCanvasPaintHelper_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package_References.Java_Unbox_GameCanvasPaintHelper_Access_Array_Access_Array;

   type GameCanvasPaintHelper is new ProcessPaintable with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out GameCanvasPaintHelper'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return GameCanvasPaintHelper_Access;
   procedure process (This : in out GameCanvasPaintHelper);
   procedure paint (This : in out GameCanvasPaintHelper; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.GameCanvasPaintHelper_Package;


