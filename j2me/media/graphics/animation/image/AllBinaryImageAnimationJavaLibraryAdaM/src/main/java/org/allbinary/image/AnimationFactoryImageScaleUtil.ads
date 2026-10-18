-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package; use org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.image.ImageJ2MEScaleUtil_Package; use org.allbinary.media.image.ImageJ2MEScaleUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.image.AnimationFactoryImageScaleUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationFactoryInitializationVisitor_Package renames Standard.org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
   package BaseImageAnimationFactory_Package renames Standard.org.allbinary.animation.image.BaseImageAnimationFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package ImageJ2MEScaleUtil_Package renames Standard.org.allbinary.media.image.ImageJ2MEScaleUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AnimationFactoryImageScaleUtil is tagged;
   type AnimationFactoryImageScaleUtil_Access is access all AnimationFactoryImageScaleUtil'Class;
   type AnimationFactoryImageScaleUtil_Access_Array is array (Natural range <>) of AnimationFactoryImageScaleUtil_Access;
   type AnimationFactoryImageScaleUtil_Access_Array_Access is access all AnimationFactoryImageScaleUtil_Access_Array;

   type AnimationFactoryImageScaleUtil is new Java_Object with record
      imageScaleUtil : ImageJ2MEScaleUtil_Access;
   end record;
   instance : AnimationFactoryImageScaleUtil_Access;

   procedure Initialize (This : in out AnimationFactoryImageScaleUtil'Class);
   function Create return AnimationFactoryImageScaleUtil_Access;
   function getInstance return AnimationFactoryImageScaleUtil_Access;
   function createImage (This : in out AnimationFactoryImageScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer) return Image_Access;
   procedure createImage (This : in out AnimationFactoryImageScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer);
   procedure processAdjust (This : in out AnimationFactoryImageScaleUtil; baseImageAnimationFactory_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class);

end org.allbinary.image.AnimationFactoryImageScaleUtil_Package;


