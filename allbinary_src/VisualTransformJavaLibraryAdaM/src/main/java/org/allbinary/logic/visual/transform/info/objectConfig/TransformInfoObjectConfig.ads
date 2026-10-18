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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package NamedNodeMap_Package renames Standard.org.w3c.dom.NamedNodeMap_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TransformInfoObjectConfig is tagged;
   type TransformInfoObjectConfig_Access is access all TransformInfoObjectConfig'Class;
   type TransformInfoObjectConfig_Access_Array is array (Natural range <>) of TransformInfoObjectConfig_Access;
   type TransformInfoObjectConfig_Access_Array_Access is access all TransformInfoObjectConfig_Access_Array;
   type TransformInfoObjectConfig_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfig_Access_Array_Access;
   type TransformInfoObjectConfig_Access_Array_Access_Array_Access is access all TransformInfoObjectConfig_Access_Array_Access_Array;

   type TransformInfoObjectConfig is new Java_Object and TransformInfoObjectConfigInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      ownerTransformInfoInterface : TransformInfoInterface_Access;
      document : Document_Access;
      outputTypeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfig_Access;
   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return TransformInfoObjectConfig_Access;
   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return TransformInfoObjectConfig_Access;
   procedure createDocument (This : in out TransformInfoObjectConfig);
   function getTransformInfoInterface (This : in out TransformInfoObjectConfig) return TransformInfoInterface_Access;
   function toXmlDoc (This : in out TransformInfoObjectConfig) return Document_Access;
   procedure setDocument (This : in out TransformInfoObjectConfig; document_Param : access Document_Package.Document'Class);
   function containsView (This : in out TransformInfoObjectConfig; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Boolean;
   procedure containsView (This : in out TransformInfoObjectConfig; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function getTemplateAttributes (This : in out TransformInfoObjectConfig) return NamedNodeMap_Access;
   function getName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   procedure setName (This : in out TransformInfoObjectConfig; name : Unbounded_String);
   function getNodeVector (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access;
   procedure getNodeVector (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String);
   function getTransformDomNodes (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access;
   procedure getTransformDomNodes (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String);
   function getTransforms (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access;
   procedure getTransforms (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String);
   function getTransformsGroup (This : in out TransformInfoObjectConfig; group : Unbounded_String) return BasicArrayList_Access;
   procedure getTransformsGroup (This : in out TransformInfoObjectConfig; group : Unbounded_String);
   function getTransformDomNodes (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   function getTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   function getGroupTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   function getParentTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   function getRootNode (This : in out TransformInfoObjectConfig) return Node_Access;
   procedure setOutputTypeName (This : in out TransformInfoObjectConfig; outputTypeName : Unbounded_String);
   function getOutputTypeName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   function getInputOutputTypeName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   function getInputOutputTypeFile (This : in out TransformInfoObjectConfig) return Unbounded_String;
   function getImportUriPath (This : in out TransformInfoObjectConfig) return Unbounded_String;
   function toString (This : in out TransformInfoObjectConfig) return Unbounded_String;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;


