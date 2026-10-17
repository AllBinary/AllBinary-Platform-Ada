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


package body org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package is

   procedure Initialize_Fields (This : in out GraphicItemFactory'Class) is
   begin
      null;
      
      This.DEFAULT := SelectionToolFactory_Package.Create;
   end Initialize_Fields;


   function getInstance return GraphicItemFactory_Access is
   begin
        return GraphicItemFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GraphicItemFactory'Class) is
   begin
      Initialize_Fields (This);
        This.graphicItems := StdUtil_Package.getInstance.createHashMap;
        This.graphicItems.put (LinesGraphicItem_Package.getStaticName, LinesGraphicItemFactory_Package.Create);
   end Initialize;

   function Create return GraphicItemFactory_Access is
      This : constant GraphicItemFactory_Access := new GraphicItemFactory;
   begin
      GraphicItemFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out GraphicItemFactory; itemName : Unbounded_String) return GraphicsItemInterfaceFactoryInterface_Access is
      graphicsItemInterfaceFactoryInterface : GraphicsItemInterfaceFactoryInterface_Access;
   begin
        graphicsItemInterfaceFactoryInterface := GraphicsItemInterfaceFactoryInterface_Access (This.graphicItems.get (itemName));
        if (graphicsItemInterfaceFactoryInterface) = (null) then
            graphicsItemInterfaceFactoryInterface := This.DEFAULT;
        end if;
        return graphicsItemInterfaceFactoryInterface;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out GraphicItemFactory; graphicItemNodeList : BasicArrayList_Access) return HashMap_Access is
      numberOfItems : Integer;
      graphicItemHashMap : HashMap_Access;
      graphicItem : GraphicItemInterface_Access;
      index : Integer;
   begin
        numberOfItems := graphicItemNodeList.size;
        graphicItemHashMap := StdUtil_Package.getInstance.createHashMap;
        if LOGGING.contains (LOGGING.MENUEVENT) then
            null;
        end if;
        for index in 0 .. (numberOfItems) - 1 loop
            graphicItem := GraphicItemBuilder_Package.getInstance (Node_Access (graphicItemNodeList.get (index)));
            graphicItemHashMap.put (graphicItem.getTreeNode, graphicItem);
        end loop;
        return graphicItemHashMap;
   end getInstance;

   procedure getInstance (This : in out GraphicItemFactory; itemName : Unbounded_String) is
      Java_Result : constant GraphicsItemInterfaceFactoryInterface_Access := GraphicItemFactory'Class (This).getInstance (itemName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out GraphicItemFactory; graphicItemNodeList : BasicArrayList_Access) is
      Java_Result : constant HashMap_Access := GraphicItemFactory'Class (This).getInstance (graphicItemNodeList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := GraphicItemFactory_Package.Create;

end org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;


