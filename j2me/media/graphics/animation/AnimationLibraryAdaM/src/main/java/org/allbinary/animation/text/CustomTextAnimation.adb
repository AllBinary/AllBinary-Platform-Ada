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


package body org.allbinary.animation.text.CustomTextAnimation_Package is

   procedure Initialize_Fields (This : in out CustomTextAnimation'Class) is
   begin
      null;
      This.fontDebugFactory := FontDebugFactory_Package.getInstance;
      
      
      This.lastText := StringUtil_Package.getInstance.INIT_STRING;
      This.hasChanged := True;
      This.textWidth := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomTextAnimation'Class; text : Unbounded_String; fontSize : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        TextAnimation_Package.Initialize (This, text, animationBehavior);
        Initialize_Fields (This);
        This.fontSize := fontSize;
        This.font := Font_Package.getFont (Font_Package.FACE_SYSTEM, Font_Package.STYLE_PLAIN, fontSize);
   end Initialize;

   function Create (text : Unbounded_String; fontSize : Integer; animationBehavior : AnimationBehavior_Access) return CustomTextAnimation_Access is
      This : constant CustomTextAnimation_Access := new CustomTextAnimation;
   begin
      CustomTextAnimation_Package.Initialize (This.all, text, fontSize, animationBehavior);
      return This;
   end Create;

   procedure paintXY (This : in out CustomTextAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
      existingFont : Font_Access;
   begin
        This.myFontProcessor.process (graphics);
        existingFont := graphics.getFont;
        This.fontDebugFactory.setFont (This.font, graphics);
        TextAnimation (This).paintXYNoUpdate (graphics, x, y);
        This.fontDebugFactory.setFont (existingFont, graphics);
   end paintXY;

   procedure setScale (This : in out CustomTextAnimation; scaleX : Float; scaleY : Float) is
   begin
        if (scaleX) /= (scaleY) then
            Java_Throw (Java_New_Exception ("RuntimeException"));
        end if;
        This.hasChanged := True;
        This.font := Font_Package.getFont (Font_Package.FACE_SYSTEM, Font_Package.STYLE_PLAIN, Integer (((Float (This.fontSize)) * (scaleX))));
   end setScale;

   procedure setText (This : in out CustomTextAnimation; text : Unbounded_String) is
   begin
        if (This.lastText) /= (text) then
            This.hasChanged := True;
            This.lastText := text;
            TextAnimation (This).setText (text);
        end if;
   end setText;

   function getText (This : in out CustomTextAnimation) return Unbounded_String is
   begin
        return This.lastText;
   end getText;

   function getWidth (This : in out CustomTextAnimation) return Integer is
   begin
        if This.hasChanged then
            This.textWidth := This.font.stringWidth (This.textArrayP (0));
            This.hasChanged := False;
        end if;
        return This.textWidth;
   end getWidth;

   function getFontHeight (This : in out CustomTextAnimation) return Integer is
   begin
        return This.font.getHeight;
   end getFontHeight;

end org.allbinary.animation.text.CustomTextAnimation_Package;


