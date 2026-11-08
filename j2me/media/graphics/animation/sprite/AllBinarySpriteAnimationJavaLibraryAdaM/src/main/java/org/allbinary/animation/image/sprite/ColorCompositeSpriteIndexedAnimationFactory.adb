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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package; use org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package; use org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.logic.math.J2SEMath_Package;
with javax.microedition.lcdui.game.Layer_Package;
with org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;

package body org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory_Package is

   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype AnimationFactorySpriteScaleUtil_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   subtype AnimationFactorySpriteScaleUtil_Access_Array is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access_Array) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access_Array_Access) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access_Array is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ColorCompositeSpriteIndexedAnimationFactory'Class) is
   begin
      null;
      This.animationFactorySpriteScaleUtil := AnimationFactorySpriteScaleUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ColorCompositeSpriteIndexedAnimationFactory'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.basicColorArray := basicColorArray;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return ColorCompositeSpriteIndexedAnimationFactory_Access is
      This : constant ColorCompositeSpriteIndexedAnimationFactory_Access := new ColorCompositeSpriteIndexedAnimationFactory;
   begin
      ColorCompositeSpriteIndexedAnimationFactory_Package.Initialize (This.all, image_Param, basicColorArray, width, height, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ColorCompositeSpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access is
      sprite : Sprite_Access;
   begin
        sprite := This.animationFactorySpriteScaleUtil.createImage (ColorCompositeSpriteIndexedAnimationFactory'Class (This).getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        return Animation_Access (SpriteIndexedAnimation_Package.Create (sprite, ColorCompositeSpriteIndexedAnimationFactory'Class (This).getImage, This.basicColorArray, This.animationBehaviorFactory.getOrCreateInstance));
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out ColorCompositeSpriteIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return ColorCompositeSpriteIndexedAnimationFactory'Class (This).getInstance (0);
   end getInstanceAnimation;

   procedure getInstance (This : in out ColorCompositeSpriteIndexedAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := ColorCompositeSpriteIndexedAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out ColorCompositeSpriteIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := ColorCompositeSpriteIndexedAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param => animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory_Package;


