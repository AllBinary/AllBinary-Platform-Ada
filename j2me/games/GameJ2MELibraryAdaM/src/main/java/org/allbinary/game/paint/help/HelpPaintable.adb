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


package body org.allbinary.game.paint.help.HelpPaintable_Package is

   procedure Initialize_Fields (This : in out HelpPaintable'Class) is
   begin
      null;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.myFontProcessor := This.updateMyFontProcessor;
      This.anchor := Anchor_Package.TOP_LEFT;
      
      This.inputInfo := StringUtil_Package.getInstance.getArrayInstance;
      
      This.titleBeginWidth := 0;
      This.beginWidthArray := NullUtil_Package.getInstance.NULL_INT_ARRAY;
      This.charHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out HelpPaintable'Class; title : Unbounded_String; backgroundBasicColor : BasicColor_Access; basicColor : BasicColor_Access) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.title := title;
        This.basicColor := basicColor;
   end Initialize;

   function Create (title : Unbounded_String; backgroundBasicColor : BasicColor_Access; basicColor : BasicColor_Access) return HelpPaintable_Access is
      This : constant HelpPaintable_Access := new HelpPaintable;
   begin
      HelpPaintable_Package.Initialize (This.all, title, backgroundBasicColor, basicColor);
      return This;
   end Create;

   procedure updateMeasurement (This : in out HelpPaintable; graphics : Graphics_Access) is
      font : Font_Access;
      size : Integer;
      index : Integer;
   begin
        font := graphics.getFont;
        This.titleBeginWidth := (Java_Shift_Right_Arithmetic (font.stringWidth (This.title), 1));
        This.charHeight := font.getHeight;
        size := This.inputInfo'Length;
        for index in 0 .. (size) - 1 loop
            This.beginWidthArray (index) := (Java_Shift_Right_Arithmetic (font.stringWidth (This.inputInfo (index)), 1));
        end loop;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure setInputInfoP (This : in out HelpPaintable; inputInfo : Unbounded_String_Array_Access) is
   begin
        This.inputInfo := inputInfo;
        This.beginWidthArray := new Integer_Array'(0 .. (This.inputInfo'Length) - 1 => 0);
        This.myFontProcessor := This.updateMyFontProcessor;
   end setInputInfoP;

   procedure paint (This : in out HelpPaintable; graphics : Graphics_Access) is
      halfWidth : Integer;
      size : Integer;
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        halfWidth := This.displayInfo.getLastHalfWidth;
        graphics.setColor (This.basicColor.intValue);
        graphics.drawString (This.title, (halfWidth) - (This.titleBeginWidth), This.charHeight, This.anchor);
        size := This.inputInfo'Length;
        for index in 0 .. (size) - 1 loop
            graphics.drawString (This.inputInfo (index), (halfWidth) - (This.beginWidthArray (index)), (((index) + (3))) * (This.charHeight), This.anchor);
        end loop;
   end paint;

end org.allbinary.game.paint.help.HelpPaintable_Package;


