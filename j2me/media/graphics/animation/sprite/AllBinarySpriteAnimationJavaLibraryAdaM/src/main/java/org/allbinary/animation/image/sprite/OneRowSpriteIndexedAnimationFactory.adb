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
   function createFactoryDX (image : Image_Access; dx : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access is
      oneRowSpriteIndexedAnimationFactory : OneRowSpriteIndexedAnimationFactory_Access;
   begin
        oneRowSpriteIndexedAnimationFactory := OneRowSpriteIndexedAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, image.getHeight, image.getHeight, 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.initW (dx);
        return oneRowSpriteIndexedAnimationFactory;
   end createFactoryDX;

   --  throws Exception
   function createFactoryDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access is
      oneRowSpriteIndexedAnimationFactory : OneRowSpriteIndexedAnimationFactory_Access;
   begin
        oneRowSpriteIndexedAnimationFactory := OneRowSpriteIndexedAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, image.getHeight, image.getHeight, 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.init (dx, dy);
        return oneRowSpriteIndexedAnimationFactory;
   end createFactoryDXY;

   --  throws Exception
   function createFactoryWH (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access is
   begin
        return OneRowSpriteIndexedAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
   end createFactoryWH;

   --  throws Exception
   function createFactory (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access is
   begin
        return OneRowSpriteIndexedAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, image.getHeight, image.getHeight, 0, 0, animationBehaviorFactory);
   end createFactory;

   procedure Initialize (This : in out OneRowSpriteIndexedAnimationFactory'Class; image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        Initialize_Fields (This);
   end Initialize;

   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access is
      This : constant OneRowSpriteIndexedAnimationFactory_Access := new OneRowSpriteIndexedAnimationFactory;
   begin
      Initialize (This.all, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
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

   procedure createFactoryDX (image : Image_Access; dx : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant OneRowSpriteIndexedAnimationFactory_Access := createFactoryDX (image, dx, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryDX;

   procedure createFactoryDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant OneRowSpriteIndexedAnimationFactory_Access := createFactoryDXY (image, dx, dy, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryDXY;

   procedure createFactoryWH (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant OneRowSpriteIndexedAnimationFactory_Access := createFactoryWH (image, width, height, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryWH;

   procedure createFactory (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant OneRowSpriteIndexedAnimationFactory_Access := createFactory (image, animationBehaviorFactory);
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


