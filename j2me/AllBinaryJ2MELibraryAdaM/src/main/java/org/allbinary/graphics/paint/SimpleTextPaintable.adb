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


package body org.allbinary.graphics.paint.SimpleTextPaintable_Package is

   procedure Initialize_Fields (This : in out SimpleTextPaintable'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (SimpleTextPaintable_Access'(This'Unchecked_Access));
      This.myFontProcessor := This.updateMyFontProcessor;
      
      
      This.topScoresWidth := 0;
      This.fontHeight := 0;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out SimpleTextPaintable'Class; text : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.text := text;
        This.basicColor := basicColor;
   end Initialize;

   function Create (text : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class) return SimpleTextPaintable_Access is
      This : constant SimpleTextPaintable_Access := new SimpleTextPaintable;
   begin
      SimpleTextPaintable_Package.Initialize (This.all, text, basicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out SimpleTextPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.topScoresWidth := (Java_Shift_Right_Arithmetic (font.stringWidth (This.text), 1));
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out SimpleTextPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      width : Integer;
   begin
        This.myFontProcessor.process (graphics);
        width := This.displayInfoSingleton.getLast (This.displayInfoSingleton.WIDTH);
        graphics.setColor (SimpleTextPaintable'Class (This).getBasicColorP.intValue);
        graphics.drawString (This.text, ((Java_Shift_Right_Arithmetic (width, 1))) - (This.topScoresWidth), This.fontHeight, This.anchor);
   end paint;

   procedure setBasicColorP (This : in out SimpleTextPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out SimpleTextPaintable) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure setText (This : in out SimpleTextPaintable; text : Unbounded_String) is
   begin
        This.text := text;
        This.myFontProcessor := This.updateMyFontProcessor;
   end setText;

   function getText (This : in out SimpleTextPaintable) return Unbounded_String is
   begin
        return This.text;
   end getText;

end org.allbinary.graphics.paint.SimpleTextPaintable_Package;


