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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.draw.DrawVerticalStringUtil_Package; use org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package DrawVerticalStringUtil_Package renames Standard.org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type BasicPopupMenuPaintable is tagged;
   type BasicPopupMenuPaintable_Access is access all BasicPopupMenuPaintable'Class;
   type BasicPopupMenuPaintable_Access_Array is array (Natural range <>) of BasicPopupMenuPaintable_Access;
   type BasicPopupMenuPaintable_Access_Array_Access is access all BasicPopupMenuPaintable_Access_Array;
   type BasicPopupMenuPaintable_Access_Array_Access_Array is array (Natural range <>) of BasicPopupMenuPaintable_Access_Array_Access;
   type BasicPopupMenuPaintable_Access_Array_Access_Array_Access is access all BasicPopupMenuPaintable_Access_Array_Access_Array;

   type BasicPopupMenuPaintable is new Paintable and UpdateMyFontInterface with record
      basicSetColorUtil : BasicColorSetUtil_Access;
      drawStringUtil : DrawVerticalStringUtil_Access;
      label : Unbounded_String;
      foregroundBasicColor : BasicColor_Access;
      myFontProcessor : MyFontProcessor_Access;
      rectangle : Rectangle_Access;
      BORDER : Integer;
      heightOffset : Integer;
      offset : Integer;
      animationInterface : Animation_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out BasicPopupMenuPaintable'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return BasicPopupMenuPaintable_Access;
   procedure updateMeasurement (This : in out BasicPopupMenuPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure init (This : in out BasicPopupMenuPaintable; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   procedure paint (This : in out BasicPopupMenuPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package;


