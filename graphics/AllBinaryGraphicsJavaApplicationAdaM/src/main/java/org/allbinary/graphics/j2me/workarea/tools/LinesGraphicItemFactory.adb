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


with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package; use org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;

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
      LinesGraphicItemFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out LinesGraphicItemFactory; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) return GraphicItemInterface_Access is
      canvasJPanel : constant CanvasJPanel_Access := CanvasJPanel_Access (canvasJPanel_Param);
   begin
        return GraphicItemInterface_Access (LinesGraphicItem_Package.Create);
   end getInstance;

   procedure getInstance (This : in out LinesGraphicItemFactory; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) is
      Java_Result : constant GraphicItemInterface_Access := LinesGraphicItemFactory'Class (This).getInstance (canvasJPanel_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package;


