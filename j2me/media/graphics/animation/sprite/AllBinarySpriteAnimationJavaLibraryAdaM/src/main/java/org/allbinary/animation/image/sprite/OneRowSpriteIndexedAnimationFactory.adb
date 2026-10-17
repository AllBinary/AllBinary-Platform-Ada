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


package body org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package is

   procedure Initialize_Fields (This : in out OneRowSpriteIndexedAnimationFactory'Class) is
   begin
      null;
      This.animationFactorySpriteScaleUtil := AnimationFactorySpriteScaleUtil_Package.getInstance;
   end Initialize_Fields;


   --  throws Exception
   function createFactoryDX (image_Param : access Image_Package.Image'Class; dx : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      oneRowSpriteIndexedAnimationFactory : OneRowSpriteIndexedAnimationFactory_Access;
   begin
        oneRowSpriteIndexedAnimationFactory := OneRowSpriteIndexedAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, image.getHeight, image.getHeight, 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.initW (dx);
        return oneRowSpriteIndexedAnimationFactory;
   end createFactoryDX;

   --  throws Exception
   function createFactoryDXY (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      oneRowSpriteIndexedAnimationFactory : OneRowSpriteIndexedAnimationFactory_Access;
   begin
        oneRowSpriteIndexedAnimationFactory := OneRowSpriteIndexedAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, image.getHeight, image.getHeight, 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.init (dx, dy);
        return oneRowSpriteIndexedAnimationFactory;
   end createFactoryDXY;

   --  throws Exception
   function createFactoryWH (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        return OneRowSpriteIndexedAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
   end createFactoryWH;

   --  throws Exception
   function createFactory (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        return OneRowSpriteIndexedAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, image.getHeight, image.getHeight, 0, 0, animationBehaviorFactory);
   end createFactory;

   procedure Initialize (This : in out OneRowSpriteIndexedAnimationFactory'Class; image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        Initialize_Fields (This);
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return OneRowSpriteIndexedAnimationFactory_Access is
      This : constant OneRowSpriteIndexedAnimationFactory_Access := new OneRowSpriteIndexedAnimationFactory;
   begin
      OneRowSpriteIndexedAnimationFactory_Package.Initialize (This.all, image_Param, sequenceArray, width, height, dx, dy, animationBehaviorFactory_Param);
      return This;
   end Create;

   procedure init (This : in out OneRowSpriteIndexedAnimationFactory; dx : Integer; dy : Integer) is
   begin
        This.animationFactoryInitializationVisitor.dx := dx;
        This.animationFactoryInitializationVisitor.dy := dy;
   end init;

   procedure initW (This : in out OneRowSpriteIndexedAnimationFactory; dx : Integer) is
   begin
        This.init (dx, 0);
        This.animationFactoryInitializationVisitor.dx := (This.animationFactoryInitializationVisitor.dx) + (-((Java_Shift_Right_Arithmetic (This.animationFactoryInitializationVisitor.width, 2))));
   end initW;

   --  throws Exception
   function getInstance (This : in out OneRowSpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access is
      sprite : Sprite_Access;
   begin
        sprite := This.animationFactorySpriteScaleUtil.createImage (This.getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            return AdjustedSpriteIndexedAnimation_Package.Create (sprite, This.getImage, BasicColorUtil_Package.getInstance.ZERO_ARRAY, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            return SpriteIndexedAnimation_Package.Create (sprite, This.getImage, BasicColorUtil_Package.getInstance.ZERO_ARRAY, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   procedure createFactoryDX (image_Param : access Image_Package.Image'Class; dx : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant OneRowSpriteIndexedAnimationFactory_Access := createFactoryDX (image_Param, dx, animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryDX;

   procedure createFactoryDXY (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant OneRowSpriteIndexedAnimationFactory_Access := createFactoryDXY (image_Param, dx, dy, animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryDXY;

   procedure createFactoryWH (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant OneRowSpriteIndexedAnimationFactory_Access := createFactoryWH (image_Param, width, height, animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryWH;

   procedure createFactory (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant OneRowSpriteIndexedAnimationFactory_Access := createFactory (image_Param, animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactory;

   procedure getInstance (This : in out OneRowSpriteIndexedAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := OneRowSpriteIndexedAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package;


