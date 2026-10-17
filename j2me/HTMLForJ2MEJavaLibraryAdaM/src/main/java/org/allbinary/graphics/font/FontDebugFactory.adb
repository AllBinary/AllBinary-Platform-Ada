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


package body org.allbinary.graphics.font.FontDebugFactory_Package is

   procedure Initialize_Fields (This : in out FontDebugFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out FontDebugFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FontDebugFactory_Access is
      This : constant FontDebugFactory_Access := new FontDebugFactory;
   begin
      FontDebugFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FontDebugFactory_Access is
   begin
        return FontDebugFactory_Package.instance;
   end getInstance;

   procedure setFont (This : in out FontDebugFactory; font_Param : access Font'Class; graphics_Param : access Graphics'Class) is
      font : Font_Access := Font_Access (font_Param);
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.setFont (font);
   end setFont;

begin
   null;
   instance := FontDebugFactory_Package.Create;

end org.allbinary.graphics.font.FontDebugFactory_Package;


