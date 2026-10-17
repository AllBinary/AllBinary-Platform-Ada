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


package body org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package is

   procedure Initialize_Fields (This : in out StartIntermissionPaintable'Class) is
   begin
      null;
      This.fontDebugFactory := FontDebugFactory_Package.getInstance;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      
      
      
      
      
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (StartIntermissionPaintable_Access'(This'Unchecked_Access));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.basicColor := BasicColorFactory_Package.getInstance.BLACK;
      
      This.lineYOffsetArray := NullUtil_Package.getInstance.NULL_INT_ARRAY;
      This.hasChanged := True;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.fontHeightP := 0;
      This.BEGIN_LEVEL := To_Unbounded_String ("Begin Level ");
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out StartIntermissionPaintable'Class; gameCanvas_Param : access AllBinaryGameCanvas'Class; stringArray : Unbounded_String_Array_Access; basicColor_Param : access BasicColor'Class; font_Param : access Font'Class) is
      gameCanvas : AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
      font : Font_Access := Font_Access (font_Param);
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
        This.stringArray := stringArray;
        This.lastWidth := new Integer_Array'(0 .. (This.stringArray'Length) - 1 => 0);
        This.setBasicColorP (basicColor);
        This.color := basicColor.intValue;
        This.fontSize := font.getSize;
        This.font := font;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas'Class; stringArray : Unbounded_String_Array_Access; basicColor_Param : access BasicColor'Class; font_Param : access Font'Class) return StartIntermissionPaintable_Access is
      This : constant StartIntermissionPaintable_Access := new StartIntermissionPaintable;
   begin
      StartIntermissionPaintable_Package.Initialize (This.all, gameCanvas_Param, stringArray, basicColor_Param, font_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out StartIntermissionPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeightP := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out StartIntermissionPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      existingFont : Font_Access;
      displayInfo : DisplayInfoSingleton_Access;
      beginWidth : Integer;
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        existingFont := graphics.getFont;
        This.fontDebugFactory.setFont (This.font, graphics);
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.basicSetColorUtil.setBasicColorP3 (graphics, This.basicColor, This.color);
        beginWidth := 0;
        for index in reverse 0 .. (This.lineYOffsetArray'Length) - (1) loop
            if This.hasChanged then
                This.lastWidth (index) := (Java_Shift_Right_Arithmetic (graphics.getFont.stringWidth (This.stringArray (index)), 1));
            end if;
            beginWidth := This.lastWidth (index);
            graphics.drawString (This.stringArray (index), (displayInfo.getLastHalfWidth) - (beginWidth), (displayInfo.getLastHalfHeight) - (This.lineYOffsetArray (index)), This.anchor);
        end loop;
        This.hasChanged := False;
        This.fontDebugFactory.setFont (existingFont, graphics);
   end paint;

   procedure update (This : in out StartIntermissionPaintable) is
      level : Integer;
      index : Integer;
   begin
        level := This.gameCanvas.getLayerManager.getGameInfo.getCurrentLevel;
        This.stringArray (0) := StringMaker_Package.Create.append (This.BEGIN_LEVEL).appendint (level).toString;
        for index in reverse 1 .. (This.stringArray'Length) - (1) loop
            This.stringArray (index) := This.EMPTY_STRING;
        end loop;
   end update;

   procedure setBasicColorP (This : in out StartIntermissionPaintable; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out StartIntermissionPaintable) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

end org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package;


