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


with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.graphics.draw.KeyValueDrawString_Package is

   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out KeyValueDrawString'Class) is
   begin
      null;
      This.myFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (KeyValueDrawString_Access'(This'Unchecked_Access)));
      
      
      This.valueX := 0;
      This.value := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyValueDrawString'Class; label : Unbounded_String; x : Integer) is
   begin
      Initialize_Fields (This);
        This.LABEL := label;
        This.labelX := x;
   end Initialize;

   function Create (label : Unbounded_String; x : Integer) return KeyValueDrawString_Access is
      This : constant KeyValueDrawString_Access := new KeyValueDrawString;
   begin
      KeyValueDrawString_Package.Initialize (This.all, label, x);
      return This;
   end Create;

   procedure updateMeasurement (This : in out KeyValueDrawString; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      labelWidth : Integer;
   begin
        labelWidth := (graphics.getFont.stringWidth (This.LABEL)) - (Length (This.LABEL));
        This.valueX := (labelWidth) + (This.labelX);
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out KeyValueDrawString; graphics_Param : access Graphics_Package.Graphics'Class; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        graphics.drawString (This.LABEL, This.labelX, y, 0);
        graphics.drawString (This.value, This.valueX, y, 0);
   end paint;

   procedure update (This : in out KeyValueDrawString; value : Unbounded_String) is
   begin
        if (value) /= (Null_Unbounded_String) then
            This.value := value;
        end if;
   end update;

end org.allbinary.graphics.draw.KeyValueDrawString_Package;


