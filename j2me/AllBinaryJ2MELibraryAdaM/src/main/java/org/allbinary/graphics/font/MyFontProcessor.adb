-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package body org.allbinary.graphics.font.MyFontProcessor_Package is

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
   procedure Initialize_Fields (This : in out MyFontProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MyFontProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MyFontProcessor_Access is
      This : constant MyFontProcessor_Access := new MyFontProcessor;
   begin
      MyFontProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function defaultCharWidth (font_Param : access Font_Package.Font'Class) return Integer is
      font : constant Font_Access := Font_Access (font_Param);
   begin
        return font.charWidth ('C');
   end defaultCharWidth;

   function defaultStringWidth (font_Param : access Font_Package.Font'Class; size : Integer) return Integer is
      font : constant Font_Access := Font_Access (font_Param);
   begin
        return (MyFontProcessor_Package.defaultCharWidth (font)) * (size);
   end defaultStringWidth;

   function getInstance return MyFontProcessor_Access is
   begin
        return MyFontProcessor_Access (MyFontProcessor_Package.instance);
   end getInstance;

   procedure process (This : in out MyFontProcessor; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end process;

   procedure defaultCharWidth (font_Param : access Font_Package.Font'Class) is
      Java_Result : constant Integer := defaultCharWidth (font_Param => font_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end defaultCharWidth;

   procedure defaultStringWidth (font_Param : access Font_Package.Font'Class; size : Integer) is
      Java_Result : constant Integer := defaultStringWidth (font_Param => font_Param, size => size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end defaultStringWidth;

begin
   null;
   instance := MyFontProcessor_Package.Create;

end org.allbinary.graphics.font.MyFontProcessor_Package;


