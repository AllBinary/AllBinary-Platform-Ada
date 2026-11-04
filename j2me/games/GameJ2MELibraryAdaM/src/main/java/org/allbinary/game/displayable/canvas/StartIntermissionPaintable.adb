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
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.font.FontDebugFactory_Package; use org.allbinary.graphics.font.FontDebugFactory_Package;
with org.allbinary.graphics.font.FontDebugFactory_Package_References;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;

package body org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColorSetUtil_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
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
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   function "=" (Left, Right : MyFontProcessor_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   procedure Initialize_Fields (This : in out StartIntermissionPaintable'Class) is
   begin
      null;
      This.fontDebugFactory := FontDebugFactory_Package.getInstance;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      
      
      
      
      
      This.updateMyFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (StartIntermissionPaintable_Access'(This'Unchecked_Access)));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.basicColor := BasicColor_Access (BasicColorFactory_Package.getInstance.BLACK);
      
      This.lineYOffsetArray := NullUtil_Package.getInstance.NULL_INT_ARRAY;
      This.hasChanged := True;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.fontHeightP := 0;
      This.BEGIN_LEVEL := To_Unbounded_String ("Begin Level ");
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out StartIntermissionPaintable'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; stringArray : Unbounded_String_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; font_Param : access Font_Package.Font'Class) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      font : constant Font_Access := Font_Access (font_Param);
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
        This.stringArray := stringArray;
        This.lastWidth := new Integer_Array'(0 .. (This.stringArray'Length) - 1 => 0);
        StartIntermissionPaintable'Class (This).setBasicColorP (basicColor);
        This.color := basicColor.intValue;
        This.fontSize := font.getSize;
        This.font := font;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; stringArray : Unbounded_String_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; font_Param : access Font_Package.Font'Class) return StartIntermissionPaintable_Access is
      This : constant StartIntermissionPaintable_Access := new StartIntermissionPaintable;
   begin
      StartIntermissionPaintable_Package.Initialize (This.all, gameCanvas_Param, stringArray, basicColor_Param, font_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out StartIntermissionPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeightP := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out StartIntermissionPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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

   procedure setBasicColorP (This : in out StartIntermissionPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out StartIntermissionPaintable) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

end org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package;


