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
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References is
   type GenericProfileActionScriptJPanel_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package.GenericProfileActionScriptJPanel'Class;
   type GenericProfileActionScriptJPanel_Access_Array is array (Natural range <>) of GenericProfileActionScriptJPanel_Access;
   type GenericProfileActionScriptJPanel_Access_Array_Access is access all GenericProfileActionScriptJPanel_Access_Array;
   type GenericProfileActionScriptJPanel_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActionScriptJPanel_Access_Array_Access;
   type GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access is access all GenericProfileActionScriptJPanel_Access_Array_Access_Array;
   type GenericProfileActionScriptJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericProfileActionScriptJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericProfileActionScriptJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericProfileActionScriptJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericProfileActionScriptJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericProfileActionScriptJPanel_Access_Array_Access is (if Value /= null and then Value.all in GenericProfileActionScriptJPanel_Access_Array_Object'Class then GenericProfileActionScriptJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type GenericProfileActionScriptJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericProfileActionScriptJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericProfileActionScriptJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GenericProfileActionScriptJPanel_Access_Array_Access_Array_Object'Class then GenericProfileActionScriptJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.GridLayout_Package; use java.awt.GridLayout_Package;
--  with java.awt.event.MouseAdapter_Package; use java.awt.event.MouseAdapter_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JScrollPane_Package; use javax.swing.JScrollPane_Package;
--  with javax.swing.JTree_Package; use javax.swing.JTree_Package;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package_References;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package is

   package JTreeInterface_Package renames Standard.org.allbinary.input.automation.actions.script.JTreeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype GenericProfileActionScript_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package_References.GenericProfileActionScript_Access;
   use type GenericProfileActionScript_Access;
   subtype GenericProfileActionScript_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package_References.GenericProfileActionScript_Access_Array;
   use type GenericProfileActionScript_Access_Array;
   subtype GenericProfileActionScript_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package_References.GenericProfileActionScript_Access_Array_Access;
   use type GenericProfileActionScript_Access_Array_Access;
   subtype GenericProfileActionScript_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package_References.GenericProfileActionScript_Access_Array_Access_Array;
   use type GenericProfileActionScript_Access_Array_Access_Array;
   subtype GenericProfileActionScript_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package_References.GenericProfileActionScript_Access_Array_Access_Array_Access;
   use type GenericProfileActionScript_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfileActionScriptJPanel_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access;
   function "=" (Left, Right : GenericProfileActionScriptJPanel_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References."=";
   subtype GenericProfileActionScriptJPanel_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access_Array;
   function "=" (Left, Right : GenericProfileActionScriptJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References."=";
   subtype GenericProfileActionScriptJPanel_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActionScriptJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References."=";
   function Java_Box (Value : GenericProfileActionScriptJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.Java_Box;
   function Java_Unbox_GenericProfileActionScriptJPanel_Access_Array (Value : access Java_Object'Class) return GenericProfileActionScriptJPanel_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.Java_Unbox_GenericProfileActionScriptJPanel_Access_Array;
   subtype GenericProfileActionScriptJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfileActionScriptJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References."=";
   subtype GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References."=";
   function Java_Box (Value : GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.Java_Box;
   function Java_Unbox_GenericProfileActionScriptJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.Java_Unbox_GenericProfileActionScriptJPanel_Access_Array_Access_Array;

   type GenericProfileActionScriptJPanel is new Java_Object and JTreeInterface with record
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


