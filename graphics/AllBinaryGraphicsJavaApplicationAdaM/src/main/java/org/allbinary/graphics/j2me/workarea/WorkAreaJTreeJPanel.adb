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


with org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package is

   package CanvasTreeLabel_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;
   package MyCanvasEvent_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
   package MyCanvasEventService_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
   package MyCanvasEventSource_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;
   package MyGraphicItemEvent_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
   package MyGraphicItemEventService_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;
   package MyGraphicItemEventSource_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out WorkAreaJTreeJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.workAreaJTree := null;
      
      This.copyJMenuItem := null;
      This.deleteJMenuItem := null;
      This.itemJPopupMenu := null;
      This.itemJScrollPane1 := null;
      This.rotateJMenuItem := null;
      This.workAreaPropertiesJPanel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkAreaJTreeJPanel'Class; workAreaName : Unbounded_String) is
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        WorkAreaJTreeJPanel'Class (This).initComponents;
        This.rootTreeNode := DefaultMutableTreeNode_Package.Create (workAreaName);
        This.workAreaPropertiesJPanel.removeAll;
        WorkAreaJTreeJPanel'Class (This).updateTree;
        This.highlightedBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (workAreaName : Unbounded_String) return WorkAreaJTreeJPanel_Access is
      This : constant WorkAreaJTreeJPanel_Access := new WorkAreaJTreeJPanel;
   begin
      WorkAreaJTreeJPanel_Package.Initialize (This.all, workAreaName);
      return This;
   end Create;

   procedure add (This : in out WorkAreaJTreeJPanel; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class) is
      treeNode : constant MutableTreeNode_Access := MutableTreeNode_Access (treeNode_Param);
   begin
        This.rootTreeNode.add (treeNode);
   end add;

   procedure updateTree (This : in out WorkAreaJTreeJPanel) is
   begin
        This.workAreaJTree := JTree_Package.Create (This.rootTreeNode);
        This.workAreaJTree.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  WorkAreaJTreeJPanel'Class (This).workAreaJTreeMousePressed (evt);
--     end mousePressed;
);
        This.workAreaPropertiesJPanel.removeAll;
        This.workAreaPropertiesJPanel.add (This.workAreaJTree);
   end updateTree;

   function getNode (This : in out WorkAreaJTreeJPanel; treePathArray : TreePath_Access_Array_Access) return BasicArrayList_Access is
      basicArrayList : BasicArrayList_Access;
      index : Integer;
   begin
        basicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        if (treePathArray) /= (null) then
            for index in 0 .. (treePathArray'Length) - 1 loop
                basicArrayList.add (WorkAreaJTreeJPanel'Class (This).getNode (treePathArray (index)));
            end loop;
        end if;
        return basicArrayList;
   end getNode;

   function getNode (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class) return DefaultMutableTreeNode_Access is
      treePath : constant TreePath_Access := TreePath_Access (treePath_Param);
      obj : Java_Object_Access_Array_Access;
      node : DefaultMutableTreeNode_Access;
   begin
        if (treePath) /= (null) then
            obj := treePath.getPath;
            if (obj) /= (null) then
                node := DefaultMutableTreeNode_Access (obj ((obj'Length) - (1)));
                return node;
            end if;
        end if;
        return null;
   end getNode;

   --  throws Exception
   procedure deselectAll (This : in out WorkAreaJTreeJPanel) is
      size : Integer;
      node : DefaultMutableTreeNode_Access;
      index : Integer;
   begin
        size := This.highlightedBasicArrayList.size;
        This.logUtil.putF (To_Unbounded_String ("size: ") & Java_Image (size), WorkAreaJTreeJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("deselectAll"));
        for index in 0 .. (size) - 1 loop
            node := DefaultMutableTreeNode_Access (This.highlightedBasicArrayList.get (index));
            MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.DESELECT, node))));
        end loop;
        This.highlightedBasicArrayList.clear;
   end deselectAll;

   --  throws Exception
   procedure selectGraphicItem (This : in out WorkAreaJTreeJPanel; node_Param : access DefaultMutableTreeNode_Package.DefaultMutableTreeNode'Class) is
      node : constant DefaultMutableTreeNode_Access := DefaultMutableTreeNode_Access (node_Param);
   begin
        This.highlightedBasicArrayList.add (Java_Object_Access (node));
        MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.SELECT_Id, node))));
   end selectGraphicItem;

   --  throws Exception
   procedure removeGraphicItem (This : in out WorkAreaJTreeJPanel; node_Param : access DefaultMutableTreeNode_Package.DefaultMutableTreeNode'Class) is
      node : constant DefaultMutableTreeNode_Access := DefaultMutableTreeNode_Access (node_Param);
   begin
        MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.DELETE, node))));
   end removeGraphicItem;

   --  throws Exception
   procedure removeCanvas (This : in out WorkAreaJTreeJPanel; node_Param : access DefaultMutableTreeNode_Package.DefaultMutableTreeNode'Class) is
      node : constant DefaultMutableTreeNode_Access := DefaultMutableTreeNode_Access (node_Param);
   begin
        MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.DELETE, node))));
   end removeCanvas;

   --  throws Exception
   procedure remove (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class) is
      treePath : constant TreePath_Access := TreePath_Access (treePath_Param);
      node : DefaultMutableTreeNode_Access;
      parent : DefaultMutableTreeNode_Access;
   begin
        node := WorkAreaJTreeJPanel'Class (This).getNode (treePath);
        if (node) /= (null) then
            if (node.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                WorkAreaJTreeJPanel'Class (This).removeCanvas (node);
            else
                WorkAreaJTreeJPanel'Class (This).removeGraphicItem (node);
            end if;
        end if;
        parent := DefaultMutableTreeNode_Access (node.getParent);
        parent.remove (node);
   end remove;

   --  throws Exception
   procedure copy (This : in out WorkAreaJTreeJPanel) is
      treePath : TreePath_Access;
   begin
        treePath := This.workAreaJTree.getSelectionPath;
        WorkAreaJTreeJPanel'Class (This).copy (treePath);
        WorkAreaJTreeJPanel'Class (This).updateTree;
        WorkAreaJTreeJPanel'Class (This).expand;
        WorkAreaJTreeJPanel'Class (This).repaint;
   end copy;

   --  throws Exception
   procedure copy (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class) is
      treePath : constant TreePath_Access := TreePath_Access (treePath_Param);
      node : DefaultMutableTreeNode_Access;
   begin
        node := WorkAreaJTreeJPanel'Class (This).getNode (treePath);
        if (node) /= (null) then
            if (node.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.DUPLICATE, node))));
            else
                MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.DUPLICATE, node))));
            end if;
        end if;
   end copy;

   --  throws Exception
   procedure rotate (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class; angle : Long_Float) is
      treePath : constant TreePath_Access := TreePath_Access (treePath_Param);
      node : DefaultMutableTreeNode_Access;
   begin
        node := WorkAreaJTreeJPanel'Class (This).getNode (treePath);
        if (node) /= (null) then
            if (node.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.ROTATE, angle, node))));
            else
                MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.ROTATE, angle, node))));
            end if;
        end if;
   end rotate;

   function getRootTreeNode (This : in out WorkAreaJTreeJPanel) return MutableTreeNode_Access is
   begin
        return MutableTreeNode_Access (This.rootTreeNode);
   end getRootTreeNode;

   procedure expand (This : in out WorkAreaJTreeJPanel) is
   begin
        This.workAreaJTree.expandRow (0);
        This.workAreaJTree.expandRow (1);
   end expand;

   procedure expand (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class) is
      treePath : constant TreePath_Access := TreePath_Access (treePath_Param);
   begin
        This.workAreaJTree.expandPath (treePath);
   end expand;

   procedure initComponents (This : in out WorkAreaJTreeJPanel) is
   begin
        This.itemJPopupMenu := JPopupMenu_Package.Create;
        This.deleteJMenuItem := JMenuItem_Package.Create;
        This.copyJMenuItem := JMenuItem_Package.Create;
        This.rotateJMenuItem := JMenuItem_Package.Create;
        This.itemJScrollPane1 := JScrollPane_Package.Create;
        This.workAreaPropertiesJPanel := JPanel_Package.Create;
        This.itemJPopupMenu.addPopupMenuListener (PopupMenuListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure popupMenuCanceled (This : in out ; evt_Param : access PopupMenuEvent_Package.PopupMenuEvent'Class) is
--        evt : constant PopupMenuEvent_Access := PopupMenuEvent_Access (evt_Param);
--     begin
--                  null;
--     end popupMenuCanceled;
--              
--     procedure popupMenuWillBecomeInvisible (This : in out ; evt_Param : access PopupMenuEvent_Package.PopupMenuEvent'Class) is
--        evt : constant PopupMenuEvent_Access := PopupMenuEvent_Access (evt_Param);
--     begin
--                  WorkAreaJTreeJPanel'Class (This).itemJPopupMenuPopupMenuWillBecomeInvisible (evt);
--     end popupMenuWillBecomeInvisible;
--              
--     procedure popupMenuWillBecomeVisible (This : in out ; evt_Param : access PopupMenuEvent_Package.PopupMenuEvent'Class) is
--        evt : constant PopupMenuEvent_Access := PopupMenuEvent_Access (evt_Param);
--     begin
--                  WorkAreaJTreeJPanel'Class (This).itemJPopupMenuPopupMenuWillBecomeVisible (evt);
--     end popupMenuWillBecomeVisible;
);
        This.deleteJMenuItem.setText (To_Unbounded_String ("Delete"));
        This.deleteJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  WorkAreaJTreeJPanel'Class (This).deleteJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.itemJPopupMenu.add (This.deleteJMenuItem);
        This.copyJMenuItem.setText (To_Unbounded_String ("Copy"));
        This.copyJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  WorkAreaJTreeJPanel'Class (This).copyJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.itemJPopupMenu.add (This.copyJMenuItem);
        This.rotateJMenuItem.setText (To_Unbounded_String ("Rotate 45*"));
        This.rotateJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  WorkAreaJTreeJPanel'Class (This).rotateJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.itemJPopupMenu.add (This.rotateJMenuItem);
        WorkAreaJTreeJPanel'Class (This).setLayout (GridLayout_Package.Create (1, 1));
        This.workAreaPropertiesJPanel.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
--        evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  WorkAreaJTreeJPanel'Class (This).workAreaPropertiesJPanelMousePressed (evt);
--     end mousePressed;
);
        This.workAreaPropertiesJPanel.setLayout (GridLayout_Package.Create (1, 0));
        This.itemJScrollPane1.setViewportView (This.workAreaPropertiesJPanel);
        WorkAreaJTreeJPanel'Class (This).add (This.itemJScrollPane1);
   end initComponents;

   procedure rotateJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
      treePath : TreePath_Access;
   begin
        begin
            treePath := This.workAreaJTree.getSelectionPath;
            WorkAreaJTreeJPanel'Class (This).rotate (treePath, 45);
            WorkAreaJTreeJPanel'Class (This).updateTree;
            WorkAreaJTreeJPanel'Class (This).expand;
            WorkAreaJTreeJPanel'Class (This).repaint;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkAreaJTreeJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("rotateJMenuItemMousePressed"), e);
                end;
        end;
   end rotateJMenuItemMousePressed;

   procedure workAreaJTreeMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
      selectedTreePathArray : TreePath_Access_Array_Access;
      list : BasicArrayList_Access;
      defaultMutableTreeNode : DefaultMutableTreeNode_Access;
      index : Integer;
   begin
        begin
            selectedTreePathArray := This.workAreaJTree.getSelectionPaths;
            list := WorkAreaJTreeJPanel'Class (This).getNode (selectedTreePathArray);
            if (list.size) > (0) then
                if ((Java_And (evt.getModifiers, evt.BUTTON3_MASK))) = (evt.BUTTON3_MASK) then
                    for index in 0 .. (selectedTreePathArray'Length) - 1 loop
                        defaultMutableTreeNode := DefaultMutableTreeNode_Access (list.get (index));
                        if (defaultMutableTreeNode.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                            This.itemJPopupMenu.show (WorkAreaJTreeJPanel_Access'(This'Unchecked_Access), evt.getX, evt.getY);
                        else
                            This.itemJPopupMenu.show (WorkAreaJTreeJPanel_Access'(This'Unchecked_Access), evt.getX, evt.getY);
                        end if;
                    end loop;
                end if;
                if ((Java_And (evt.getModifiers, evt.BUTTON1_MASK))) = (evt.BUTTON1_MASK) then
                    WorkAreaJTreeJPanel'Class (This).deselectAll;
                    for index in 0 .. (selectedTreePathArray'Length) - 1 loop
                        defaultMutableTreeNode := DefaultMutableTreeNode_Access (list.get (index));
                        if (defaultMutableTreeNode.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                            MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.SELECT_Id, defaultMutableTreeNode))));
                        else
                            WorkAreaJTreeJPanel'Class (This).selectGraphicItem (defaultMutableTreeNode);
                        end if;
                    end loop;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkAreaJTreeJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("workAreaJTreeMousePressed"), e);
                end;
        end;
   end workAreaJTreeMousePressed;

   procedure itemJPopupMenuPopupMenuWillBecomeInvisible (This : in out WorkAreaJTreeJPanel; evt_Param : access PopupMenuEvent_Package.PopupMenuEvent'Class) is
      evt : constant PopupMenuEvent_Access := PopupMenuEvent_Access (evt_Param);
   begin
        null;
   end itemJPopupMenuPopupMenuWillBecomeInvisible;

   procedure itemJPopupMenuPopupMenuWillBecomeVisible (This : in out WorkAreaJTreeJPanel; evt_Param : access PopupMenuEvent_Package.PopupMenuEvent'Class) is
      evt : constant PopupMenuEvent_Access := PopupMenuEvent_Access (evt_Param);
   begin
        null;
   end itemJPopupMenuPopupMenuWillBecomeVisible;

   procedure copyJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        begin
            WorkAreaJTreeJPanel'Class (This).copy;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkAreaJTreeJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("copyJMenuItemMousePressed"), e);
                end;
        end;
   end copyJMenuItemMousePressed;

   procedure deleteJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
      selectedTreePathArray : TreePath_Access_Array_Access;
      treePath : TreePath_Access;
      index : Integer;
   begin
        begin
            selectedTreePathArray := This.workAreaJTree.getSelectionPaths;
            for index in 0 .. (selectedTreePathArray'Length) - 1 loop
                treePath := selectedTreePathArray (index);
                WorkAreaJTreeJPanel'Class (This).remove (treePath);
                WorkAreaJTreeJPanel'Class (This).updateTree;
                WorkAreaJTreeJPanel'Class (This).expand;
                WorkAreaJTreeJPanel'Class (This).repaint;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkAreaJTreeJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("deleteJMenuItemMousePressed"), e);
                end;
        end;
   end deleteJMenuItemMousePressed;

   procedure workAreaPropertiesJPanelMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class) is
      evt : constant MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        null;
   end workAreaPropertiesJPanelMousePressed;

   procedure getNode (This : in out WorkAreaJTreeJPanel; treePathArray : TreePath_Access_Array_Access) is
      Java_Result : constant BasicArrayList_Access := WorkAreaJTreeJPanel'Class (This).getNode (treePathArray => treePathArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNode;

   procedure getNode (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class) is
      Java_Result : constant DefaultMutableTreeNode_Access := WorkAreaJTreeJPanel'Class (This).getNode (treePath_Param => treePath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNode;

end org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;


