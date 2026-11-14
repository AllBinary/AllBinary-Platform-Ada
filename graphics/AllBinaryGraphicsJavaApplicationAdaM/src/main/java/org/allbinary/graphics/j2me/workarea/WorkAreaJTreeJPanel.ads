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

with AllBinary_Java;
limited with org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;
package org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References is
   type WorkAreaJTreeJPanel_Access is access all org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package.WorkAreaJTreeJPanel'Class;
   type WorkAreaJTreeJPanel_Access_Array is array (Natural range <>) of WorkAreaJTreeJPanel_Access;
   type WorkAreaJTreeJPanel_Access_Array_Access is access all WorkAreaJTreeJPanel_Access_Array;
   type WorkAreaJTreeJPanel_Access_Array_Access_Array is array (Natural range <>) of WorkAreaJTreeJPanel_Access_Array_Access;
   type WorkAreaJTreeJPanel_Access_Array_Access_Array_Access is access all WorkAreaJTreeJPanel_Access_Array_Access_Array;
   type WorkAreaJTreeJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkAreaJTreeJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkAreaJTreeJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkAreaJTreeJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkAreaJTreeJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkAreaJTreeJPanel_Access_Array_Access is (if Value /= null and then Value.all in WorkAreaJTreeJPanel_Access_Array_Object'Class then WorkAreaJTreeJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type WorkAreaJTreeJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkAreaJTreeJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkAreaJTreeJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkAreaJTreeJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkAreaJTreeJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkAreaJTreeJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WorkAreaJTreeJPanel_Access_Array_Access_Array_Object'Class then WorkAreaJTreeJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References;

with org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with java.awt.GridLayout_Package; use java.awt.GridLayout_Package;
--  with java.awt.event.MouseAdapter_Package; use java.awt.event.MouseAdapter_Package;
--  with java.awt.event.MouseEvent_Package; use java.awt.event.MouseEvent_Package;
--  with javax.swing.JMenuItem_Package; use javax.swing.JMenuItem_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JPopupMenu_Package; use javax.swing.JPopupMenu_Package;
--  with javax.swing.JScrollPane_Package; use javax.swing.JScrollPane_Package;
--  with javax.swing.event.PopupMenuEvent_Package; use javax.swing.event.PopupMenuEvent_Package;
--  with javax.swing.event.PopupMenuListener_Package; use javax.swing.event.PopupMenuListener_Package;
limited with org.allbinary.graphics.j2me.workarea.JTree_Package;
with org.allbinary.graphics.j2me.workarea.JTree_Package_References;

package org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype JTree_Access is org.allbinary.graphics.j2me.workarea.JTree_Package_References.JTree_Access;
   use type JTree_Access;
   subtype JTree_Access_Array is org.allbinary.graphics.j2me.workarea.JTree_Package_References.JTree_Access_Array;
   use type JTree_Access_Array;
   subtype JTree_Access_Array_Access is org.allbinary.graphics.j2me.workarea.JTree_Package_References.JTree_Access_Array_Access;
   use type JTree_Access_Array_Access;
   subtype JTree_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.JTree_Package_References.JTree_Access_Array_Access_Array;
   use type JTree_Access_Array_Access_Array;
   subtype JTree_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.JTree_Package_References.JTree_Access_Array_Access_Array_Access;
   use type JTree_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WorkAreaJTreeJPanel_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access;
   function "=" (Left, Right : WorkAreaJTreeJPanel_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References."=";
   subtype WorkAreaJTreeJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access_Array;
   function "=" (Left, Right : WorkAreaJTreeJPanel_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References."=";
   subtype WorkAreaJTreeJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access_Array_Access;
   function "=" (Left, Right : WorkAreaJTreeJPanel_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References."=";
   function Java_Box (Value : WorkAreaJTreeJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.Java_Box;
   function Java_Unbox_WorkAreaJTreeJPanel_Access_Array (Value : access Java_Object'Class) return WorkAreaJTreeJPanel_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.Java_Unbox_WorkAreaJTreeJPanel_Access_Array;
   subtype WorkAreaJTreeJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : WorkAreaJTreeJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References."=";
   subtype WorkAreaJTreeJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.WorkAreaJTreeJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkAreaJTreeJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References."=";
   function Java_Box (Value : WorkAreaJTreeJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.Java_Box;
   function Java_Unbox_WorkAreaJTreeJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return WorkAreaJTreeJPanel_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package_References.Java_Unbox_WorkAreaJTreeJPanel_Access_Array_Access_Array;

   type WorkAreaJTreeJPanel is new Java_Object with record
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


