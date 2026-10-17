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
--  with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
with org.allbinary.input.automation.module.DefaultListModelHelper_Package; use org.allbinary.input.automation.module.DefaultListModelHelper_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.CommonDataFileStrings_Package; use org.allbinary.logic.io.file.CommonDataFileStrings_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsData_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package DefaultListModelHelper_Package renames Standard.org.allbinary.input.automation.module.DefaultListModelHelper_Package;
   package GenericProfiles_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonDataFileStrings_Package renames Standard.org.allbinary.logic.io.file.CommonDataFileStrings_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type GenericProfileActions is tagged;
   type GenericProfileActions_Access is access all GenericProfileActions'Class;
   type GenericProfileActions_Access_Array is array (Natural range <>) of GenericProfileActions_Access;
   type GenericProfileActions_Access_Array_Access is access all GenericProfileActions_Access_Array;

   type GenericProfileActions is new DomNodeInterface and DomDocumentMappingInterface with record
      logUtil : LogUtil_Access;
      commonFileStrings : CommonDataFileStrings_Access;
      name : Unbounded_String;
      genericProfileActionsJPanel : GenericProfileActionsJPanel_Access;
      actionsDefaultListModelHelper : DefaultListModelHelper_Access;
      hashMap : HashMap_Access;
   end record;
   DEFAULT_PROFILE_ACTIONS_PATH : Unbounded_String;

   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel'Class; name : Unbounded_String);
   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel'Class; name : Unbounded_String) return GenericProfileActions_Access;
   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel'Class; abPath_Param : access AbPath'Class; name : Unbounded_String);
   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel'Class; abPath_Param : access AbPath'Class; name : Unbounded_String) return GenericProfileActions_Access;
   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel'Class; fileInputStream_Param : access FileInputStream'Class; name : Unbounded_String);
   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel'Class; fileInputStream_Param : access FileInputStream'Class; name : Unbounded_String) return GenericProfileActions_Access;
   procedure init (This : in out GenericProfileActions; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel'Class);
   procedure save (This : in out GenericProfileActions);
   function getFile (This : in out GenericProfileActions; name : Unbounded_String) return File_Access;
   procedure getFile (This : in out GenericProfileActions; name : Unbounded_String);
   procedure load (This : in out GenericProfileActions);
   procedure fileInit (This : in out GenericProfileActions; fileInputStream_Param : access FileInputStream'Class);
   procedure initActions (This : in out GenericProfileActions; nodeList_Param : access NodeList'Class);
   function getDefaultListModelHelper (This : in out GenericProfileActions) return DefaultListModelHelper_Access;
   function getAction (This : in out GenericProfileActions; string_Id : Unbounded_String) return GenericProfileAction_Access;
   procedure getAction (This : in out GenericProfileActions; string_Id : Unbounded_String);
   procedure add (This : in out GenericProfileActions; name : Unbounded_String);
   procedure remove (This : in out GenericProfileActions; name : Unbounded_String);
   function toHashMap (This : in out GenericProfileActions) return HashMap_Access;
   function toXmlNode (This : in out GenericProfileActions; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericProfileActions; document_Param : access Document'Class);
   function toXmlDoc (This : in out GenericProfileActions) return Document_Access;
   function getGenericProfileActionsJPanel (This : in out GenericProfileActions) return GenericProfileActionsJPanel_Access;
   procedure setGenericProfileActionsJPanel (This : in out GenericProfileActions; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel'Class);
   function getHashMap (This : in out GenericProfileActions) return HashMap_Access;
   procedure setHashMap (This : in out GenericProfileActions; hashMap_Param : access HashMap'Class);
   function getName (This : in out GenericProfileActions) return Unbounded_String;
   procedure setName (This : in out GenericProfileActions; name : Unbounded_String);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;


