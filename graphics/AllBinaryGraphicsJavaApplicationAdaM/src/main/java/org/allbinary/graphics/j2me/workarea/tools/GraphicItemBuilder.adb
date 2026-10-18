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


with org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package; use org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package;
with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package; use org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;

package body org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package is

   procedure Initialize_Fields (This : in out GraphicItemBuilder'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GraphicItemBuilder'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GraphicItemBuilder_Access is
      This : constant GraphicItemBuilder_Access := new GraphicItemBuilder;
   begin
      GraphicItemBuilder_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (node_Param : access Node_Package.Node'Class) return GraphicItemInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
      graphicItemName : Unbounded_String;
   begin
        graphicItemName := node.getNodeName;
        if (Java_Compare_To (graphicItemName, PointsDomUtil_Package.getInstance.LINES)) = (0) then
            return GraphicItemInterface_Access (LinesGraphicItem_Package.Create (node));
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Graphic Item Does Not Exist: ") & graphicItemName));
        end if;
   end getInstance;

   procedure getInstance (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant GraphicItemInterface_Access := getInstance (node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.j2me.workarea.tools.GraphicItemBuilder_Package;


