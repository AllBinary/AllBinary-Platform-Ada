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


package body org.allbinary.game.paint.FullScreenPaintable_Package is

   procedure Initialize_Fields (This : in out FullScreenPaintable'Class) is
   begin
      null;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.FULLSCREEN_TEXT := To_Unbounded_String ("F11 - Toggle Fullscreen");
      This.anchor := Anchor_Package.TOP_LEFT;
      This.Y := 0;
      This.beginWidth := 0;
   end Initialize_Fields;


   function getInstance return FullScreenPaintable_Access is
   begin
        return FullScreenPaintable_Package.Create;
   end getInstance;

   procedure Initialize (This : in out FullScreenPaintable'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FullScreenPaintable_Access is
      This : constant FullScreenPaintable_Access := new FullScreenPaintable;
   begin
      FullScreenPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out FullScreenPaintable; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.Y := (4) * (font.getHeight);
        This.beginWidth := (Java_Shift_Right_Arithmetic (font.stringWidth (This.FULLSCREEN_TEXT), 1));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out FullScreenPaintable; graphics : Graphics_Access) is
      halfWidth : Integer;
      height : Integer;
   begin
        This.myFontProcessor.process (graphics);
        halfWidth := This.displayInfo.getLastHalfWidth;
        height := This.displayInfo.getLastHeight;
        graphics.drawString (This.FULLSCREEN_TEXT, (halfWidth) - (This.beginWidth), (height) - (This.Y), This.anchor);
   end paint;

end org.allbinary.game.paint.FullScreenPaintable_Package;


