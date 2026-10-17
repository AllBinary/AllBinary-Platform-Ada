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


package body org.allbinary.graphics.draw.DrawVerticalStringUtil_Package is

   procedure Initialize_Fields (This : in out DrawVerticalStringUtil'Class) is
   begin
      null;
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.charHeight := 0;
      This.offsetY := 0;
      This.offsetXArray := NullUtil_Package.getInstance.NULL_INT_ARRAY;
   end Initialize_Fields;

   procedure Initialize (This : in out DrawVerticalStringUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DrawVerticalStringUtil_Access is
      This : constant DrawVerticalStringUtil_Access := new DrawVerticalStringUtil;
   begin
      DrawVerticalStringUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DrawVerticalStringUtil_Access is
   begin
        return DrawVerticalStringUtil_Package.instance;
   end getInstance;

   procedure updateMeasurement (This : in out DrawVerticalStringUtil; graphics_Param : access Graphics'Class; string_Id : Unbounded_String) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      openGLFeatureUtil : OpenGLFeatureUtil_Access;
      font : Font_Access;
      size : Integer;
      aChar : Character;
      offsetXArray : Integer_Array_Access;
      index : Integer;
   begin
        openGLFeatureUtil := OpenGLFeatureUtil_Package.getInstance;
        font := graphics.getFont;
        This.charHeight := font.getHeight;
        This.offsetY := 0;
        if J2MEUtil_Package.isHTML then
            This.charHeight := (This.charHeight) + (1);
        elsif openGLFeatureUtil.isAnyThreed then
            This.charHeight := (This.charHeight) + (2);
            if AndroidUtil_Package.isAndroid then
                null;
            else
                This.offsetY := (2) + ((((This.charHeight) * (2)) / (3)));
            end if;
        end if;
        size := Length (string_Id);
        aChar := ASCII.NUL;
        offsetXArray := new Integer_Array'(0 .. (size) - 1 => 0);
        for index in reverse 0 .. (size) - (1) loop
            aChar := Element (string_Id, (index) + 1);
            if openGLFeatureUtil.isAnyThreed then
                offsetXArray (index) := (font.charWidth (aChar)) / (2);
            end if;
        end loop;
        This.offsetXArray := offsetXArray;
   end updateMeasurement;

   procedure paintVerticle (This : in out DrawVerticalStringUtil; graphics_Param : access Graphics'Class; string_Id : Unbounded_String; x : Integer; y : Integer; anchor : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      size : Integer;
      aChar : Character;
      index : Integer;
   begin
        size := Length (string_Id);
        aChar := ASCII.NUL;
        for index in reverse 0 .. (size) - (1) loop
            aChar := Element (string_Id, (index) + 1);
            graphics.drawChar (aChar, (x) + (This.offsetXArray (index)), ((y) + (((This.charHeight) * (index)))) + (This.offsetY), anchor);
        end loop;
   end paintVerticle;

   procedure drawCenterString (This : in out DrawVerticalStringUtil; graphics_Param : access Graphics'Class; string_Id : Unbounded_String; offset : Integer; length : Integer; x : Integer; y : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      width : Integer;
   begin
        width := (Java_Shift_Right_Arithmetic (graphics.getFont.substringWidth (string_Id, offset, length), 1));
        begin
            graphics.drawSubstring (string_Id, offset, length, (x) - (width), y, This.anchor);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Exception: stringLength: ")).appendint (Length (string_Id)).append (To_Unbounded_String (" offset: ")).appendint (offset).append (To_Unbounded_String (" currentLength: ")).appendint (length).toString, DrawVerticalStringUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("drawCenterString"));
                end;
        end;
   end drawCenterString;

   procedure drawCenterStrings (This : in out DrawVerticalStringUtil; graphics_Param : access Graphics'Class; stringArray : Unbounded_String_Array_Access; maxWidth : Integer; x : Integer; y : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      extraLines : Integer;
      string_Id : Unbounded_String;
      width : Integer;
      minTotalLines : Integer;
      linePortion : Integer;
      offset : Integer;
      currentLength : Integer;
      size : Integer;
      index : Integer;
   begin
        extraLines := 0;
        for index in 0 .. (stringArray'Length) - 1 loop
            string_Id := stringArray (index);
            if (string_Id) /= (This.EMPTY_STRING) then
                width := graphics.getFont.stringWidth (string_Id);
                minTotalLines := 1;
                if (width) > (maxWidth) then
                    minTotalLines := (((width) / (maxWidth))) + (1);
                end if;
                linePortion := (Length (string_Id)) / (minTotalLines);
                offset := 0;
                currentLength := linePortion;
                size := Length (string_Id);
                while (offset) < (size) loop
                    if ((offset) + (currentLength)) > (size) then
                        currentLength := (size) - (offset);
                    end if;
                    if ((offset) + (currentLength)) /= (size) then
                        while ((currentLength) > (0)) and then ((stringArray (index).charAt ((offset) + (currentLength))) /= (' ')) loop
                            currentLength := currentLength - 1;
                        end loop;
                        if (currentLength) <= (4) then
                            currentLength := linePortion;
                        end if;
                    end if;
                    This.drawCenterString (graphics, string_Id, offset, currentLength, x, (y) + (((((index) + (Java_Post_Increment (extraLines)))) * (This.charHeight))));
                    offset := (offset) + (currentLength);
                    currentLength := linePortion;
                end loop;
                extraLines := extraLines - 1;
            end if;
        end loop;
   end drawCenterStrings;

begin
   null;
   instance := DrawVerticalStringUtil_Package.Create;

end org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;


