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


package body org.allbinary.graphics.j2me.workarea.tools.SelectionToolFactory_Package is

   procedure Initialize_Fields (This : in out SelectionToolFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SelectionToolFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SelectionToolFactory_Access is
      This : constant SelectionToolFactory_Access := new SelectionToolFactory;
   begin
      SelectionToolFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out SelectionToolFactory; canvasJPanel : CanvasJPanel_Access) return GraphicItemInterface_Access is
   begin
        return SelectionTool_Package.Create (canvasJPanel);
   end getInstance;

   procedure getInstance (This : in out SelectionToolFactory; canvasJPanel : CanvasJPanel_Access) is
      Java_Result : constant GraphicItemInterface_Access := SelectionToolFactory'Class (This).getInstance (canvasJPanel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.j2me.workarea.tools.SelectionToolFactory_Package;


