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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type AllBinaryAdjustedJ2SEImageRotationAnimation is tagged;
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access is access all AllBinaryAdjustedJ2SEImageRotationAnimation'Class;
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryAdjustedJ2SEImageRotationAnimation_Access;
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access is access all AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array;

   type AllBinaryAdjustedJ2SEImageRotationAnimation is new AllBinaryJ2SEImageRotationAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation'Class; originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AllBinaryAdjustedJ2SEImageRotationAnimation_Access;
   procedure init (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dx : Integer; dy : Integer);
   procedure setDx (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dx : Integer);
   function getDx (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation) return Integer;
   procedure getDx (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation);
   procedure setDy (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dy : Integer);
   function getDy (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation) return Integer;
   procedure getDy (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation);
   procedure paintXY (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package;


