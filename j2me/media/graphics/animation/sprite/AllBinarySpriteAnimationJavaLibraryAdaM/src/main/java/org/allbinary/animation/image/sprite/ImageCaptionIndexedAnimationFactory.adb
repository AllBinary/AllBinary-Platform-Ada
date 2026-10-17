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


package body org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory_Package is

   procedure Initialize_Fields (This : in out ImageCaptionIndexedAnimationFactory'Class) is
   begin
      null;
      This.animationFactoryImageScaleUtil := AnimationFactoryImageScaleUtil_Package.getInstance;
      This.animationFactorySpriteScaleUtil := AnimationFactorySpriteScaleUtil_Package.getInstance;
      
      
      
      
      
      
      
      
      
      
      This.scaleProperties := ScaleProperties_Package.instance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageCaptionIndexedAnimationFactory'Class; captionImage_Param : access Image_Package.Image'Class; spriteMovieImage_Param : access Image_Package.Image'Class; soundInterface_Param : access Sound_Package.Sound'Class; frameWidth : Integer; frameHeight : Integer; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      captionImage : constant Image_Access := Image_Access (captionImage_Param);
      spriteMovieImage : constant Image_Access := Image_Access (spriteMovieImage_Param);
      soundInterface : constant Sound_Access := Sound_Access (soundInterface_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        if (animationBehaviorFactory) = (AnimationBehaviorFactory_Package.getInstance) then
            ForcedLogUtil_Package.log (To_Unbounded_String ("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), ImageCaptionIndexedAnimationFactory_Access'(This'Unchecked_Access));
        end if;
        This.captionImage := captionImage;
        This.spriteMovieImage := spriteMovieImage;
        This.frameWidth := frameWidth;
        This.frameHeight := frameHeight;
        This.captionDx := captionDx;
        This.captionDy := captionDy;
        This.dx := dx;
        This.dy := dy;
        This.time := time;
        This.soundInterface := soundInterface;
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (captionImage_Param : access Image_Package.Image'Class; spriteMovieImage_Param : access Image_Package.Image'Class; soundInterface_Param : access Sound_Package.Sound'Class; frameWidth : Integer; frameHeight : Integer; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return ImageCaptionIndexedAnimationFactory_Access is
      This : constant ImageCaptionIndexedAnimationFactory_Access := new ImageCaptionIndexedAnimationFactory;
   begin
      ImageCaptionIndexedAnimationFactory_Package.Initialize (This.all, captionImage_Param, spriteMovieImage_Param, soundInterface_Param, frameWidth, frameHeight, captionDx, captionDy, dx, dy, time, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ImageCaptionIndexedAnimationFactory; instanceId : Integer) return Animation_Access is
      scaledImage : Image_Access;
      animationInterface : Animation_Access;
      sprite : Sprite_Access;
      movieIndexedAnimationInterface : IndexedAnimation_Access;
      player : Player_Access;
   begin
        scaledImage := This.animationFactoryImageScaleUtil.createImage (This.captionImage, This.captionImage.getWidth, This.captionImage.getHeight, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        animationInterface := ImageAnimation_Package.Create (scaledImage, This.animationBehaviorFactory.getOrCreateInstance);
        sprite := This.animationFactorySpriteScaleUtil.createImage (This.spriteMovieImage, This.frameWidth, This.frameHeight, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        movieIndexedAnimationInterface := SpriteIndexedAnimation_Package.Create (sprite, This.spriteMovieImage, BasicColorUtil_Package.getInstance.ZERO_ARRAY, This.animationBehaviorFactory.getOrCreateInstance);
        player := This.soundInterface.getPlayerP;
        if (player) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Sound Was not Initialized")));
        end if;
        return CaptionIndexedAnimation_Package.Create (animationInterface, movieIndexedAnimationInterface, player, This.captionDx, This.captionDy, This.dx, This.dy, This.time, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstance;

   procedure setInitialScale (This : in out ImageCaptionIndexedAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        This.scaleProperties := scaleProperties;
   end setInitialScale;

   procedure getInstance (This : in out ImageCaptionIndexedAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := ImageCaptionIndexedAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory_Package;


