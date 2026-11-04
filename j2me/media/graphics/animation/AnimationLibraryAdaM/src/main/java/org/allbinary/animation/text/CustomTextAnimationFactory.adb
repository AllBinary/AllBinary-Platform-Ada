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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.text.CustomTextAnimation_Package; use org.allbinary.animation.text.CustomTextAnimation_Package;
with org.allbinary.animation.text.AdjustCustomTextAnimation_Package; use org.allbinary.animation.text.AdjustCustomTextAnimation_Package;
with org.allbinary.animation.text.AdjustCustomTextAnimation_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.text.CustomTextAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package;
with org.allbinary.animation.SequenceInterface_Package;
with org.allbinary.animation.SequentialAnimationInterface_Package;
with org.allbinary.animation.text.TextAnimation_Package;
with org.allbinary.animation.text.TextChangeListener_Package;
with org.allbinary.animation.text.TextInterface_Package;

package body org.allbinary.animation.text.CustomTextAnimationFactory_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   function "=" (Left, Right : Font_Access) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   function "=" (Left, Right : Font_Access_Array) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   function "=" (Left, Right : Font_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   function "=" (Left, Right : Font_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Font_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Font_Package_References."=";
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   procedure Initialize_Fields (This : in out CustomTextAnimationFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.basicColor := BasicColor_Access (BasicColorFactory_Package.getInstance.BLACK);
      
      
      This.dx := 0;
      This.dy := 0;
      
      
   end Initialize_Fields;


   function createDXY (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CustomTextAnimationFactory_Access is
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      customTextAnimationFactory_Var : CustomTextAnimationFactory_Access;
   begin
        customTextAnimationFactory_Var := CustomTextAnimationFactory_Package.Create (text, fontSize, animationBehaviorFactory);
        customTextAnimationFactory_Var.dx := dx;
        customTextAnimationFactory_Var.dy := dy;
        return customTextAnimationFactory_Var;
   end createDXY;

   procedure Initialize (This : in out CustomTextAnimationFactory'Class; text : Unbounded_String; fontSize : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        This.scaleProperties := ScaleProperties_Package.Create;
        This.text := text;
        This.scaleProperties.scaleHeight := (fontSize) - (((fontSize) / (4)));
        This.initScaleHeight := This.scaleProperties.scaleHeight;
        This.animationBehaviorFactory := animationBehaviorFactory;
        This.font := Font_Package.getFont (Font_Package.FACE_SYSTEM, Font_Package.STYLE_PLAIN, This.initScaleHeight);
   end Initialize;

   function Create (text : Unbounded_String; fontSize : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CustomTextAnimationFactory_Access is
      This : constant CustomTextAnimationFactory_Access := new CustomTextAnimationFactory;
   begin
      CustomTextAnimationFactory_Package.Initialize (This.all, text, fontSize, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out CustomTextAnimationFactory; instanceId : Integer) return Animation_Access is
      customTextAnimation : CustomTextAnimation_Access;
   begin
        customTextAnimation := null;
        if ((This.dx) /= (0)) or else ((This.dy) /= (0)) then
            customTextAnimation := CustomTextAnimation_Access (AdjustCustomTextAnimation_Package.Create (This.text, This.scaleProperties.scaleHeight, This.dx, This.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            customTextAnimation := CustomTextAnimation_Package.Create (This.text, This.scaleProperties.scaleHeight, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
        customTextAnimation.setBasicColorP (This.basicColor);
        return Animation_Access (customTextAnimation);
   end getInstance;

   procedure setInitialScale (This : in out CustomTextAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   function getWidth (This : in out CustomTextAnimationFactory) return Integer is
   begin
        return This.font.stringWidth (This.text);
   end getWidth;

   function getHeight (This : in out CustomTextAnimationFactory) return Integer is
   begin
        return This.font.getHeight;
   end getHeight;

   procedure createDXY (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant CustomTextAnimationFactory_Access := createDXY (text => text, fontSize => fontSize, dx => dx, dy => dy, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createDXY;

   procedure getInstance (This : in out CustomTextAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := CustomTextAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.text.CustomTextAnimationFactory_Package;


