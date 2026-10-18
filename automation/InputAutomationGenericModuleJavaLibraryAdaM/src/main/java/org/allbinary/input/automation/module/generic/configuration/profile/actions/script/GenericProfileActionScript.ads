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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
--  with javax.swing.tree.DefaultMutableTreeNode_Package; use javax.swing.tree.DefaultMutableTreeNode_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ProfileActionScriptNodeInterface_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
   package GenericProfileActionJPanel_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type GenericProfileActionScript is tagged;
   type GenericProfileActionScript_Access is access all GenericProfileActionScript'Class;
   type GenericProfileActionScript_Access_Array is array (Natural range <>) of GenericProfileActionScript_Access;
   type GenericProfileActionScript_Access_Array_Access is access all GenericProfileActionScript_Access_Array;
   type GenericProfileActionScript_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActionScript_Access_Array_Access;
   type GenericProfileActionScript_Access_Array_Access_Array_Access is access all GenericProfileActionScript_Access_Array_Access_Array;

   type GenericProfileActionScript is new Java_Object and ProfileActionScriptNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      genericProfileActionJPanel : GenericProfileActionJPanel_Access;
      profileActionConditionInterfaceVector : BasicArrayList_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GenericProfileActionScript'Class; genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; node_Param : access Node_Package.Node'Class);
   function Create (genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; node_Param : access Node_Package.Node'Class) return GenericProfileActionScript_Access;
   procedure Initialize (This : in out GenericProfileActionScript'Class; genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class);
   function Create (genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class) return GenericProfileActionScript_Access;
   procedure addCondition (This : in out GenericProfileActionScript; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class);
   procedure removeCondition (This : in out GenericProfileActionScript; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class);
   function toHashMap (This : in out GenericProfileActionScript) return HashMap_Access;
   function getProfileActionConditionInterfaceVector (This : in out GenericProfileActionScript) return BasicArrayList_Access;
   procedure setProfileActionConditionInterfaceVector (This : in out GenericProfileActionScript; profileActionConditionInterfaceVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function toXmlNode (This : in out GenericProfileActionScript; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericProfileActionScript; document_Param : access Document_Package.Document'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;


