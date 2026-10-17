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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.swing.tree.DefaultMutableTreeNode_Package; use javax.swing.tree.DefaultMutableTreeNode_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
--  with javax.swing.tree.TreePath_Package; use javax.swing.tree.TreePath_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.j2me.workarea.JPanel_Package; use org.allbinary.graphics.j2me.workarea.JPanel_Package;
with org.allbinary.graphics.j2me.workarea.JTree_Package; use org.allbinary.graphics.j2me.workarea.JTree_Package;

package org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package is

   package CanvasTreeLabel_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;
   package MyCanvasEvent_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
   package MyCanvasEventService_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
   package MyCanvasEventSource_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;
   package MyGraphicItemEvent_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
   package MyGraphicItemEventService_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;
   package MyGraphicItemEventSource_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type WorkAreaJTreeJPanel is tagged;
   type WorkAreaJTreeJPanel_Access is access all WorkAreaJTreeJPanel'Class;
   type WorkAreaJTreeJPanel_Access_Array is array (Natural range <>) of WorkAreaJTreeJPanel_Access;
   type WorkAreaJTreeJPanel_Access_Array_Access is access all WorkAreaJTreeJPanel_Access_Array;

   type WorkAreaJTreeJPanel is new JPanel with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      rootTreeNode : DefaultMutableTreeNode_Access;
      workAreaJTree : JTree_Access;
      highlightedBasicArrayList : BasicArrayList_Access;
      copyJMenuItem : JMenuItem_Access;
      deleteJMenuItem : JMenuItem_Access;
      itemJPopupMenu : JPopupMenu_Access;
      itemJScrollPane1 : JScrollPane_Access;
      rotateJMenuItem : JMenuItem_Access;
      workAreaPropertiesJPanel : JPanel_Access;
   end record;

   procedure Initialize (This : in out WorkAreaJTreeJPanel'Class; workAreaName : Unbounded_String);
   function Create (workAreaName : Unbounded_String) return WorkAreaJTreeJPanel_Access;
   procedure add (This : in out WorkAreaJTreeJPanel; treeNode_Param : access MutableTreeNode_Package.MutableTreeNode'Class);
   procedure updateTree (This : in out WorkAreaJTreeJPanel);
   function getNode (This : in out WorkAreaJTreeJPanel; treePathArray : TreePath_Access_Array_Access) return BasicArrayList_Access;
   procedure getNode (This : in out WorkAreaJTreeJPanel; treePathArray : TreePath_Access_Array_Access);
   function getNode (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class) return DefaultMutableTreeNode_Access;
   procedure getNode (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class);
   procedure deselectAll (This : in out WorkAreaJTreeJPanel);
   procedure selectGraphicItem (This : in out WorkAreaJTreeJPanel; node_Param : access DefaultMutableTreeNode_Package.DefaultMutableTreeNode'Class);
   procedure removeGraphicItem (This : in out WorkAreaJTreeJPanel; node_Param : access DefaultMutableTreeNode_Package.DefaultMutableTreeNode'Class);
   procedure removeCanvas (This : in out WorkAreaJTreeJPanel; node_Param : access DefaultMutableTreeNode_Package.DefaultMutableTreeNode'Class);
   procedure remove (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class);
   procedure copy (This : in out WorkAreaJTreeJPanel);
   procedure copy (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class);
   procedure rotate (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class; angle : Long_Float);
   function getRootTreeNode (This : in out WorkAreaJTreeJPanel) return MutableTreeNode_Access;
   procedure expand (This : in out WorkAreaJTreeJPanel);
   procedure expand (This : in out WorkAreaJTreeJPanel; treePath_Param : access TreePath_Package.TreePath'Class);
   procedure initComponents (This : in out WorkAreaJTreeJPanel);
   procedure rotateJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure workAreaJTreeMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure itemJPopupMenuPopupMenuWillBecomeInvisible (This : in out WorkAreaJTreeJPanel; evt_Param : access PopupMenuEvent_Package.PopupMenuEvent'Class);
   procedure itemJPopupMenuPopupMenuWillBecomeVisible (This : in out WorkAreaJTreeJPanel; evt_Param : access PopupMenuEvent_Package.PopupMenuEvent'Class);
   procedure copyJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure deleteJMenuItemMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure workAreaPropertiesJPanelMousePressed (This : in out WorkAreaJTreeJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);

end org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;


