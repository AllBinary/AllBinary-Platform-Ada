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


package body org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package is

   procedure Initialize_Fields (This : in out CustomTextBoxIndexedAnimation'Class) is
   begin
      null;
      
      This.lastText := StringUtil_Package.getInstance.INIT_STRING;
      This.hasChanged := True;
      This.textChangeListener := TextChangeListener_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomTextBoxIndexedAnimation'Class; customTextBox_Param : access CustomTextBox_Package.CustomTextBox'Class) is
      customTextBox : constant CustomTextBox_Access := CustomTextBox_Access (customTextBox_Param);
   begin
        IndexedAnimation_Package.Initialize (This, AnimationBehavior_Package.getInstance);
        Initialize_Fields (This);
        This.customTextBox := customTextBox;
   end Initialize;

   function Create (customTextBox_Param : access CustomTextBox_Package.CustomTextBox'Class) return CustomTextBoxIndexedAnimation_Access is
      This : constant CustomTextBoxIndexedAnimation_Access := new CustomTextBoxIndexedAnimation;
   begin
      CustomTextBoxIndexedAnimation_Package.Initialize (This.all, customTextBox_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out CustomTextBoxIndexedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.customTextBox.getTextFieldItem.setForegroundBasicColorP (basicColor);
   end setBasicColorP;

   procedure setBackgroundBasicColorP (This : in out CustomTextBoxIndexedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.customTextBox.getTextFieldItem.setBackgroundBasicColorP (basicColor);
   end setBackgroundBasicColorP;

   procedure setTextWithOnMeasure (This : in out CustomTextBoxIndexedAnimation; text : Unbounded_String; textChangeListener_Param : access TextChangeListener_Package.TextChangeListener'Class) is
      textChangeListener : constant TextChangeListener_Access := TextChangeListener_Access (textChangeListener_Param);
   begin
        CustomTextBoxIndexedAnimation'Class (This).setText (text);
        This.textChangeListener := textChangeListener;
   end setTextWithOnMeasure;

   procedure updateMeasurement (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.textChangeListener.onMeasure;
        This.textChangeListener := TextChangeListener_Package.getInstance;
   end updateMeasurement;

   procedure setText (This : in out CustomTextBoxIndexedAnimation; text : Unbounded_String) is
   begin
        if (This.lastText) /= (text) then
            This.hasChanged := True;
            This.lastText := text;
            This.customTextBox.getTextFieldItem.setString (text);
        end if;
   end setText;

   function getText (This : in out CustomTextBoxIndexedAnimation) return Unbounded_String is
   begin
        return This.customTextBox.getTextFieldItem.getString;
   end getText;

   procedure onEventRaw (This : in out CustomTextBoxIndexedAnimation; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
   begin
        This.customTextBox.onEventRaw (keyCode, deviceId, repeated);
   end onEventRaw;

   function getFontHeight (This : in out CustomTextBoxIndexedAnimation) return Integer is
   begin
        return This.customTextBox.getTextFieldItem.getFontHeight;
   end getFontHeight;

   procedure paintXY (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.customTextBox.paintXY (graphics, x, y);
   end paintXY;

   procedure paintThreedXYZ (This : in out CustomTextBoxIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreedXYZ;

end org.allbinary.animation.text.CustomTextBoxIndexedAnimation_Package;


