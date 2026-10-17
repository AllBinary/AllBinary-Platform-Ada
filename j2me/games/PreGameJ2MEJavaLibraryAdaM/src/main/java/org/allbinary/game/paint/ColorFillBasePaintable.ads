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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.paint.ColorFillBasePaintable_Package is

   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package ColorCompositeInterface_Package renames org.allbinary.graphics.color.ColorCompositeInterface_Package;
   package Paintable_Package renames org.allbinary.graphics.paint.Paintable_Package;

   type ColorFillBasePaintable is tagged;
   type ColorFillBasePaintable_Access is access all ColorFillBasePaintable'Class;
   type ColorFillBasePaintable_Access_Array is array (Natural range <>) of ColorFillBasePaintable_Access;
   type ColorFillBasePaintable_Access_Array_Access is access all ColorFillBasePaintable_Access_Array;

   type ColorFillBasePaintable is new Paintable and ColorCompositeInterface with record
      basicColor : BasicColor_Access;
      colorP : Integer;
   end record;

   procedure Initialize (This : in out ColorFillBasePaintable'Class; basicColor : BasicColor_Access);
   function Create (basicColor : BasicColor_Access) return ColorFillBasePaintable_Access;
   procedure setBasicColorP (This : in out ColorFillBasePaintable; basicColor : BasicColor_Access);
   function getBasicColorP (This : in out ColorFillBasePaintable) return BasicColor_Access;
   procedure getBasicColorP (This : in out ColorFillBasePaintable);
   function getColor (This : in out ColorFillBasePaintable) return Integer;
   procedure getColor (This : in out ColorFillBasePaintable);
   procedure setColor (This : in out ColorFillBasePaintable; color : Integer);
   procedure paint (This : in out ColorFillBasePaintable; graphics : Graphics_Access);

end org.allbinary.game.paint.ColorFillBasePaintable_Package;


