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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package;

package org.allbinary.animation.image.ImageArrayRotationAnimation_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type ImageArrayRotationAnimation is tagged;
   type ImageArrayRotationAnimation_Access is access all ImageArrayRotationAnimation'Class;
   type ImageArrayRotationAnimation_Access_Array is array (Natural range <>) of ImageArrayRotationAnimation_Access;
   type ImageArrayRotationAnimation_Access_Array_Access is access all ImageArrayRotationAnimation_Access_Array;
   type ImageArrayRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of ImageArrayRotationAnimation_Access_Array_Access;
   type ImageArrayRotationAnimation_Access_Array_Access_Array_Access is access all ImageArrayRotationAnimation_Access_Array_Access_Array;

   type ImageArrayRotationAnimation is new ImageArrayBaseRotationAnimation with record
      expectedTotalFrames : Integer;
   end record;

   procedure Initialize (This : in out ImageArrayRotationAnimation'Class; imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayRotationAnimation_Access;
   function createAnimation (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayRotationAnimation_Access;
   procedure createAnimation (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   procedure init (This : in out ImageArrayRotationAnimation; imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer);
   procedure setImageArray (This : in out ImageArrayRotationAnimation; imageArray : Image_Access_Array_Access);

end org.allbinary.animation.image.ImageArrayRotationAnimation_Package;


