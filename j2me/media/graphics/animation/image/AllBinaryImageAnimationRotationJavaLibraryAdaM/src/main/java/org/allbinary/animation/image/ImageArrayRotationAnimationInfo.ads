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
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;

package org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type ImageArrayRotationAnimationInfo is tagged;
   type ImageArrayRotationAnimationInfo_Access is access all ImageArrayRotationAnimationInfo'Class;
   type ImageArrayRotationAnimationInfo_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationInfo_Access;
   type ImageArrayRotationAnimationInfo_Access_Array_Access is access all ImageArrayRotationAnimationInfo_Access_Array;
   type ImageArrayRotationAnimationInfo_Access_Array_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationInfo_Access_Array_Access;
   type ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access is access all ImageArrayRotationAnimationInfo_Access_Array_Access_Array;

   type ImageArrayRotationAnimationInfo is new Java_Object with record
      imageArray : Image_Access_Array_Access;
      angleIncrement : Integer;
      totalAngle : Integer;
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out ImageArrayRotationAnimationInfo'Class; imageArray : Image_Access_Array_Access; angleIncrement : Integer; totalAngle : Integer; dx : Integer; dy : Integer);
   function Create (imageArray : Image_Access_Array_Access; angleIncrement : Integer; totalAngle : Integer; dx : Integer; dy : Integer) return ImageArrayRotationAnimationInfo_Access;
   procedure setImageArray (This : in out ImageArrayRotationAnimationInfo; imageArray : Image_Access_Array_Access);
   function getImageArray (This : in out ImageArrayRotationAnimationInfo) return Image_Access_Array_Access;
   function getAngleInfoP (This : in out ImageArrayRotationAnimationInfo) return AngleInfo_Access;
   procedure setTotalAngle (This : in out ImageArrayRotationAnimationInfo; totalAngle : Integer);
   function getTotalAngle (This : in out ImageArrayRotationAnimationInfo) return Integer;
   procedure setDx (This : in out ImageArrayRotationAnimationInfo; dx : Integer);
   function getDx (This : in out ImageArrayRotationAnimationInfo) return Integer;
   procedure setDy (This : in out ImageArrayRotationAnimationInfo; dy : Integer);
   function getDy (This : in out ImageArrayRotationAnimationInfo) return Integer;

end org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;


