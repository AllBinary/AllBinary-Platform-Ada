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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.animation.vector.RectangleFilledAnimation_Package; use org.allbinary.animation.vector.RectangleFilledAnimation_Package;

package org.allbinary.animation.vector.RectangleFilledAdjustedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;

   type RectangleFilledAdjustedAnimation is tagged;
   type RectangleFilledAdjustedAnimation_Access is access all RectangleFilledAdjustedAnimation'Class;
   type RectangleFilledAdjustedAnimation_Access_Array is array (Natural range <>) of RectangleFilledAdjustedAnimation_Access;
   type RectangleFilledAdjustedAnimation_Access_Array_Access is access all RectangleFilledAdjustedAnimation_Access_Array;

   type RectangleFilledAdjustedAnimation is new RectangleFilledAnimation and ColorCompositeInterface with record
      offsetX : Integer;
      offsetY : Integer;
   end record;

   procedure Initialize (This : in out RectangleFilledAdjustedAnimation'Class; width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; offsetX : Integer; offsetY : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return RectangleFilledAdjustedAnimation_Access;
   procedure nextFrame (This : in out RectangleFilledAdjustedAnimation);
   procedure paintXY (This : in out RectangleFilledAdjustedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure setOffsetX (This : in out RectangleFilledAdjustedAnimation; offsetX : Integer);
   procedure setOffsetY (This : in out RectangleFilledAdjustedAnimation; offsetY : Integer);

end org.allbinary.animation.vector.RectangleFilledAdjustedAnimation_Package;


