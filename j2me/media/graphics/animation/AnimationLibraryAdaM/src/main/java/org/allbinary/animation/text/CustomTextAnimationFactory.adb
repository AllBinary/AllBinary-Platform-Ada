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


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.animation.text.CustomTextAnimation_Package; use org.allbinary.animation.text.CustomTextAnimation_Package;
with org.allbinary.animation.text.AdjustCustomTextAnimation_Package; use org.allbinary.animation.text.AdjustCustomTextAnimation_Package;

package body org.allbinary.animation.text.CustomTextAnimationFactory_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   procedure Initialize_Fields (This : in out CustomTextAnimationFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.basicColor := BasicColorFactory_Package.getInstance.BLACK;
      
      
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


