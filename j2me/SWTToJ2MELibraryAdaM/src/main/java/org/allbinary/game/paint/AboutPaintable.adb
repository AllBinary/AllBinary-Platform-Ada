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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.paint.AboutPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
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
   procedure Initialize_Fields (This : in out AboutPaintable'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.ABOUT := CanvasStrings_Package.getInstance.ABOUT;
      
      
      This.paintableArray := new Paintable_Access_Array'(0 => Paintable_Access (AboutPaintable_Access'(This'Unchecked_Access)));
      This.myFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (AboutPaintable_Access'(This'Unchecked_Access)));
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
      AboutPaintable_Package.Initialize (This.all, info, developers);
      return This;
   end Create;

   procedure updateMeasurement (This : in out AboutPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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

   procedure paint (This : in out AboutPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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
      Java_Result : constant AboutPaintable_Access := getInstance (info => info, developers => developers);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.paint.AboutPaintable_Package;


