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


package body org.allbinary.game.paint.PressStartMenuPaintable_Package is

   procedure Initialize_Fields (This : in out PressStartMenuPaintable'Class) is
   begin
      null;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      This.PRESS_START := To_Unbounded_String ("Press Screen To Start");
      This.KEY_START := To_Unbounded_String ("Press or Click F2 To Begin");
      This.MENU_START := To_Unbounded_String ("Press Start From The Menu To Begin");
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (PressStartMenuPaintable_Access'(This'Unchecked_Access));
      This.startString := StringUtil_Package.getInstance.EMPTY_STRING;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (1100);
      This.flash := False;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.beginWidth := 0;
      This.line := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out PressStartMenuPaintable'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        if TouchScreenFactory_Package.getInstance.isTouch then
            This.startString := This.PRESS_START;
        elsif AppletUtil_Package.isAppletLoader (PressStartMenuPaintable_Access'(This'Unchecked_Access)) then
            This.startString := This.KEY_START;
        else
            This.startString := This.MENU_START;
        end if;
   end Initialize;

   function Create return PressStartMenuPaintable_Access is
      This : constant PressStartMenuPaintable_Access := new PressStartMenuPaintable;
   begin
      PressStartMenuPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out PressStartMenuPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.beginWidth := (Java_Shift_Right_Arithmetic (graphics.getFont.stringWidth (This.startString), 1));
        This.line := (((4) * (MyFontProcessor_Package.defaultCharWidth (font)))) + ((Java_Shift_Right_Arithmetic (font.getHeight, 1)));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out PressStartMenuPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        if This.timeDelayHelper.isTimeTNT then
            if This.isFlash then
                This.setFlash (False);
            else
                This.setFlash (True);
            end if;
        end if;
        if This.isFlash then
            This.myFontProcessor.process (graphics);
            graphics.drawString (This.startString, (This.displayInfo.getLastHalfWidth) - (This.beginWidth), (This.displayInfo.getLastHeight) - (This.line), This.anchor);
        end if;
   end paint;

   procedure setFlash (This : in out PressStartMenuPaintable; flash : Boolean) is
   begin
        This.flash := flash;
   end setFlash;

   function isFlash (This : in out PressStartMenuPaintable) return Boolean is
   begin
        return This.flash;
   end isFlash;

end org.allbinary.game.paint.PressStartMenuPaintable_Package;


