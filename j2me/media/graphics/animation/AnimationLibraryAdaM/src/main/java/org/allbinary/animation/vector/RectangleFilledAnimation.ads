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

package org.allbinary.animation.vector.RectangleFilledAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;

   type RectangleFilledAnimation is tagged;
   type RectangleFilledAnimation_Access is access all RectangleFilledAnimation'Class;
   type RectangleFilledAnimation_Access_Array is array (Natural range <>) of RectangleFilledAnimation_Access;
   type RectangleFilledAnimation_Access_Array_Access is access all RectangleFilledAnimation_Access_Array;

   type RectangleFilledAnimation is new Animation and ColorCompositeInterface with record
      widthP : Integer;
      heightP : Integer;
   end record;

   procedure Initialize (This : in out RectangleFilledAnimation'Class; width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (width : Integer; height : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return RectangleFilledAnimation_Access;
   procedure nextFrame (This : in out RectangleFilledAnimation);
   procedure paintXY (This : in out RectangleFilledAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure setWidth (This : in out RectangleFilledAnimation; width : Integer);
   procedure setHeight (This : in out RectangleFilledAnimation; height : Integer);

end org.allbinary.animation.vector.RectangleFilledAnimation_Package;


