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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.graphics.font.FontDebugFactory_Package; use org.allbinary.graphics.font.FontDebugFactory_Package;
with org.allbinary.graphics.font.FontDebugFactory_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.animation.text.TextChangeListener_Package; use org.allbinary.animation.text.TextChangeListener_Package;
with org.allbinary.animation.text.TextChangeListener_Package_References;
with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package;
with org.allbinary.graphics.paint.LocationPaintableInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.animation.SequenceInterface_Package;
with org.allbinary.animation.SequentialAnimationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.animation.text.TextChangeListener_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package body org.allbinary.animation.text.CustomTextAnimation_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype FontDebugFactory_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access;
   function "=" (Left, Right : FontDebugFactory_Access) return Boolean renames org.allbinary.graphics.font.FontDebugFactory_Package_References."=";
   subtype FontDebugFactory_Access_Array is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array;
   function "=" (Left, Right : FontDebugFactory_Access_Array) return Boolean renames org.allbinary.graphics.font.FontDebugFactory_Package_References."=";
   subtype FontDebugFactory_Access_Array_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access;
   function "=" (Left, Right : FontDebugFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.FontDebugFactory_Package_References."=";
   subtype FontDebugFactory_Access_Array_Access_Array is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FontDebugFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.FontDebugFactory_Package_References."=";
   subtype FontDebugFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FontDebugFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.FontDebugFactory_Package_References."=";
   subtype TextChangeListener_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access;
   function "=" (Left, Right : TextChangeListener_Access) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   subtype TextChangeListener_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array;
   function "=" (Left, Right : TextChangeListener_Access_Array) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   subtype TextChangeListener_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access;
   function "=" (Left, Right : TextChangeListener_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   subtype TextChangeListener_Access_Array_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array;
   function "=" (Left, Right : TextChangeListener_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   subtype TextChangeListener_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextChangeListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextChangeListener_Package_References."=";
   procedure Initialize_Fields (This : in out CustomTextAnimation'Class) is
   begin
      null;
      This.fontDebugFactory := FontDebugFactory_Package.getInstance;
      
      
      This.lastText := StringUtil_Package.getInstance.INIT_STRING;
      This.hasChanged := True;
      This.textWidth := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomTextAnimation'Class; text : Unbounded_String; fontSize : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        TextAnimation_Package.Initialize (This, text, animationBehavior);
        Initialize_Fields (This);
        This.fontSize := fontSize;
        This.font := Font_Package.getFont (Font_Package.FACE_SYSTEM, Font_Package.STYLE_PLAIN, fontSize);
   end Initialize;

   function Create (text : Unbounded_String; fontSize : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return CustomTextAnimation_Access is
      This : constant CustomTextAnimation_Access := new CustomTextAnimation;
   begin
      CustomTextAnimation_Package.Initialize (This.all, text, fontSize, animationBehavior_Param);
      return This;
   end Create;

   procedure paintXY (This : in out CustomTextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      existingFont : Font_Access;
   begin
        This.myFontProcessor.process (graphics);
        existingFont := graphics.getFont;
        This.fontDebugFactory.setFont (This.font, graphics);
        TextAnimation_Package.TextAnimation (This).paintXYNoUpdate (graphics, x, y);
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

   procedure setTextWithOnMeasure (This : in out CustomTextAnimation; text : Unbounded_String; textChangeListener_Param : access TextChangeListener_Package.TextChangeListener'Class) is
      textChangeListener : constant TextChangeListener_Access := TextChangeListener_Access (textChangeListener_Param);
   begin
        TextAnimation_Package.TextAnimation (This).setTextWithOnMeasure (text, textChangeListener);
   end setTextWithOnMeasure;

   procedure setText (This : in out CustomTextAnimation; text : Unbounded_String) is
   begin
        if (This.lastText) /= (text) then
            This.hasChanged := True;
            This.lastText := text;
            TextAnimation_Package.TextAnimation (This).setText (text);
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


