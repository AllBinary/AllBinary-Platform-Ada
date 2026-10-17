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


package body org.allbinary.graphics.font.MyFontProcessor_Package is

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


   function defaultCharWidth (font : Font_Access) return Integer is
   begin
        return font.charWidth ('C');
   end defaultCharWidth;

   function defaultStringWidth (font : Font_Access; size : Integer) return Integer is
   begin
        return (MyFontProcessor_Package.defaultCharWidth (font)) * (size);
   end defaultStringWidth;

   function getInstance return MyFontProcessor_Access is
   begin
        return MyFontProcessor_Package.instance;
   end getInstance;

   procedure process (This : in out MyFontProcessor; graphics : Graphics_Access) is
   begin
        null;
   end process;

   procedure defaultCharWidth (font : Font_Access) is
      Java_Result : constant Integer := defaultCharWidth (font);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end defaultCharWidth;

   procedure defaultStringWidth (font : Font_Access; size : Integer) is
      Java_Result : constant Integer := defaultStringWidth (font, size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end defaultStringWidth;

begin
   null;
   instance := MyFontProcessor_Package.Create;

end org.allbinary.graphics.font.MyFontProcessor_Package;


