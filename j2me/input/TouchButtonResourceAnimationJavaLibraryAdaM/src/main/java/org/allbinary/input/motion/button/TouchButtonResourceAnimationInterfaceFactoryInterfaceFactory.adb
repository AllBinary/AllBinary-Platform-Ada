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
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
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
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.image.ImageCacheBase_Package;
with org.allbinary.image.ImageFactory_Package;
with org.allbinary.media.image.ImageJ2MEScaleUtil_Package;
with org.allbinary.media.image.ImageScaleUtil_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.logic.math.J2SEMath_Package;
with javax.microedition.lcdui.game.Layer_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.media.audio.Sound_Package;
with javax.microedition.lcdui.game.Sprite_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
with org.allbinary.input.motion.button.TouchButtonDownResource_Package;
with org.allbinary.input.motion.button.TouchButtonGenericActionResource_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package;
with org.allbinary.input.motion.button.TouchButtonStartResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonStrafeRightResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;
with org.allbinary.input.motion.button.TouchButtonTurnRightResource_Package;
with org.allbinary.input.motion.button.TouchButtonUpResource_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

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
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
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
        BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory (This).init (level);
   end initImageCache;

   function isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) return Boolean is
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if (level) = (resourceLoadingLevelFactory.LOAD_TOUCH.getLevel) then
            return True;
        else
            return BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory (This).isLoadingLevel (level);
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
      Java_Result : constant Boolean := TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).isLoadingLevel (level => level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLoadingLevel;

end org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package;


