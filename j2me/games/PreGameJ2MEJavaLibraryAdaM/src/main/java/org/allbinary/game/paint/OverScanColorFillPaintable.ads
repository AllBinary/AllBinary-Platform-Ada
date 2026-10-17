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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.game.paint.ColorFillPaintable_Package; use org.allbinary.game.paint.ColorFillPaintable_Package;

package org.allbinary.game.paint.OverScanColorFillPaintable_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type OverScanColorFillPaintable is tagged;
   type OverScanColorFillPaintable_Access is access all OverScanColorFillPaintable'Class;
   type OverScanColorFillPaintable_Access_Array is array (Natural range <>) of OverScanColorFillPaintable_Access;
   type OverScanColorFillPaintable_Access_Array_Access is access all OverScanColorFillPaintable_Access_Array;

   type OverScanColorFillPaintable is new ColorFillPaintable with null record;

   procedure Initialize (This : in out OverScanColorFillPaintable'Class; basicColor_Param : access BasicColor'Class);
   function Create (basicColor_Param : access BasicColor'Class) return OverScanColorFillPaintable_Access;
   procedure paint (This : in out OverScanColorFillPaintable; graphics_Param : access Graphics'Class);

end org.allbinary.game.paint.OverScanColorFillPaintable_Package;


