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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.GameStatisticsFactory_Package; use org.allbinary.canvas.GameStatisticsFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;

package org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package is

   package GameStatisticsFactory_Package renames Standard.org.allbinary.canvas.GameStatisticsFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;

   type GamePerformanceInitUpdatePaintable is tagged;
   type GamePerformanceInitUpdatePaintable_Access is access all GamePerformanceInitUpdatePaintable'Class;
   type GamePerformanceInitUpdatePaintable_Access_Array is array (Natural range <>) of GamePerformanceInitUpdatePaintable_Access;
   type GamePerformanceInitUpdatePaintable_Access_Array_Access is access all GamePerformanceInitUpdatePaintable_Access_Array;

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
   procedure init (This : in out GamePerformanceInitUpdatePaintable);
   procedure update (This : in out GamePerformanceInitUpdatePaintable);
   procedure paint (This : in out GamePerformanceInitUpdatePaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable_Package;


