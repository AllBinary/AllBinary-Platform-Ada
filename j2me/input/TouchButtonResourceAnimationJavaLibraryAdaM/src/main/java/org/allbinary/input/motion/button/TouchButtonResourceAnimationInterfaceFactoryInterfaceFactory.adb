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
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package; use org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.media.image.ImageCompleteUtil_Package; use org.allbinary.media.image.ImageCompleteUtil_Package;
with org.allbinary.input.motion.button.TouchButtonBlankResource_Package; use org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;
with org.allbinary.input.motion.button.TouchButtonGenericActionResource_Package; use org.allbinary.input.motion.button.TouchButtonGenericActionResource_Package;
with org.allbinary.input.motion.button.TouchButtonStartResource_Package; use org.allbinary.input.motion.button.TouchButtonStartResource_Package;
with org.allbinary.input.motion.button.TouchButtonUpResource_Package; use org.allbinary.input.motion.button.TouchButtonUpResource_Package;
with org.allbinary.input.motion.button.TouchButtonDownResource_Package; use org.allbinary.input.motion.button.TouchButtonDownResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package; use org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package; use org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package; use org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package; use org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package;

package body org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package OneRowSpriteIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package ImageCompleteUtil_Package renames Standard.org.allbinary.media.image.ImageCompleteUtil_Package;
   procedure Initialize_Fields (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function createFactory return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access is
   begin
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package.Create (To_Unbounded_String ("TouchButton Animations"));
   end createFactory;

   procedure Initialize (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class; name : Unbounded_String) is
   begin
        BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.Initialize (This, name, StdUtil_Package.getInstance.createHashtable, StdUtil_Package.getInstance.createHashtable, StdUtil_Package.getInstance.createHashtable);
   end Initialize;

   function Create (name : Unbounded_String) return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access is
      This : constant TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access := new TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;
   begin
      TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package.Initialize (This.all, name);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) is
   begin
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).initImageCache (ImageCacheFactory_Package.getInstance, level);
   end init;

   --  throws Exception
   procedure initImageCache (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer) is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      portion : Integer;
      loadingString : Unbounded_String;
      index : Integer;
      progressCanvas : ProgressCanvas_Access;
      touchButtonBlankResource : TouchButtonResource_Access;
      touchButtonGenericActionResource : TouchButtonResource_Access;
      touchButtonStartResource : TouchButtonResource_Access;
      touchButtonUpResource : TouchButtonResource_Access;
      touchButtonDownResource : TouchButtonResource_Access;
      touchButtonTurnLeftResource : TouchButtonResource_Access;
      touchButtonTurnRightResource : TouchButtonResource_Access;
      touchButtonStrafeLeftResource : TouchButtonResource_Access;
      touchButtonStrafeRightResource : TouchButtonResource_Access;
      touchButtonBlankResourceImage : Image_Access;
      touchButtonGenericActionResourceImage : Image_Access;
      touchButtonStartResourceImage : Image_Access;
      touchButtonUpResourceImage : Image_Access;
      touchButtonDownResourceImage : Image_Access;
      touchButtonTurnLeftResourceImage : Image_Access;
      touchButtonTurnRightResourceImage : Image_Access;
      touchButtonStrafeLeftResourceImage : Image_Access;
      touchButtonStrafeRightResourceImage : Image_Access;
      nullAnimationFactory : NullAnimationFactory_Access;
      imageCompleteUtil : ImageCompleteUtil_Access;
      touchButtonStartHintResource : Image_Access;
   begin
        if TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).isInitialized then
            return;
        end if;
        portion := 140;
        loadingString := StringMaker_Package.Create.append (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).toString).append (To_Unbounded_String (" Loading: ")).toString;
        index := 0;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        touchButtonBlankResource := TouchButtonBlankResource_Package.getInstance;
        touchButtonGenericActionResource := TouchButtonGenericActionResource_Package.getInstance;
        touchButtonStartResource := TouchButtonStartResource_Package.getInstance;
        touchButtonUpResource := TouchButtonUpResource_Package.getInstance;
        touchButtonDownResource := TouchButtonDownResource_Package.getInstance;
        touchButtonTurnLeftResource := TouchButtonTurnLeftResource_Package.getInstance;
        touchButtonTurnRightResource := TouchButtonTurnRightResource_Package.getInstance;
        touchButtonStrafeLeftResource := TouchButtonStrafeLeftResource_Package.getInstance;
        touchButtonStrafeRightResource := TouchButtonStrafeRightResource_Package.getInstance;
        touchButtonBlankResourceImage := imageCache.getWithKey (touchButtonBlankResource.RESOURCE);
        touchButtonGenericActionResourceImage := imageCache.getWithKey (touchButtonGenericActionResource.RESOURCE);
        touchButtonStartResourceImage := imageCache.getWithKey (touchButtonStartResource.RESOURCE);
        touchButtonUpResourceImage := imageCache.getWithKey (touchButtonUpResource.RESOURCE);
        touchButtonDownResourceImage := imageCache.getWithKey (touchButtonDownResource.RESOURCE);
        touchButtonTurnLeftResourceImage := imageCache.getWithKey (touchButtonTurnLeftResource.RESOURCE);
        touchButtonTurnRightResourceImage := imageCache.getWithKey (touchButtonTurnRightResource.RESOURCE);
        touchButtonStrafeLeftResourceImage := imageCache.getWithKey (touchButtonStrafeLeftResource.RESOURCE);
        touchButtonStrafeRightResourceImage := imageCache.getWithKey (touchButtonStrafeRightResource.RESOURCE);
        nullAnimationFactory := NullAnimationFactory_Package.getFactoryInstance;
        if OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance.isOverScan then
            imageCache.getWithKey (TouchButtonStartResource_Package.getInstance.HINT);
        end if;
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil := ImageCompleteUtil_Package.getInstance;
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonBlankResourceImage, AnimationBehaviorFactory_Package.getInstance));
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonBlankResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonGenericActionResourceImage, AnimationBehaviorFactory_Package.getInstance));
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonGenericActionResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonStartResourceImage, touchButtonStartResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonStartResourceImage, AnimationBehaviorFactory_Package.getInstance));
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonUpResourceImage, touchButtonUpResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonUpResourceImage, AnimationBehaviorFactory_Package.getInstance));
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonUpResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonDownResourceImage, touchButtonDownResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonDownResourceImage, AnimationBehaviorFactory_Package.getInstance));
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonDownResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonTurnLeftResourceImage, AnimationBehaviorFactory_Package.getInstance));
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonTurnLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonTurnRightResourceImage, AnimationBehaviorFactory_Package.getInstance));
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonTurnRightResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory_Package.getInstance));
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonStrafeLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion (portion, loadingString, Java_Post_Increment (index));
        imageCompleteUtil.waitForImage (touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE);
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonStrafeRightResourceImage, AnimationBehaviorFactory_Package.getInstance));
        TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonStrafeRightResource.HINT, nullAnimationFactory);
        if OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance.isOverScan then
            touchButtonStartHintResource := imageCache.getWithKey (TouchButtonStartResource_Package.getInstance.HINT);
            TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory_Package.createFactory (touchButtonStartHintResource, AnimationBehaviorFactory_Package.getInstance));
        else
            TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).add (touchButtonStartResource.HINT, nullAnimationFactory);
        end if;
        BaseResourceAnimationInterfaceFactoryInterfaceFactory (This).init (level);
   end initImageCache;

   function isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) return Boolean is
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if (level) = (resourceLoadingLevelFactory.LOAD_TOUCH.getLevel) then
            return True;
        else
            return BaseResourceAnimationInterfaceFactoryInterfaceFactory (This).isLoadingLevel (level);
        end if;
   end isLoadingLevel;

   function isFeature (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean is
   begin
        if not (Features_Package.getInstance.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL)) then
            return True;
        else
            return False;
        end if;
   end isFeature;

   procedure isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) is
      Java_Result : constant Boolean := TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).isLoadingLevel (level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLoadingLevel;

end org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package;


