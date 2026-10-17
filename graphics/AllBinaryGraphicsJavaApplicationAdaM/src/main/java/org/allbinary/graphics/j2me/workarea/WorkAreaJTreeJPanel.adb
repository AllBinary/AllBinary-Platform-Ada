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


package body org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package is

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
        This.initComponents;
        This.rootTreeNode := DefaultMutableTreeNode_Package.Create (workAreaName);
        This.workAreaPropertiesJPanel.removeAll;
        This.updateTree;
        This.highlightedBasicArrayList := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (workAreaName : Unbounded_String) return WorkAreaJTreeJPanel_Access is
      This : constant WorkAreaJTreeJPanel_Access := new WorkAreaJTreeJPanel;
   begin
      Initialize (This.all, workAreaName);
      return This;
   end Create;

   procedure add (This : in out WorkAreaJTreeJPanel; treeNode : MutableTreeNode_Access) is
   begin
        This.rootTreeNode.add (treeNode);
   end add;

   procedure updateTree (This : in out WorkAreaJTreeJPanel) is
   begin
        This.workAreaJTree := JTree_Package.Create (This.rootTreeNode);
        This.workAreaJTree.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt : MouseEvent_Access) is
--     begin
--                  This.workAreaJTreeMousePressed (evt);
--     end mousePressed;
);
        This.workAreaPropertiesJPanel.removeAll;
        This.workAreaPropertiesJPanel.add (This.workAreaJTree);
   end updateTree;

   function getNode (This : in out WorkAreaJTreeJPanel; treePathArray : TreePath_Access_Array_Access) return BasicArrayList_Access is
      basicArrayList : BasicArrayList_Access;
      index : Integer;
   begin
        basicArrayList := BasicArrayListD_Package.Create;
        if (treePathArray) /= (null) then
            for index in 0 .. (treePathArray'Length) - 1 loop
                basicArrayList.add (This.getNode (treePathArray (index)));
            end loop;
        end if;
        return basicArrayList;
   end getNode;

   function getNode (This : in out WorkAreaJTreeJPanel; treePath : TreePath_Access) return DefaultMutableTreeNode_Access is
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
        This.logUtil.putF (To_Unbounded_String ("size: ") & Java_Image (size), This'Unchecked_Access, To_Unbounded_String ("deselectAll"));
        for index in 0 .. (size) - 1 loop
            node := DefaultMutableTreeNode_Access (This.highlightedBasicArrayList.get (index));
            MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.DESELECT, node))));
        end loop;
        This.highlightedBasicArrayList.clear;
   end deselectAll;

   --  throws Exception
   procedure selectGraphicItem (This : in out WorkAreaJTreeJPanel; node : DefaultMutableTreeNode_Access) is
   begin
        This.highlightedBasicArrayList.add (node);
        MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.SELECT_Id, node))));
   end selectGraphicItem;

   --  throws Exception
   procedure removeGraphicItem (This : in out WorkAreaJTreeJPanel; node : DefaultMutableTreeNode_Access) is
   begin
        MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.DELETE, node))));
   end removeGraphicItem;

   --  throws Exception
   procedure removeCanvas (This : in out WorkAreaJTreeJPanel; node : DefaultMutableTreeNode_Access) is
   begin
        MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.DELETE, node))));
   end removeCanvas;

   --  throws Exception
   procedure remove (This : in out WorkAreaJTreeJPanel; treePath : TreePath_Access) is
      node : DefaultMutableTreeNode_Access;
      parent : DefaultMutableTreeNode_Access;
   begin
        node := This.getNode (treePath);
        if (node) /= (null) then
            if (node.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                This.removeCanvas (node);
            else
                This.removeGraphicItem (node);
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
        This.copy (treePath);
        This.updateTree;
        This.expand;
        This.repaint;
   end copy;

   --  throws Exception
   procedure copy (This : in out WorkAreaJTreeJPanel; treePath : TreePath_Access) is
      node : DefaultMutableTreeNode_Access;
   begin
        node := This.getNode (treePath);
        if (node) /= (null) then
            if (node.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.DUPLICATE, node))));
            else
                MyGraphicItemEventService_Package.fire (MyGraphicItemEvent_Package.Create (Java_Object_Access (MyGraphicItemEventSource_Package.Create (MyGraphicItemEventService_Package.DUPLICATE, node))));
            end if;
        end if;
   end copy;

   --  throws Exception
   procedure rotate (This : in out WorkAreaJTreeJPanel; treePath : TreePath_Access; angle : Long_Float) is
      node : DefaultMutableTreeNode_Access;
   begin
        node := This.getNode (treePath);
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
        return This.rootTreeNode;
   end getRootTreeNode;

   procedure expand (This : in out WorkAreaJTreeJPanel) is
   begin
        This.workAreaJTree.expandRow (0);
        This.workAreaJTree.expandRow (1);
   end expand;

   procedure expand (This : in out WorkAreaJTreeJPanel; treePath : TreePath_Access) is
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
--     procedure popupMenuCanceled (This : in out ; evt : PopupMenuEvent_Access) is
--     begin
--                  null;
--     end popupMenuCanceled;
--              
--     procedure popupMenuWillBecomeInvisible (This : in out ; evt : PopupMenuEvent_Access) is
--     begin
--                  This.itemJPopupMenuPopupMenuWillBecomeInvisible (evt);
--     end popupMenuWillBecomeInvisible;
--              
--     procedure popupMenuWillBecomeVisible (This : in out ; evt : PopupMenuEvent_Access) is
--     begin
--                  This.itemJPopupMenuPopupMenuWillBecomeVisible (evt);
--     end popupMenuWillBecomeVisible;
);
        This.deleteJMenuItem.setText (To_Unbounded_String ("Delete"));
        This.deleteJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt : MouseEvent_Access) is
--     begin
--                  This.deleteJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.itemJPopupMenu.add (This.deleteJMenuItem);
        This.copyJMenuItem.setText (To_Unbounded_String ("Copy"));
        This.copyJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt : MouseEvent_Access) is
--     begin
--                  This.copyJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.itemJPopupMenu.add (This.copyJMenuItem);
        This.rotateJMenuItem.setText (To_Unbounded_String ("Rotate 45*"));
        This.rotateJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt : MouseEvent_Access) is
--     begin
--                  This.rotateJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.itemJPopupMenu.add (This.rotateJMenuItem);
        This.setLayout (GridLayout_Package.Create (1, 1));
        This.workAreaPropertiesJPanel.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt : MouseEvent_Access) is
--     begin
--                  This.workAreaPropertiesJPanelMousePressed (evt);
--     end mousePressed;
);
        This.workAreaPropertiesJPanel.setLayout (GridLayout_Package.Create (1, 0));
        This.itemJScrollPane1.setViewportView (This.workAreaPropertiesJPanel);
        This.add (This.itemJScrollPane1);
   end initComponents;

   procedure rotateJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt : MouseEvent_Access) is
      treePath : TreePath_Access;
   begin
        begin
            treePath := This.workAreaJTree.getSelectionPath;
            This.rotate (treePath, 45);
            This.updateTree;
            This.expand;
            This.repaint;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("rotateJMenuItemMousePressed"), e);
                end;
        end;
   end rotateJMenuItemMousePressed;

   procedure workAreaJTreeMousePressed (This : in out WorkAreaJTreeJPanel; evt : MouseEvent_Access) is
      selectedTreePathArray : TreePath_Access_Array_Access;
      list : BasicArrayList_Access;
      defaultMutableTreeNode : DefaultMutableTreeNode_Access;
      index : Integer;
   begin
        begin
            selectedTreePathArray := This.workAreaJTree.getSelectionPaths;
            list := This.getNode (selectedTreePathArray);
            if (list.size) > (0) then
                if ((Java_And (evt.getModifiers, evt.BUTTON3_MASK))) = (evt.BUTTON3_MASK) then
                    for index in 0 .. (selectedTreePathArray'Length) - 1 loop
                        defaultMutableTreeNode := DefaultMutableTreeNode_Access (list.get (index));
                        if (defaultMutableTreeNode.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                            This.itemJPopupMenu.show (This'Unchecked_Access, evt.getX, evt.getY);
                        else
                            This.itemJPopupMenu.show (This'Unchecked_Access, evt.getX, evt.getY);
                        end if;
                    end loop;
                end if;
                if ((Java_And (evt.getModifiers, evt.BUTTON1_MASK))) = (evt.BUTTON1_MASK) then
                    This.deselectAll;
                    for index in 0 .. (selectedTreePathArray'Length) - 1 loop
                        defaultMutableTreeNode := DefaultMutableTreeNode_Access (list.get (index));
                        if (defaultMutableTreeNode.getUserObject.all in CanvasTreeLabel_Package.CanvasTreeLabel'Class) then
                            MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.SELECT_Id, defaultMutableTreeNode))));
                        else
                            This.selectGraphicItem (defaultMutableTreeNode);
                        end if;
                    end loop;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("workAreaJTreeMousePressed"), e);
                end;
        end;
   end workAreaJTreeMousePressed;

   procedure itemJPopupMenuPopupMenuWillBecomeInvisible (This : in out WorkAreaJTreeJPanel; evt : PopupMenuEvent_Access) is
   begin
        null;
   end itemJPopupMenuPopupMenuWillBecomeInvisible;

   procedure itemJPopupMenuPopupMenuWillBecomeVisible (This : in out WorkAreaJTreeJPanel; evt : PopupMenuEvent_Access) is
   begin
        null;
   end itemJPopupMenuPopupMenuWillBecomeVisible;

   procedure copyJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt : MouseEvent_Access) is
   begin
        begin
            This.copy;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("copyJMenuItemMousePressed"), e);
                end;
        end;
   end copyJMenuItemMousePressed;

   procedure deleteJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt : MouseEvent_Access) is
      selectedTreePathArray : TreePath_Access_Array_Access;
      treePath : TreePath_Access;
      index : Integer;
   begin
        begin
            selectedTreePathArray := This.workAreaJTree.getSelectionPaths;
            for index in 0 .. (selectedTreePathArray'Length) - 1 loop
                treePath := selectedTreePathArray (index);
                This.remove (treePath);
                This.updateTree;
                This.expand;
                This.repaint;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("deleteJMenuItemMousePressed"), e);
                end;
        end;
   end deleteJMenuItemMousePressed;

   procedure workAreaPropertiesJPanelMousePressed (This : in out WorkAreaJTreeJPanel; evt : MouseEvent_Access) is
   begin
        null;
   end workAreaPropertiesJPanelMousePressed;

   procedure getNode (This : in out WorkAreaJTreeJPanel; treePathArray : TreePath_Access_Array_Access) is
      Java_Result : constant BasicArrayList_Access := WorkAreaJTreeJPanel'Class (This).getNode (treePathArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNode;

   procedure getNode (This : in out WorkAreaJTreeJPanel; treePath : TreePath_Access) is
      Java_Result : constant DefaultMutableTreeNode_Access := WorkAreaJTreeJPanel'Class (This).getNode (treePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNode;

   procedure getRootTreeNode (This : in out WorkAreaJTreeJPanel) is
      Java_Result : constant MutableTreeNode_Access := WorkAreaJTreeJPanel'Class (This).getRootTreeNode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootTreeNode;

end org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;


