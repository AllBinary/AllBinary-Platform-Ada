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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References is
   type GenericProfileActions_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package.GenericProfileActions'Class;
   type GenericProfileActions_Access_Array is array (Natural range <>) of GenericProfileActions_Access;
   type GenericProfileActions_Access_Array_Access is access all GenericProfileActions_Access_Array;
   type GenericProfileActions_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActions_Access_Array_Access;
   type GenericProfileActions_Access_Array_Access_Array_Access is access all GenericProfileActions_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
limited with org.allbinary.input.automation.module.DefaultListModelHelper_Package;
with org.allbinary.input.automation.module.DefaultListModelHelper_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.CommonDataFileStrings_Package;
with org.allbinary.logic.io.file.CommonDataFileStrings_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.w3c.dom.NodeList_Package;
with org.w3c.dom.NodeList_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package is

   package File_Package renames Standard.java.io.File_Package;
   package FileInputStream_Package renames Standard.java.io.FileInputStream_Package;
   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package DefaultListModelHelper_Package renames Standard.org.allbinary.input.automation.module.DefaultListModelHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonDataFileStrings_Package renames Standard.org.allbinary.logic.io.file.CommonDataFileStrings_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   package Reference_Types is
   subtype DefaultListModelHelper_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access;
   use type DefaultListModelHelper_Access;
   subtype DefaultListModelHelper_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array;
   use type DefaultListModelHelper_Access_Array;
   subtype DefaultListModelHelper_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access;
   use type DefaultListModelHelper_Access_Array_Access;
   subtype DefaultListModelHelper_Access_Array_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array;
   use type DefaultListModelHelper_Access_Array_Access_Array;
   subtype DefaultListModelHelper_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array_Access;
   use type DefaultListModelHelper_Access_Array_Access_Array_Access;
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
   subtype CommonDataFileStrings_Access is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access;
   use type CommonDataFileStrings_Access;
   subtype CommonDataFileStrings_Access_Array is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access_Array;
   use type CommonDataFileStrings_Access_Array;
   subtype CommonDataFileStrings_Access_Array_Access is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access_Array_Access;
   use type CommonDataFileStrings_Access_Array_Access;
   subtype CommonDataFileStrings_Access_Array_Access_Array is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access_Array_Access_Array;
   use type CommonDataFileStrings_Access_Array_Access_Array;
   subtype CommonDataFileStrings_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.CommonDataFileStrings_Package_References.CommonDataFileStrings_Access_Array_Access_Array_Access;
   use type CommonDataFileStrings_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype NodeList_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access;
   use type NodeList_Access;
   subtype NodeList_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array;
   use type NodeList_Access_Array;
   subtype NodeList_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access;
   use type NodeList_Access_Array_Access;
   subtype NodeList_Access_Array_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array;
   use type NodeList_Access_Array_Access_Array;
   subtype NodeList_Access_Array_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array_Access;
   use type NodeList_Access_Array_Access_Array_Access;
   subtype GenericProfileActionsJPanel_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package_References.GenericProfileActionsJPanel_Access;
   use type GenericProfileActionsJPanel_Access;
   subtype GenericProfileActionsJPanel_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package_References.GenericProfileActionsJPanel_Access_Array;
   use type GenericProfileActionsJPanel_Access_Array;
   subtype GenericProfileActionsJPanel_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package_References.GenericProfileActionsJPanel_Access_Array_Access;
   use type GenericProfileActionsJPanel_Access_Array_Access;
   subtype GenericProfileActionsJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package_References.GenericProfileActionsJPanel_Access_Array_Access_Array;
   use type GenericProfileActionsJPanel_Access_Array_Access_Array;
   subtype GenericProfileActionsJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionsJPanel_Package_References.GenericProfileActionsJPanel_Access_Array_Access_Array_Access;
   use type GenericProfileActionsJPanel_Access_Array_Access_Array_Access;
   subtype GenericProfileAction_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access;
   use type GenericProfileAction_Access;
   subtype GenericProfileAction_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access_Array;
   use type GenericProfileAction_Access_Array;
   subtype GenericProfileAction_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access_Array_Access;
   use type GenericProfileAction_Access_Array_Access;
   subtype GenericProfileAction_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access_Array_Access_Array;
   use type GenericProfileAction_Access_Array_Access_Array;
   subtype GenericProfileAction_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access_Array_Access_Array_Access;
   use type GenericProfileAction_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfileActions_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access;
   function "=" (Left, Right : GenericProfileActions_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References."=";
   subtype GenericProfileActions_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array;
   function "=" (Left, Right : GenericProfileActions_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References."=";
   subtype GenericProfileActions_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActions_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References."=";
   subtype GenericProfileActions_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfileActions_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References."=";
   subtype GenericProfileActions_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActions_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References."=";

   type GenericProfileActions is new Java_Object and DomNodeInterface and DomDocumentMappingInterface with record
      logUtil : LogUtil_Access;
      commonFileStrings : CommonDataFileStrings_Access;
      name : Unbounded_String;
      genericProfileActionsJPanel : GenericProfileActionsJPanel_Access;
      actionsDefaultListModelHelper : DefaultListModelHelper_Access;
      hashMap : HashMap_Access;
   end record;
   DEFAULT_PROFILE_ACTIONS_PATH : Unbounded_String;

   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; name : Unbounded_String);
   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; name : Unbounded_String) return GenericProfileActions_Access;
   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; abPath_Param : access AbPath_Package.AbPath'Class; name : Unbounded_String);
   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; abPath_Param : access AbPath_Package.AbPath'Class; name : Unbounded_String) return GenericProfileActions_Access;
   procedure Initialize (This : in out GenericProfileActions'Class; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; fileInputStream_Param : access FileInputStream_Package.FileInputStream'Class; name : Unbounded_String);
   function Create (genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class; fileInputStream_Param : access FileInputStream_Package.FileInputStream'Class; name : Unbounded_String) return GenericProfileActions_Access;
   procedure init (This : in out GenericProfileActions; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class);
   procedure save (This : in out GenericProfileActions);
   function getFile (This : in out GenericProfileActions; name : Unbounded_String) return File_Access;
   procedure getFile (This : in out GenericProfileActions; name : Unbounded_String);
   procedure load (This : in out GenericProfileActions);
   procedure fileInit (This : in out GenericProfileActions; fileInputStream_Param : access FileInputStream_Package.FileInputStream'Class);
   procedure initActions (This : in out GenericProfileActions; nodeList_Param : access NodeList_Package.NodeList'Class);
   function getDefaultListModelHelper (This : in out GenericProfileActions) return DefaultListModelHelper_Access;
   function getAction (This : in out GenericProfileActions; string_Id : Unbounded_String) return GenericProfileAction_Access;
   procedure getAction (This : in out GenericProfileActions; string_Id : Unbounded_String);
   procedure add (This : in out GenericProfileActions; name : Unbounded_String);
   procedure remove (This : in out GenericProfileActions; name : Unbounded_String);
   function toHashMap (This : in out GenericProfileActions) return HashMap_Access;
   function toXmlNode (This : in out GenericProfileActions; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericProfileActions; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out GenericProfileActions) return Document_Access;
   function getGenericProfileActionsJPanel (This : in out GenericProfileActions) return GenericProfileActionsJPanel_Access;
   procedure setGenericProfileActionsJPanel (This : in out GenericProfileActions; genericProfileActionsJPanel_Param : access GenericProfileActionsJPanel_Package.GenericProfileActionsJPanel'Class);
   function getHashMap (This : in out GenericProfileActions) return HashMap_Access;
   procedure setHashMap (This : in out GenericProfileActions; hashMap_Param : access HashMap_Package.HashMap'Class);
   function getName (This : in out GenericProfileActions) return Unbounded_String;
   procedure setName (This : in out GenericProfileActions; name : Unbounded_String);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;


