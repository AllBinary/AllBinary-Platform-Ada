-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;

package body org.allbinary.game.layer.MultiSelectPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out MultiSelectPaintable'Class) is
   begin
      null;
      This.rootNameList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.totalCharArray := NullUtil_Package.getInstance.NULL_CHAR_ARRAY;
      This.rootNamesString := StringUtil_Package.getInstance.EMPTY_STRING;
      This.TOTAL := To_Unbounded_String ("Total Selected: ");
      This.backgroundColor := BasicColorFactory_Package.getInstance.GREY.intValue;
      This.totalWidth := 0;
      This.textLine2Y := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out MultiSelectPaintable'Class) is
   begin
      SelectionHudPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MultiSelectPaintable_Access is
      This : constant MultiSelectPaintable_Access := new MultiSelectPaintable;
   begin
      MultiSelectPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out MultiSelectPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        SelectionHudPaintable (This).updateMeasurement (graphics);
        font := graphics.getFont;
        This.totalWidth := font.stringWidth (This.TOTAL);
        This.textLine2Y := ((This.y) + (font.getHeight));
   end updateMeasurement;

   procedure update (This : in out MultiSelectPaintable; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      rtsLayer : RTSLayer_Access;
      index : Integer;
      COMMA_SEP : Unbounded_String;
      stringBuffer : StringMaker_Access;
      rootName : Unbounded_String;
   begin
        MultiSelectPaintable'Class (This).clear;
        size := list.size;
        This.totalCharArray := MultiSelectPaintable'Class (This).getPrimitiveLongUtil.getCharArray (size);
        for index in reverse 0 .. (list.size) - (1) loop
            rtsLayer := RTSLayer_Access (list.get (index));
            if not (This.rootNameList.contains (rtsLayer.getRootName)) then
                This.rootNameList.add (rtsLayer.getRootName);
            end if;
        end loop;
        COMMA_SEP := CommonSeps_Package.getInstance.COMMA_SEP;
        stringBuffer := StringMaker_Package.Create;
        for index in reverse 0 .. (This.rootNameList.size) - (1) loop
            rootName := Java_Unbox (This.rootNameList.get (index));
            stringBuffer.append (rootName);
            if (index) /= (0) then
                stringBuffer.append (COMMA_SEP);
            end if;
        end loop;
        This.rootNamesString := stringBuffer.toString;
   end update;

   procedure clear (This : in out MultiSelectPaintable) is
   begin
        This.rootNameList.clear;
   end clear;

   procedure paint (This : in out MultiSelectPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.setColor (This.backgroundColor);
        graphics.drawRect (MultiSelectPaintable'Class (This).getX, This.y, MultiSelectPaintable'Class (This).getWidth, MultiSelectPaintable'Class (This).getHeight);
        graphics.setColor (MultiSelectPaintable'Class (This).getColor);
        graphics.drawString (This.TOTAL, This.textX, This.y, 0);
        graphics.drawChars (This.totalCharArray, 0, MultiSelectPaintable'Class (This).getPrimitiveLongUtil.getCurrentTotalDigits, (This.textX) + (This.totalWidth), This.y, 0);
        graphics.drawString (This.rootNamesString, This.textX, This.textLine2Y, 0);
   end paint;

end org.allbinary.game.layer.MultiSelectPaintable_Package;


