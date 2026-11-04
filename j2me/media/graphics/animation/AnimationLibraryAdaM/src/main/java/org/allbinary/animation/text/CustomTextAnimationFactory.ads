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

limited with org.allbinary.animation.text.CustomTextAnimationFactory_Package;
package org.allbinary.animation.text.CustomTextAnimationFactory_Package_References is
   type CustomTextAnimationFactory_Access is access all org.allbinary.animation.text.CustomTextAnimationFactory_Package.CustomTextAnimationFactory'Class;
   type CustomTextAnimationFactory_Access_Array is array (Natural range <>) of CustomTextAnimationFactory_Access;
   type CustomTextAnimationFactory_Access_Array_Access is access all CustomTextAnimationFactory_Access_Array;
   type CustomTextAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of CustomTextAnimationFactory_Access_Array_Access;
   type CustomTextAnimationFactory_Access_Array_Access_Array_Access is access all CustomTextAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.text.CustomTextAnimationFactory_Package_References;

with org.allbinary.animation.text.CustomTextAnimationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;

package org.allbinary.animation.text.CustomTextAnimationFactory_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   use type AnimationBehaviorFactory_Access;
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   use type AnimationBehaviorFactory_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   use type AnimationBehaviorFactory_Access_Array_Access;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   use type AnimationBehaviorFactory_Access_Array_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   use type AnimationBehaviorFactory_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CustomTextAnimationFactory_Access is org.allbinary.animation.text.CustomTextAnimationFactory_Package_References.CustomTextAnimationFactory_Access;
   function "=" (Left, Right : CustomTextAnimationFactory_Access) return Boolean renames org.allbinary.animation.text.CustomTextAnimationFactory_Package_References."=";
   subtype CustomTextAnimationFactory_Access_Array is org.allbinary.animation.text.CustomTextAnimationFactory_Package_References.CustomTextAnimationFactory_Access_Array;
   function "=" (Left, Right : CustomTextAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextAnimationFactory_Package_References."=";
   subtype CustomTextAnimationFactory_Access_Array_Access is org.allbinary.animation.text.CustomTextAnimationFactory_Package_References.CustomTextAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : CustomTextAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextAnimationFactory_Package_References."=";
   subtype CustomTextAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.text.CustomTextAnimationFactory_Package_References.CustomTextAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTextAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.CustomTextAnimationFactory_Package_References."=";
   subtype CustomTextAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.text.CustomTextAnimationFactory_Package_References.CustomTextAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTextAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.CustomTextAnimationFactory_Package_References."=";

   type CustomTextAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      logUtil : LogUtil_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
      basicColor : BasicColor_Access;
      text : Unbounded_String;
      initScaleHeight : Integer;
      dx : Integer;
      dy : Integer;
      font : Font_Access;
      scaleProperties : ScaleProperties_Access;
   end record;

   procedure Initialize (This : in out CustomTextAnimationFactory'Class; text : Unbounded_String; fontSize : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (text : Unbounded_String; fontSize : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CustomTextAnimationFactory_Access;
   function createDXY (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CustomTextAnimationFactory_Access;
   procedure createDXY (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function getInstance (This : in out CustomTextAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out CustomTextAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out CustomTextAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);
   function getWidth (This : in out CustomTextAnimationFactory) return Integer;
   function getHeight (This : in out CustomTextAnimationFactory) return Integer;

end org.allbinary.animation.text.CustomTextAnimationFactory_Package;


