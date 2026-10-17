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

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package is

   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package DomDocumentMappingInterface_Package renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package DefaultListModelHelper_Package renames org.allbinary.input.automation.module.DefaultListModelHelper_Package;
   package GenericProfiles_Package renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonDataFileStrings_Package renames org.allbinary.logic.io.file.CommonDataFileStrings_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

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

   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel : GenericProfileActionsJPanel_Access; name : Unbounded_String);
   function Create (genericProfileActionsJPanel : GenericProfileActionsJPanel_Access; name : Unbounded_String) return GenericProfileActions_Access;
   procedure init (This : in out GenericProfileActions; genericProfileActionsJPanel : GenericProfileActionsJPanel_Access);
   procedure save (This : in out GenericProfileActions);
   function getFile (This : in out GenericProfileActions; name : Unbounded_String) return File_Access;
   procedure getFile (This : in out GenericProfileActions; name : Unbounded_String);
   procedure load (This : in out GenericProfileActions);
   procedure fileInit (This : in out GenericProfileActions; fileInputStream : FileInputStream_Access);
   procedure initActions (This : in out GenericProfileActions; nodeList : NodeList_Access);
   function getDefaultListModelHelper (This : in out GenericProfileActions) return DefaultListModelHelper_Access;
   procedure getDefaultListModelHelper (This : in out GenericProfileActions);
   function getAction (This : in out GenericProfileActions; string_Id : Unbounded_String) return GenericProfileAction_Access;
   procedure getAction (This : in out GenericProfileActions; string_Id : Unbounded_String);
   procedure add (This : in out GenericProfileActions; name : Unbounded_String);
   procedure remove (This : in out GenericProfileActions; name : Unbounded_String);
   function toHashMap (This : in out GenericProfileActions) return HashMap_Access;
   procedure toHashMap (This : in out GenericProfileActions);
   function toXmlNode (This : in out GenericProfileActions; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out GenericProfileActions; document : Document_Access);
   function toXmlDoc (This : in out GenericProfileActions) return Document_Access;
   procedure toXmlDoc (This : in out GenericProfileActions);
   function getGenericProfileActionsJPanel (This : in out GenericProfileActions) return GenericProfileActionsJPanel_Access;
   procedure getGenericProfileActionsJPanel (This : in out GenericProfileActions);
   procedure setGenericProfileActionsJPanel (This : in out GenericProfileActions; genericProfileActionsJPanel : GenericProfileActionsJPanel_Access);
   function getHashMap (This : in out GenericProfileActions) return HashMap_Access;
   procedure getHashMap (This : in out GenericProfileActions);
   procedure setHashMap (This : in out GenericProfileActions; hashMap : HashMap_Access);
   function getName (This : in out GenericProfileActions) return Unbounded_String;
   procedure getName (This : in out GenericProfileActions);
   procedure setName (This : in out GenericProfileActions; name : Unbounded_String);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;


