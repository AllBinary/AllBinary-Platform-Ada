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
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package; use org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package; use org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;
with org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package; use org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCacheBase_Package;
with org.allbinary.image.ImageFactory_Package;
with org.allbinary.media.image.ImageJ2MEScaleUtil_Package;
with org.allbinary.media.image.ImageScaleUtil_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.animation.IndexedAnimation_Package;
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
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.media.ScaleProperties_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package is

   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package BasicColorUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorUtil_Package;
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
   procedure Initialize_Fields (This : in out SpriteIndexedAnimationFactory'Class) is
   begin
      null;
      This.animationFactorySpriteScaleUtil := AnimationFactorySpriteScaleUtil_Package.getInstance;
      This.basicColorArray := BasicColorUtil_Package.getInstance.ZERO_ARRAY;
   end Initialize_Fields;


   --  throws Exception
   function createCWHDXY (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SpriteIndexedAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        return SpriteIndexedAnimationFactory_Package.Create (image, basicColorArray, PrimitiveIntUtil_Package.getArrayInstance, width, height, dx, dy, animationBehaviorFactory);
   end createCWHDXY;

   --  throws Exception
   function createCWH (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SpriteIndexedAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      spriteIndexedAnimationFactory_Var : SpriteIndexedAnimationFactory_Access;
   begin
        spriteIndexedAnimationFactory_Var := SpriteIndexedAnimationFactory_Package.Create (image, basicColorArray, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        spriteIndexedAnimationFactory_Var.initHWH;
        return spriteIndexedAnimationFactory_Var;
   end createCWH;

   --  throws Exception
   function createWH (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SpriteIndexedAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        return SpriteIndexedAnimationFactory_Package.Create (image, BasicColorUtil_Package.getInstance.ZERO_ARRAY, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
   end createWH;

   procedure Initialize (This : in out SpriteIndexedAnimationFactory'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        Initialize_Fields (This);
        This.basicColorArray := basicColorArray;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SpriteIndexedAnimationFactory_Access is
      This : constant SpriteIndexedAnimationFactory_Access := new SpriteIndexedAnimationFactory;
   begin
      SpriteIndexedAnimationFactory_Package.Initialize (This.all, image_Param, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory_Param);
      return This;
   end Create;

   procedure initHWH (This : in out SpriteIndexedAnimationFactory) is
   begin
        This.animationFactoryInitializationVisitor.dx := -((Java_Shift_Right_Arithmetic (This.animationFactoryInitializationVisitor.width, 2)));
        This.animationFactoryInitializationVisitor.dy := -((Java_Shift_Right_Arithmetic (This.animationFactoryInitializationVisitor.height, 2)));
        if AndroidUtil_Package.isAndroid then
            This.animationFactoryInitializationVisitor.dx := (This.animationFactoryInitializationVisitor.dx) + (3);
        end if;
   end initHWH;

   --  throws Exception
   function getInstance (This : in out SpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access is
      sprite : Sprite_Access;
   begin
        sprite := This.animationFactorySpriteScaleUtil.createImage (SpriteIndexedAnimationFactory'Class (This).getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            return Animation_Access (AdjustedSpriteIndexedAnimation_Package.Create (sprite, SpriteIndexedAnimationFactory'Class (This).getImage, This.basicColorArray, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return Animation_Access (SpriteIndexedAnimation_Package.Create (sprite, SpriteIndexedAnimationFactory'Class (This).getImage, This.basicColorArray, This.animationBehaviorFactory.getOrCreateInstance));
        end if;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out SpriteIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return SpriteIndexedAnimationFactory'Class (This).getInstance (0);
   end getInstanceAnimation;

   procedure createCWHDXY (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant SpriteIndexedAnimationFactory_Access := createCWHDXY (image_Param => image_Param, basicColorArray => basicColorArray, width => width, height => height, dx => dx, dy => dy, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createCWHDXY;

   procedure createCWH (image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant SpriteIndexedAnimationFactory_Access := createCWH (image_Param => image_Param, basicColorArray => basicColorArray, width => width, height => height, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createCWH;

   procedure createWH (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant SpriteIndexedAnimationFactory_Access := createWH (image_Param => image_Param, width => width, height => height, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createWH;

   procedure getInstance (This : in out SpriteIndexedAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := SpriteIndexedAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out SpriteIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant Animation_Access := SpriteIndexedAnimationFactory'Class (This).getInstanceAnimation (animationInterface_Param => animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package;


