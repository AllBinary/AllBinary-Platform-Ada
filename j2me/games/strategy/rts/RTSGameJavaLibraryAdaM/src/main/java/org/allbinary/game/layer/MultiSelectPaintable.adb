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


package body org.allbinary.game.layer.MultiSelectPaintable_Package is

   procedure Initialize_Fields (This : in out MultiSelectPaintable'Class) is
   begin
      null;
      This.rootNameList := BasicArrayListD_Package.Create;
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

   procedure updateMeasurement (This : in out MultiSelectPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        SelectionHudPaintable (This).updateMeasurement (graphics);
        font := graphics.getFont;
        This.totalWidth := font.stringWidth (This.TOTAL);
        This.textLine2Y := ((This.y) + (font.getHeight));
   end updateMeasurement;

   procedure update (This : in out MultiSelectPaintable; list_Param : access BasicArrayList'Class) is
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      rtsLayer : RTSLayer_Access;
      index : Integer;
      COMMA_SEP : Unbounded_String;
      stringBuffer : StringMaker_Access;
      rootName : Unbounded_String;
   begin
        This.clear;
        size := list.size;
        This.totalCharArray := This.getPrimitiveLongUtil.getCharArray (size);
        for index in reverse 0 .. (list.size) - (1) loop
            rtsLayer := RTSLayer_Access (list.get (index));
            if not (This.rootNameList.contains (rtsLayer.getRootName)) then
                This.rootNameList.add (rtsLayer.getRootName);
            end if;
        end loop;
        COMMA_SEP := CommonSeps_Package.getInstance.COMMA_SEP;
        stringBuffer := StringMaker_Package.Create;
        for index in reverse 0 .. (This.rootNameList.size) - (1) loop
            rootName := Unbounded_String (This.rootNameList.get (index));
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

   procedure paint (This : in out MultiSelectPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.setColor (This.backgroundColor);
        graphics.drawRect (This.getX, This.y, This.getWidth, This.getHeight);
        graphics.setColor (This.getColor);
        graphics.drawString (This.TOTAL, This.textX, This.y, 0);
        graphics.drawChars (This.totalCharArray, 0, This.getPrimitiveLongUtil.getCurrentTotalDigits, (This.textX) + (This.totalWidth), This.y, 0);
        graphics.drawString (This.rootNamesString, This.textX, This.textLine2Y, 0);
   end paint;

end org.allbinary.game.layer.MultiSelectPaintable_Package;


