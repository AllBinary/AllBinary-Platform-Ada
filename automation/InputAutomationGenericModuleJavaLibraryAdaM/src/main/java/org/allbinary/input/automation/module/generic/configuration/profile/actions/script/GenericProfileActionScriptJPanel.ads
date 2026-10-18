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
--  with java.awt.event.MouseEvent_Package; use java.awt.event.MouseEvent_Package;
--  with javax.swing.tree.DefaultMutableTreeNode_Package; use javax.swing.tree.DefaultMutableTreeNode_Package;
--  with javax.swing.tree.DefaultTreeModel_Package; use javax.swing.tree.DefaultTreeModel_Package;
--  with javax.swing.tree.TreePath_Package; use javax.swing.tree.TreePath_Package;
with org.allbinary.input.automation.actions.script.JTreeInterface_Package; use org.allbinary.input.automation.actions.script.JTreeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.JPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.JPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package is

   package JTreeInterface_Package renames Standard.org.allbinary.input.automation.actions.script.JTreeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GenericProfileActionScriptJPanel is tagged;
   type GenericProfileActionScriptJPanel_Access is access all GenericProfileActionScriptJPanel'Class;
   type GenericProfileActionScriptJPanel_Access_Array is array (Natural range <>) of GenericProfileActionScriptJPanel_Access;
   type GenericProfileActionScriptJPanel_Access_Array_Access is access all GenericProfileActionScriptJPanel_Access_Array;
   type GenericProfileActionScriptJPanel_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActionScriptJPanel_Access_Array_Access;
   type GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access is access all GenericProfileActionScriptJPanel_Access_Array_Access_Array;

   type GenericProfileActionScriptJPanel is new JPanel and JTreeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      defaultMutableTreeNode : DefaultMutableTreeNode_Access;
      genericProfileActionScript : GenericProfileActionScript_Access;
      actionScriptJTree : JTree_Access;
      jScrollPane1 : JScrollPane_Access;
   end record;

   procedure Initialize (This : in out GenericProfileActionScriptJPanel'Class);
   function Create return GenericProfileActionScriptJPanel_Access;
   procedure updateJTree (This : in out GenericProfileActionScriptJPanel);
   function getGenericProfileActionScript (This : in out GenericProfileActionScriptJPanel) return GenericProfileActionScript_Access;
   procedure setGenericProfileActionScript (This : in out GenericProfileActionScriptJPanel; genericProfileActionScript_Param : access GenericProfileActionScript_Package.GenericProfileActionScript'Class);
   function getActionScriptJTree (This : in out GenericProfileActionScriptJPanel) return JTree_Access;
   procedure setActionScriptJTree (This : in out GenericProfileActionScriptJPanel; actionScriptJTree_Param : access JTree_Package.JTree'Class);
   procedure initComponents (This : in out GenericProfileActionScriptJPanel);
   procedure actionScriptJTreeMouseReleased (This : in out GenericProfileActionScriptJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure actionScriptJTreeMouseClicked (This : in out GenericProfileActionScriptJPanel; evt_Param : access MouseEvent_Package.MouseEvent'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package;


