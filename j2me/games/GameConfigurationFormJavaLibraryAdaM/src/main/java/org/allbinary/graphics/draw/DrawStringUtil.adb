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
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.graphics.draw.DrawStringUtil_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out DrawStringUtil'Class) is
   begin
      null;
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;

   procedure Initialize (This : in out DrawStringUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DrawStringUtil_Access is
      This : constant DrawStringUtil_Access := new DrawStringUtil;
   begin
      DrawStringUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DrawStringUtil_Access is
   begin
        return DrawStringUtil_Package.instance;
   end getInstance;

   procedure drawCenterString (This : in out DrawStringUtil; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; offset : Integer; length : Integer; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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
            PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Exception: stringLength: ")).appendint (Length (string_Id)).append (To_Unbounded_String (" offset: ")).appendint (offset).append (To_Unbounded_String (" currentLength: ")).appendint (length).toString, DrawStringUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("drawCenterString"));
                end;
        end;
   end drawCenterString;

   procedure drawCenterStrings (This : in out DrawStringUtil; graphics_Param : access Graphics_Package.Graphics'Class; stringArray : Unbounded_String_Array_Access; maxWidth : Integer; charHeight : Integer; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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
                    DrawStringUtil'Class (This).drawCenterString (graphics, string_Id, offset, currentLength, x, (y) + (((((index) + (Java_Post_Increment (extraLines)))) * (charHeight))));
                    offset := (offset) + (currentLength);
                    currentLength := linePortion;
                end loop;
                extraLines := extraLines - 1;
            end if;
        end loop;
   end drawCenterStrings;

begin
   null;
   instance := DrawStringUtil_Package.Create;

end org.allbinary.graphics.draw.DrawStringUtil_Package;


