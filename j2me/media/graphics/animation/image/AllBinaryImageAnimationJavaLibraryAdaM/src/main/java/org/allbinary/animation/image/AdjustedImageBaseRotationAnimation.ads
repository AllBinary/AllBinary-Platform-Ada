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
with org.allbinary.animation.image.ImageBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageBaseRotationAnimation_Package;

package org.allbinary.animation.image.AdjustedImageBaseRotationAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type AdjustedImageBaseRotationAnimation is tagged;
   type AdjustedImageBaseRotationAnimation_Access is access all AdjustedImageBaseRotationAnimation'Class;
   type AdjustedImageBaseRotationAnimation_Access_Array is array (Natural range <>) of AdjustedImageBaseRotationAnimation_Access;
   type AdjustedImageBaseRotationAnimation_Access_Array_Access is access all AdjustedImageBaseRotationAnimation_Access_Array;

   type AdjustedImageBaseRotationAnimation is new ImageBaseRotationAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedImageBaseRotationAnimation'Class; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageBaseRotationAnimation_Access;
   procedure init (This : in out AdjustedImageBaseRotationAnimation; dx : Integer; dy : Integer);
   procedure paintXY (This : in out AdjustedImageBaseRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.image.AdjustedImageBaseRotationAnimation_Package;


