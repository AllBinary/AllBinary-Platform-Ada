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


package body org.allbinary.game.paint.OwnershipPaintable_Package is

   procedure Initialize_Fields (This : in out OwnershipPaintable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (OwnershipPaintable_Access'(This'Unchecked_Access));
      This.COPYRIGHT := To_Unbounded_String ("AllBinary Copyright (c) 2011");
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
      This.color := This.basicColor.intValue;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.COPYRIGHT_Y := 0;
      This.beginWidth := 0;
   end Initialize_Fields;


   function getInstance return OwnershipPaintable_Access is
   begin
        return OwnershipPaintable_Package.Create;
   end getInstance;

   procedure Initialize (This : in out OwnershipPaintable'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OwnershipPaintable_Access is
      This : constant OwnershipPaintable_Access := new OwnershipPaintable;
   begin
      OwnershipPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out OwnershipPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.COPYRIGHT_Y := (2) * (font.getHeight);
        This.beginWidth := (Java_Shift_Right_Arithmetic (font.stringWidth (This.COPYRIGHT), 1));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure setBasicColorP (This : in out OwnershipPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
        This.color := basicColor.intValue;
   end setBasicColorP;

   function getBasicColorP (This : in out OwnershipPaintable) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure paint (This : in out OwnershipPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      halfWidth : Integer;
      height : Integer;
   begin
        This.myFontProcessor.process (graphics);
        graphics.setColor (This.color);
        halfWidth := This.displayInfo.getLastHalfWidth;
        height := This.displayInfo.getLastHeight;
        graphics.drawString (This.COPYRIGHT, (halfWidth) - (This.beginWidth), (height) - (This.COPYRIGHT_Y), This.anchor);
   end paint;

end org.allbinary.game.paint.OwnershipPaintable_Package;


