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
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;

package org.allbinary.animation.vector.CircleAnimation_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;

   type CircleAnimation is tagged;
   type CircleAnimation_Access is access all CircleAnimation'Class;
   type CircleAnimation_Access_Array is array (Natural range <>) of CircleAnimation_Access;
   type CircleAnimation_Access_Array_Access is access all CircleAnimation_Access_Array;

   type CircleAnimation is new Animation and ColorCompositeInterface with record
      TOTAL_ANGLE : Integer;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out CircleAnimation'Class; width : Integer; height : Integer; basicColor : BasicColor_Access);
   function Create (width : Integer; height : Integer; basicColor : BasicColor_Access) return CircleAnimation_Access;
   procedure nextFrame (This : in out CircleAnimation);
   procedure paintXY (This : in out CircleAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.vector.CircleAnimation_Package;


