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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;

package org.allbinary.animation.vector.CircleFilledAnimation_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;

   type CircleFilledAnimation is tagged;
   type CircleFilledAnimation_Access is access all CircleFilledAnimation'Class;
   type CircleFilledAnimation_Access_Array is array (Natural range <>) of CircleFilledAnimation_Access;
   type CircleFilledAnimation_Access_Array_Access is access all CircleFilledAnimation_Access_Array;

   type CircleFilledAnimation is new Animation and ColorCompositeInterface with record
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out CircleFilledAnimation'Class; width : Integer; height : Integer; basicColor : BasicColor_Access);
   function Create (width : Integer; height : Integer; basicColor : BasicColor_Access) return CircleFilledAnimation_Access;
   procedure nextFrame (This : in out CircleFilledAnimation);
   procedure paintXY (This : in out CircleFilledAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.vector.CircleFilledAnimation_Package;


