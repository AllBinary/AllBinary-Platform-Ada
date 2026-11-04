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

limited with org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
package org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References is
   type AnimationFactoryImageScaleUtil_Access is access all org.allbinary.image.AnimationFactoryImageScaleUtil_Package.AnimationFactoryImageScaleUtil'Class;
   type AnimationFactoryImageScaleUtil_Access_Array is array (Natural range <>) of AnimationFactoryImageScaleUtil_Access;
   type AnimationFactoryImageScaleUtil_Access_Array_Access is access all AnimationFactoryImageScaleUtil_Access_Array;
   type AnimationFactoryImageScaleUtil_Access_Array_Access_Array is array (Natural range <>) of AnimationFactoryImageScaleUtil_Access_Array_Access;
   type AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access is access all AnimationFactoryImageScaleUtil_Access_Array_Access_Array;
end org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References;

with org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package_References;
limited with org.allbinary.media.image.ImageJ2MEScaleUtil_Package;
with org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References;

package org.allbinary.image.AnimationFactoryImageScaleUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BaseImageAnimationFactory_Package renames Standard.org.allbinary.animation.image.BaseImageAnimationFactory_Package;
   package ImageJ2MEScaleUtil_Package renames Standard.org.allbinary.media.image.ImageJ2MEScaleUtil_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype BaseImageAnimationFactory_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access;
   use type BaseImageAnimationFactory_Access;
   subtype BaseImageAnimationFactory_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array;
   use type BaseImageAnimationFactory_Access_Array;
   subtype BaseImageAnimationFactory_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access;
   use type BaseImageAnimationFactory_Access_Array_Access;
   subtype BaseImageAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array;
   use type BaseImageAnimationFactory_Access_Array_Access_Array;
   subtype BaseImageAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array_Access;
   use type BaseImageAnimationFactory_Access_Array_Access_Array_Access;
   subtype ImageJ2MEScaleUtil_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access;
   use type ImageJ2MEScaleUtil_Access;
   subtype ImageJ2MEScaleUtil_Access_Array is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array;
   use type ImageJ2MEScaleUtil_Access_Array;
   subtype ImageJ2MEScaleUtil_Access_Array_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access;
   use type ImageJ2MEScaleUtil_Access_Array_Access;
   subtype ImageJ2MEScaleUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access_Array;
   use type ImageJ2MEScaleUtil_Access_Array_Access_Array;
   subtype ImageJ2MEScaleUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access_Array_Access;
   use type ImageJ2MEScaleUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AnimationFactoryImageScaleUtil_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access_Array is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access_Array) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access_Array_Access) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access_Array is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";
   subtype AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access is org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References.AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationFactoryImageScaleUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package_References."=";

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


