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

limited with org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package;
package org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References is
   type GamePerformanceInitUpdatePaintable_Access is access all org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package.GamePerformanceInitUpdatePaintable'Class;
   type GamePerformanceInitUpdatePaintable_Access_Array is array (Natural range <>) of GamePerformanceInitUpdatePaintable_Access;
   type GamePerformanceInitUpdatePaintable_Access_Array_Access is access all GamePerformanceInitUpdatePaintable_Access_Array;
   type GamePerformanceInitUpdatePaintable_Access_Array_Access_Array is array (Natural range <>) of GamePerformanceInitUpdatePaintable_Access_Array_Access;
   type GamePerformanceInitUpdatePaintable_Access_Array_Access_Array_Access is access all GamePerformanceInitUpdatePaintable_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References;

with org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References;
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
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;

package org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
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
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GamePerformanceInitUpdatePaintable_Access is org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References.GamePerformanceInitUpdatePaintable_Access;
   function "=" (Left, Right : GamePerformanceInitUpdatePaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References."=";
   subtype GamePerformanceInitUpdatePaintable_Access_Array is org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References.GamePerformanceInitUpdatePaintable_Access_Array;
   function "=" (Left, Right : GamePerformanceInitUpdatePaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References."=";
   subtype GamePerformanceInitUpdatePaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References.GamePerformanceInitUpdatePaintable_Access_Array_Access;
   function "=" (Left, Right : GamePerformanceInitUpdatePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References."=";
   subtype GamePerformanceInitUpdatePaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References.GamePerformanceInitUpdatePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : GamePerformanceInitUpdatePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References."=";
   subtype GamePerformanceInitUpdatePaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References.GamePerformanceInitUpdatePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GamePerformanceInitUpdatePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package_References."=";

   type GamePerformanceInitUpdatePaintable is new InitUpdatePaintable and UpdateMyFontInterface with record
      halfHeight : Integer;
      yArray : Integer_Array_Access;
      myFontProcessor : MyFontProcessor_Access;
      baseRefreshHelperCharArray : Character_Array_Access_Array_Access;
      defaultStringWidth : Integer;
      RED : Integer;
   end record;

   procedure Initialize (This : in out GamePerformanceInitUpdatePaintable'Class);
   function Create return GamePerformanceInitUpdatePaintable_Access;
   procedure updateMeasurement (This : in out GamePerformanceInitUpdatePaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure init_Method (This : in out GamePerformanceInitUpdatePaintable);
   procedure update (This : in out GamePerformanceInitUpdatePaintable);
   procedure paint (This : in out GamePerformanceInitUpdatePaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package;


