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
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.threed.SWTJOGLProcessor_Package; use org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.animation.text.TextAnimation_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package SWTJOGLProcessor_Package renames Standard.org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out TextAnimation'Class) is
   begin
      null;
      This.updateMyFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (TextAnimation_Access'(This'Unchecked_Access)));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.textArrayP := StringUtil_Package.getInstance.ONE_EMPTY_STRING_ARRAY;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.fontHeight := 0;
      This.offsetY := 0;
      This.textChangeListener := TextChangeListener_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TextAnimation'Class; text : Unbounded_String; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        TextAnimation'Class (This).setText (text);
   end Initialize;

   function Create (text : Unbounded_String; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return TextAnimation_Access is
      This : constant TextAnimation_Access := new TextAnimation;
   begin
      TextAnimation_Package.Initialize (This.all, text, animationBehavior_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out TextAnimation; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      adjustedFontHeight : Integer;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        adjustedFontHeight := Integer (-(((Long_Float (This.fontHeight)) * (2.00))));
        This.offsetY := (if SWTJOGLProcessor_Package.getInstance.isJOGL then adjustedFontHeight else 0);
        This.textChangeListener.onMeasure;
        This.textChangeListener := TextChangeListener_Package.getInstance;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   --  throws Exception
   procedure nextFrame (This : in out TextAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out TextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        TextAnimation'Class (This).paintXYNoUpdate (graphics, x, y);
   end paintXY;

   procedure paintXYNoUpdate (This : in out TextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      size : Integer;
      index : Integer;
   begin
        This.basicSetColorUtil.setBasicColorP3 (graphics, TextAnimation'Class (This).getBasicColorP, TextAnimation'Class (This).getColor);
        size := This.textArrayP'Length;
        for index in 0 .. (size) - 1 loop
            graphics.drawString (This.textArrayP (index), x, ((y) + (This.offsetY)) + (((index) * (This.fontHeight))), This.anchor);
        end loop;
   end paintXYNoUpdate;

   procedure setTextWithOnMeasure (This : in out TextAnimation; text : Unbounded_String; textChangeListener_Param : access TextChangeListener_Package.TextChangeListener'Class) is
      textChangeListener : constant TextChangeListener_Access := TextChangeListener_Access (textChangeListener_Param);
   begin
        TextAnimation'Class (This).setText (text);
        This.textChangeListener := textChangeListener;
   end setTextWithOnMeasure;

   procedure setText (This : in out TextAnimation; text : Unbounded_String) is
      list : BasicArrayList_Access;
      index : Integer;
      startIndex : Integer;
      endIndex : Integer;
      textArray : Unbounded_String_Array_Access;
      size : Integer;
   begin
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        if ((text) /= (Null_Unbounded_String)) and then ((Length (text)) > (0)) then
            index := 0;
            startIndex := 0;
            endIndex := 0;
            while (index) >= (0) loop
                startIndex := index;
                index := Java_Index_Of (text, Java_Image (ASCII.LF), startIndex);
                endIndex := index;
                if (index) < (0) then
                    endIndex := Length (text);
                end if;
                list.add (Unbounded_Slice (text, (startIndex) + 1, endIndex));
                if (index) < (0) then
                    exit;
                end if;
                index := index + 1;
            end loop;
        end if;
        if (list.size) > (0) then
            textArray := new Unbounded_String_Array'(0 .. (list.size) - 1 => Null_Unbounded_String);
            size := list.size;
            for index in 0 .. (size) - 1 loop
                textArray (index) := Java_Unbox (list.get (index));
            end loop;
            This.textArrayP := textArray;
        else
            This.textArrayP := StringUtil_Package.getInstance.ONE_EMPTY_STRING_ARRAY;
        end if;
        This.myFontProcessor := This.updateMyFontProcessor;
   end setText;

   function getTextArray (This : in out TextAnimation) return Unbounded_String_Array_Access is
   begin
        return This.textArrayP;
   end getTextArray;

   function getFontHeight (This : in out TextAnimation) return Integer is
   begin
        return This.fontHeight;
   end getFontHeight;

end org.allbinary.animation.text.TextAnimation_Package;


