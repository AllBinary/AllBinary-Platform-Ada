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


package body org.allbinary.graphics.draw.KeyValueDrawCharArray_Package is

   procedure Initialize_Fields (This : in out KeyValueDrawCharArray'Class) is
   begin
      null;
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      
      
      This.valueX := 0;
      This.value := CharArrayFactory_Package.getInstance.getZeroCharArray;
      This.len := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyValueDrawCharArray'Class; label_Case : Unbounded_String; x : Integer) is
   begin
      Initialize_Fields (This);
        This.LABEL := label_Case;
        This.labelX := x;
   end Initialize;

   function Create (label_Case : Unbounded_String; x : Integer) return KeyValueDrawCharArray_Access is
      This : constant KeyValueDrawCharArray_Access := new KeyValueDrawCharArray;
   begin
      KeyValueDrawCharArray_Package.Initialize (This.all, label_Case, x);
      return This;
   end Create;

   procedure updateMeasurement (This : in out KeyValueDrawCharArray; graphics : Graphics_Access) is
      labelWidth : Integer;
   begin
        labelWidth := (graphics.getFont.stringWidth (This.LABEL)) - (Length (This.LABEL));
        This.valueX := (labelWidth) + (This.labelX);
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out KeyValueDrawCharArray; graphics : Graphics_Access; y : Integer) is
   begin
        This.myFontProcessor.process (graphics);
        graphics.drawString (This.LABEL, This.labelX, y, 0);
        graphics.drawChars (This.value, 0, This.len, This.valueX, y, 0);
   end paint;

   procedure update (This : in out KeyValueDrawCharArray; value : Character_Array_Access; len : Integer) is
   begin
        This.value := value;
        This.len := len;
   end update;

end org.allbinary.graphics.draw.KeyValueDrawCharArray_Package;


