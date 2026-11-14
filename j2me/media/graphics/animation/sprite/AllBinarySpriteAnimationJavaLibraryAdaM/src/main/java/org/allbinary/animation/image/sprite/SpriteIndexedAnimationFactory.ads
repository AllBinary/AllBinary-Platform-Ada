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

with AllBinary_Java;
limited with org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package;
package org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References is
   type SpriteIndexedAnimationFactory_Access is access all org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package.SpriteIndexedAnimationFactory'Class;
   type SpriteIndexedAnimationFactory_Access_Array is array (Natural range <>) of SpriteIndexedAnimationFactory_Access;
   type SpriteIndexedAnimationFactory_Access_Array_Access is access all SpriteIndexedAnimationFactory_Access_Array;
   type SpriteIndexedAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of SpriteIndexedAnimationFactory_Access_Array_Access;
   type SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access is access all SpriteIndexedAnimationFactory_Access_Array_Access_Array;
   type SpriteIndexedAnimationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpriteIndexedAnimationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : SpriteIndexedAnimationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpriteIndexedAnimationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpriteIndexedAnimationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpriteIndexedAnimationFactory_Access_Array_Access is (if Value /= null and then Value.all in SpriteIndexedAnimationFactory_Access_Array_Object'Class then SpriteIndexedAnimationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type SpriteIndexedAnimationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpriteIndexedAnimationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpriteIndexedAnimationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SpriteIndexedAnimationFactory_Access_Array_Access_Array_Object'Class then SpriteIndexedAnimationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References;

with org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References;

package org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package BaseImageAnimationFactory_Package renames Standard.org.allbinary.animation.image.BaseImageAnimationFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AnimationFactorySpriteScaleUtil_Package renames Standard.org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
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
   subtype AnimationFactorySpriteScaleUtil_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access;
   use type AnimationFactorySpriteScaleUtil_Access;
   subtype AnimationFactorySpriteScaleUtil_Access_Array is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array;
   use type AnimationFactorySpriteScaleUtil_Access_Array;
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access;
   use type AnimationFactorySpriteScaleUtil_Access_Array_Access;
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access_Array is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access_Array;
   use type AnimationFactorySpriteScaleUtil_Access_Array_Access_Array;
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access;
   use type AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SpriteIndexedAnimationFactory_Access is org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.SpriteIndexedAnimationFactory_Access;
   function "=" (Left, Right : SpriteIndexedAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References."=";
   subtype SpriteIndexedAnimationFactory_Access_Array is org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.SpriteIndexedAnimationFactory_Access_Array;
   function "=" (Left, Right : SpriteIndexedAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References."=";
   subtype SpriteIndexedAnimationFactory_Access_Array_Access is org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.SpriteIndexedAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : SpriteIndexedAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References."=";
   function Java_Box (Value : SpriteIndexedAnimationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_SpriteIndexedAnimationFactory_Access_Array (Value : access Java_Object'Class) return SpriteIndexedAnimationFactory_Access_Array_Access renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.Java_Unbox_SpriteIndexedAnimationFactory_Access_Array;
   subtype SpriteIndexedAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.SpriteIndexedAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SpriteIndexedAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References."=";
   subtype SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References."=";
   function Java_Box (Value : SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_SpriteIndexedAnimationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return SpriteIndexedAnimationFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package_References.Java_Unbox_SpriteIndexedAnimationFactory_Access_Array_Access_Array;

   type SpriteIndexedAnimationFactory is new BaseImageAnimationFactory and ProceduralAnimationInterfaceFactoryInterface with record
      animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil_Access;
      basicColorArray : BasicColor_Access_Array_Access;
   end record;

   procedure Initialize (This : in out SpriteIndexedAnimationFactory'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SpriteIndexedAnimationFactory_Access;
   function createCWHDXY (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SpriteIndexedAnimationFactory_Access;
   procedure createCWHDXY (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createCWH (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SpriteIndexedAnimationFactory_Access;
   procedure createCWH (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createWH (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SpriteIndexedAnimationFactory_Access;
   procedure createWH (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   procedure initHWH (This : in out SpriteIndexedAnimationFactory);
   function getInstance (This : in out SpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out SpriteIndexedAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out SpriteIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out SpriteIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);

end org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package;


