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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;

package org.allbinary.image.AnimationFrameToImageUtil_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;

   type AnimationFrameToImageUtil is tagged;
   type AnimationFrameToImageUtil_Access is access all AnimationFrameToImageUtil'Class;
   type AnimationFrameToImageUtil_Access_Array is array (Natural range <>) of AnimationFrameToImageUtil_Access;
   type AnimationFrameToImageUtil_Access_Array_Access is access all AnimationFrameToImageUtil_Access_Array;

   type AnimationFrameToImageUtil is new Java_Object with null record;
   instance : AnimationFrameToImageUtil_Access;

   procedure Initialize (This : in out AnimationFrameToImageUtil'Class);
   function Create return AnimationFrameToImageUtil_Access;
   function getInstance return AnimationFrameToImageUtil_Access;
   function getInstanceTranslate (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface : Animation_Access) return Image_Access;
   procedure getInstanceTranslate (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface : Animation_Access);
   function getInstanceWH (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface : Animation_Access) return Image_Access;
   procedure getInstanceWH (This : in out AnimationFrameToImageUtil; width : Integer; height : Integer; animationInterface : Animation_Access);

end org.allbinary.image.AnimationFrameToImageUtil_Package;


