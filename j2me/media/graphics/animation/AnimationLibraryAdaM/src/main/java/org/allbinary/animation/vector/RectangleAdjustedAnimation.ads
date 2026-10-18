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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;

package org.allbinary.animation.vector.RectangleAdjustedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;

   type RectangleAdjustedAnimation is tagged;
   type RectangleAdjustedAnimation_Access is access all RectangleAdjustedAnimation'Class;
   type RectangleAdjustedAnimation_Access_Array is array (Natural range <>) of RectangleAdjustedAnimation_Access;
   type RectangleAdjustedAnimation_Access_Array_Access is access all RectangleAdjustedAnimation_Access_Array;

   type RectangleAdjustedAnimation is new Animation and ColorCompositeInterface with record
      width : Integer;
      height : Integer;
      offsetX : Integer;
      offsetY : Integer;
   end record;

   procedure Initialize (This : in out RectangleAdjustedAnimation'Class; width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return RectangleAdjustedAnimation_Access;
   procedure nextFrame (This : in out RectangleAdjustedAnimation);
   procedure paintXY (This : in out RectangleAdjustedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure setWidth (This : in out RectangleAdjustedAnimation; width : Integer);
   procedure setHeight (This : in out RectangleAdjustedAnimation; height : Integer);
   procedure setOffsetX (This : in out RectangleAdjustedAnimation; offsetX : Integer);
   procedure setOffsetY (This : in out RectangleAdjustedAnimation; offsetY : Integer);

end org.allbinary.animation.vector.RectangleAdjustedAnimation_Package;


