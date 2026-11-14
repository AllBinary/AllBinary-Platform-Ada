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

with AllBinary_Java;
limited with org.allbinary.animation.image.LazyImageRotationAnimation_Package;
package org.allbinary.animation.image.LazyImageRotationAnimation_Package_References is
   type LazyImageRotationAnimation_Access is access all org.allbinary.animation.image.LazyImageRotationAnimation_Package.LazyImageRotationAnimation'Class;
   type LazyImageRotationAnimation_Access_Array is array (Natural range <>) of LazyImageRotationAnimation_Access;
   type LazyImageRotationAnimation_Access_Array_Access is access all LazyImageRotationAnimation_Access_Array;
   type LazyImageRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of LazyImageRotationAnimation_Access_Array_Access;
   type LazyImageRotationAnimation_Access_Array_Access_Array_Access is access all LazyImageRotationAnimation_Access_Array_Access_Array;
   type LazyImageRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LazyImageRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : LazyImageRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LazyImageRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LazyImageRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LazyImageRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in LazyImageRotationAnimation_Access_Array_Object'Class then LazyImageRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type LazyImageRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LazyImageRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LazyImageRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LazyImageRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LazyImageRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LazyImageRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LazyImageRotationAnimation_Access_Array_Access_Array_Object'Class then LazyImageRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.LazyImageRotationAnimation_Package_References;

with org.allbinary.animation.image.LazyImageRotationAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
limited with org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package_References;

package org.allbinary.animation.image.LazyImageRotationAnimation_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   use type GL_Access;
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   use type GL_Access_Array;
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   use type GL_Access_Array_Access;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   use type GL_Access_Array_Access_Array;
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   use type GL_Access_Array_Access_Array_Access;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   use type ScaleProperties_Access;
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   use type ScaleProperties_Access_Array;
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access;
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   use type ScaleProperties_Access_Array_Access_Array;
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype LazyImageRotationAnimation_Access is org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.LazyImageRotationAnimation_Access;
   function "=" (Left, Right : LazyImageRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References."=";
   subtype LazyImageRotationAnimation_Access_Array is org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.LazyImageRotationAnimation_Access_Array;
   function "=" (Left, Right : LazyImageRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References."=";
   subtype LazyImageRotationAnimation_Access_Array_Access is org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.LazyImageRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : LazyImageRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References."=";
   function Java_Box (Value : LazyImageRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_LazyImageRotationAnimation_Access_Array (Value : access Java_Object'Class) return LazyImageRotationAnimation_Access_Array_Access renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.Java_Unbox_LazyImageRotationAnimation_Access_Array;
   subtype LazyImageRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.LazyImageRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : LazyImageRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References."=";
   subtype LazyImageRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.LazyImageRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LazyImageRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References."=";
   function Java_Box (Value : LazyImageRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_LazyImageRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return LazyImageRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.image.LazyImageRotationAnimation_Package_References.Java_Unbox_LazyImageRotationAnimation_Access_Array_Access_Array;

   type LazyImageRotationAnimation is new RotationAnimation with record
      LazyImageRotationAnimation_Field_logUtil : LogUtil_Access;
      layoutIndex : Integer;
      instanceId : Integer;
      animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access;
      NULL_INDEX_ANIMATION : IndexedAnimation_Access;
      animation : IndexedAnimation_Access;
      scaleProperties : ScaleProperties_Access;
   end record;
   SET_REAL_ANIMATION : Unbounded_String;

   procedure Initialize (This : in out LazyImageRotationAnimation'Class; layoutIndex : Integer; instanceId : Integer; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (layoutIndex : Integer; instanceId : Integer; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return LazyImageRotationAnimation_Access;
   procedure setRealAnimation (This : in out LazyImageRotationAnimation);
   procedure setScale (This : in out LazyImageRotationAnimation; scaleX : Float; scaleY : Float);
   function getAnimationBehavior (This : in out LazyImageRotationAnimation) return AnimationBehavior_Access;
   procedure set (This : in out LazyImageRotationAnimation; gl_Param : access GL_Package.GL'Class);
   procedure setAlpha (This : in out LazyImageRotationAnimation; alpha : Integer);
   procedure setDx (This : in out LazyImageRotationAnimation; dx : Integer);
   procedure setDy (This : in out LazyImageRotationAnimation; dy : Integer);
   procedure setMaxScale (This : in out LazyImageRotationAnimation; maxScaleX : Float; maxScaleY : Float);
   procedure nextRotation (This : in out LazyImageRotationAnimation);
   procedure previousRotation (This : in out LazyImageRotationAnimation);
   procedure nextRotationX (This : in out LazyImageRotationAnimation);
   procedure previousRotationX (This : in out LazyImageRotationAnimation);
   procedure nextRotationZ (This : in out LazyImageRotationAnimation);
   procedure previousRotationZ (This : in out LazyImageRotationAnimation);
   procedure changeBasicColor (This : in out LazyImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out LazyImageRotationAnimation) return BasicColor_Access;
   function getChangeBasicColor (This : in out LazyImageRotationAnimation) return BasicColor_Access;
   function getChangeColor (This : in out LazyImageRotationAnimation) return Integer;
   function getColor (This : in out LazyImageRotationAnimation) return Integer;
   function getDx (This : in out LazyImageRotationAnimation) return Integer;
   function getDy (This : in out LazyImageRotationAnimation) return Integer;
   function isThreed (This : in out LazyImageRotationAnimation) return Boolean;
   procedure nextFrame (This : in out LazyImageRotationAnimation);
   procedure reset (This : in out LazyImageRotationAnimation);
   procedure setFrame (This : in out LazyImageRotationAnimation; index : Integer);
   function getFrame (This : in out LazyImageRotationAnimation) return Integer;
   function getAnimationSize (This : in out LazyImageRotationAnimation) return Integer;
   function getSize (This : in out LazyImageRotationAnimation) return Integer;
   procedure previousFrame (This : in out LazyImageRotationAnimation);
   function isLastFrame (This : in out LazyImageRotationAnimation) return Boolean;
   procedure setSequence (This : in out LazyImageRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out LazyImageRotationAnimation) return Integer_Array_Access;
   function getWidth (This : in out LazyImageRotationAnimation) return Integer;
   procedure paintXY (This : in out LazyImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out LazyImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   function toString (This : in out LazyImageRotationAnimation) return Unbounded_String;

end org.allbinary.animation.image.LazyImageRotationAnimation_Package;


