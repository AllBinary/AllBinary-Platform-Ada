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

limited with org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package;
package org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References is
   type OneRowSpriteIndexedAnimationFactory_Access is access all org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package.OneRowSpriteIndexedAnimationFactory'Class;
   type OneRowSpriteIndexedAnimationFactory_Access_Array is array (Natural range <>) of OneRowSpriteIndexedAnimationFactory_Access;
   type OneRowSpriteIndexedAnimationFactory_Access_Array_Access is access all OneRowSpriteIndexedAnimationFactory_Access_Array;
   type OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of OneRowSpriteIndexedAnimationFactory_Access_Array_Access;
   type OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array_Access is access all OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array;
end org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References;

with org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References;
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
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
limited with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References;

package org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package BaseImageAnimationFactory_Package renames Standard.org.allbinary.animation.image.BaseImageAnimationFactory_Package;
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


   subtype OneRowSpriteIndexedAnimationFactory_Access is org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References.OneRowSpriteIndexedAnimationFactory_Access;
   function "=" (Left, Right : OneRowSpriteIndexedAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References."=";
   subtype OneRowSpriteIndexedAnimationFactory_Access_Array is org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References.OneRowSpriteIndexedAnimationFactory_Access_Array;
   function "=" (Left, Right : OneRowSpriteIndexedAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References."=";
   subtype OneRowSpriteIndexedAnimationFactory_Access_Array_Access is org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References.OneRowSpriteIndexedAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : OneRowSpriteIndexedAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References."=";
   subtype OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References.OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References."=";
   subtype OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References.OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OneRowSpriteIndexedAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package_References."=";

   type OneRowSpriteIndexedAnimationFactory is new BaseImageAnimationFactory with record
      animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil_Access;
   end record;

   procedure Initialize (This : in out OneRowSpriteIndexedAnimationFactory'Class; image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access;
   function createFactoryDX (image_Param : access Image_Package.Image'Class; dx : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access;
   procedure createFactoryDX (image_Param : access Image_Package.Image'Class; dx : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createFactoryDXY (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access;
   procedure createFactoryDXY (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createFactoryWH (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access;
   procedure createFactoryWH (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createFactory (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access;
   procedure createFactory (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   procedure init (This : in out OneRowSpriteIndexedAnimationFactory; dx : Integer; dy : Integer);
   procedure initW (This : in out OneRowSpriteIndexedAnimationFactory; dx : Integer);
   function getInstance (This : in out OneRowSpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out OneRowSpriteIndexedAnimationFactory; instanceId : Integer);

end org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package;


