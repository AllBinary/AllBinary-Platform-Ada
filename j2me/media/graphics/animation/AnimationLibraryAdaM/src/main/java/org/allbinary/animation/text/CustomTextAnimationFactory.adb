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


package body org.allbinary.animation.text.CustomTextAnimationFactory_Package is

   procedure Initialize_Fields (This : in out CustomTextAnimationFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.basicColor := BasicColorFactory_Package.getInstance.BLACK;
      
      
      This.dx := 0;
      This.dy := 0;
      
      
   end Initialize_Fields;


   function createDXY (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return CustomTextAnimationFactory_Access is
      customTextAnimationFactory : CustomTextAnimationFactory_Access;
   begin
        customTextAnimationFactory := CustomTextAnimationFactory_Package.Create (text, fontSize, animationBehaviorFactory);
        customTextAnimationFactory.dx := dx;
        customTextAnimationFactory.dy := dy;
        return customTextAnimationFactory;
   end createDXY;

   procedure Initialize (This : in out CustomTextAnimationFactory'Class; text : Unbounded_String; fontSize : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
      Initialize_Fields (This);
        This.scaleProperties := ScaleProperties_Package.Create;
        This.text := text;
        This.scaleProperties.scaleHeight := (fontSize) - (((fontSize) / (4)));
        This.initScaleHeight := This.scaleProperties.scaleHeight;
        This.animationBehaviorFactory := animationBehaviorFactory;
        This.font := Font_Package.getFont (Font_Package.FACE_SYSTEM, Font_Package.STYLE_PLAIN, This.initScaleHeight);
   end Initialize;

   function Create (text : Unbounded_String; fontSize : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return CustomTextAnimationFactory_Access is
      This : constant CustomTextAnimationFactory_Access := new CustomTextAnimationFactory;
   begin
      Initialize (This.all, text, fontSize, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out CustomTextAnimationFactory; instanceId : Integer) return Animation_Access is
      customTextAnimation : CustomTextAnimation_Access;
   begin
        customTextAnimation := null;
        if ((This.dx) /= (0)) or else ((This.dy) /= (0)) then
            customTextAnimation := AdjustCustomTextAnimation_Package.Create (This.text, This.scaleProperties.scaleHeight, This.dx, This.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            customTextAnimation := CustomTextAnimation_Package.Create (This.text, This.scaleProperties.scaleHeight, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
        customTextAnimation.setBasicColorP (This.basicColor);
        return customTextAnimation;
   end getInstance;

   procedure setInitialScale (This : in out CustomTextAnimationFactory; scaleProperties : ScaleProperties_Access) is
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

   procedure createDXY (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant CustomTextAnimationFactory_Access := createDXY (text, fontSize, dx, dy, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createDXY;

   procedure getInstance (This : in out CustomTextAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := CustomTextAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getWidth (This : in out CustomTextAnimationFactory) is
      Java_Result : constant Integer := CustomTextAnimationFactory'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out CustomTextAnimationFactory) is
      Java_Result : constant Integer := CustomTextAnimationFactory'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

end org.allbinary.animation.text.CustomTextAnimationFactory_Package;


