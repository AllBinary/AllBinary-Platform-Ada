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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.EndGamePaintable_Package is

   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type EndGamePaintable is tagged;
   type EndGamePaintable_Access is access all EndGamePaintable'Class;
   type EndGamePaintable_Access_Array is array (Natural range <>) of EndGamePaintable_Access;
   type EndGamePaintable_Access_Array_Access is access all EndGamePaintable_Access_Array;

   type EndGamePaintable is new Paintable with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out EndGamePaintable'Class; gameCanvas : AllBinaryGameCanvas_Access);
   function Create (gameCanvas : AllBinaryGameCanvas_Access) return EndGamePaintable_Access;
   procedure paint (This : in out EndGamePaintable; graphics : Graphics_Access);

end org.allbinary.game.displayable.canvas.EndGamePaintable_Package;


