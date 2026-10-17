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


package body org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package is

   procedure Initialize_Fields (This : in out LinesGraphicItemFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LinesGraphicItemFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LinesGraphicItemFactory_Access is
      This : constant LinesGraphicItemFactory_Access := new LinesGraphicItemFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out LinesGraphicItemFactory; canvasJPanel : CanvasJPanel_Access) return GraphicItemInterface_Access is
   begin
        return LinesGraphicItem_Package.Create;
   end getInstance;

   procedure getInstance (This : in out LinesGraphicItemFactory; canvasJPanel : CanvasJPanel_Access) is
      Java_Result : constant GraphicItemInterface_Access := LinesGraphicItemFactory'Class (This).getInstance (canvasJPanel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package;


