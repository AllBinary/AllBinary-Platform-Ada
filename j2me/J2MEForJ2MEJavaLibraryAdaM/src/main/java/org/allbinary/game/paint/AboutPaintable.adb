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


package body org.allbinary.game.paint.AboutPaintable_Package is

   procedure Initialize_Fields (This : in out AboutPaintable'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.ABOUT := CanvasStrings_Package.getInstance.ABOUT;
      
      
      This.paintableArray := new Paintable_Access_Array'(0 => This'Unchecked_Access);
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.charHeight := 0;
      This.aboutBeginWidth := 0;
      
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   function getInstance (info : Unbounded_String_Array_Access; developers : Unbounded_String_Array_Access) return AboutPaintable_Access is
   begin
        return AboutPaintable_Package.Create (info, developers);
   end getInstance;

   procedure Initialize (This : in out AboutPaintable'Class; info : Unbounded_String_Array_Access; developers : Unbounded_String_Array_Access) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.info := info;
        This.infoBeginWidth := new Integer_Array'(0 .. (This.info'Length) - 1 => 0);
        This.developers := developers;
        This.developersBeginWidth := new Integer_Array'(0 .. (This.developers'Length) - 1 => 0);
   end Initialize;

   function Create (info : Unbounded_String_Array_Access; developers : Unbounded_String_Array_Access) return AboutPaintable_Access is
      This : constant AboutPaintable_Access := new AboutPaintable;
   begin
      Initialize (This.all, info, developers);
      return This;
   end Create;

   procedure updateMeasurement (This : in out AboutPaintable; graphics : Graphics_Access) is
      font : Font_Access;
      infoSize : Integer;
      index : Integer;
      size : Integer;
   begin
        font := graphics.getFont;
        This.charHeight := font.getHeight;
        This.aboutBeginWidth := (Java_Shift_Right_Arithmetic (font.stringWidth (This.ABOUT), 1));
        infoSize := This.info'Length;
        for index in 0 .. (infoSize) - 1 loop
            This.infoBeginWidth (index) := (Java_Shift_Right_Arithmetic (font.stringWidth (This.info (index)), 1));
        end loop;
        size := This.developers'Length;
        for index in 0 .. (size) - 1 loop
            This.developersBeginWidth (index) := (Java_Shift_Right_Arithmetic (font.stringWidth (This.developers (index)), 1));
        end loop;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   function getPaintableArrayInstance (This : in out AboutPaintable) return Paintable_Access_Array_Access is
   begin
        return This.paintableArray;
   end getPaintableArrayInstance;

   procedure paint (This : in out AboutPaintable; graphics : Graphics_Access) is
      halfWidth : Integer;
      infoSize : Integer;
      index : Integer;
      size : Integer;
   begin
        This.myFontProcessor.process (graphics);
        halfWidth := This.displayInfoSingleton.getLastHalfWidth;
        graphics.drawString (This.ABOUT, (halfWidth) - (This.aboutBeginWidth), (2) * (This.charHeight), This.anchor);
        infoSize := This.info'Length;
        for index in 0 .. (infoSize) - 1 loop
            graphics.drawString (This.info (index), (halfWidth) - (This.infoBeginWidth (index)), (((4) + (index))) * (This.charHeight), This.anchor);
        end loop;
        size := This.developers'Length;
        for index in 0 .. (size) - 1 loop
            graphics.drawString (This.developers (index), (halfWidth) - (This.developersBeginWidth (index)), ((((5) + (infoSize)) + (index))) * (This.charHeight), This.anchor);
        end loop;
   end paint;

   procedure getInstance (info : Unbounded_String_Array_Access; developers : Unbounded_String_Array_Access) is
      Java_Result : constant AboutPaintable_Access := getInstance (info, developers);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getPaintableArrayInstance (This : in out AboutPaintable) is
      Java_Result : constant Paintable_Access_Array_Access := AboutPaintable'Class (This).getPaintableArrayInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaintableArrayInstance;

end org.allbinary.game.paint.AboutPaintable_Package;


