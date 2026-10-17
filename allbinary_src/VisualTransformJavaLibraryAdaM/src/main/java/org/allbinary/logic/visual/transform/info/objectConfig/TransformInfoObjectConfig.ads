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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with org.allbinary.logic.io.OutputTypeData_Package; use org.allbinary.logic.io.OutputTypeData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package; use org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with org.allbinary.logic.visual.transform.template.XslData_Package; use org.allbinary.logic.visual.transform.template.XslData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package InputOutputTypeData_Package renames org.allbinary.logic.io.InputOutputTypeData_Package;
   package OutputTypeData_Package renames org.allbinary.logic.io.OutputTypeData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoData_Package renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoDomNode_Package renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfosData_Package renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package XslData_Package renames org.allbinary.logic.visual.transform.template.XslData_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package Attr_Package renames org.w3c.dom.Attr_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package NamedNodeMap_Package renames org.w3c.dom.NamedNodeMap_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type TransformInfoObjectConfig is tagged;
   type TransformInfoObjectConfig_Access is access all TransformInfoObjectConfig'Class;
   type TransformInfoObjectConfig_Access_Array is array (Natural range <>) of TransformInfoObjectConfig_Access;
   type TransformInfoObjectConfig_Access_Array_Access is access all TransformInfoObjectConfig_Access_Array;

   type TransformInfoObjectConfig is new TransformInfoObjectConfigInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      ownerTransformInfoInterface : TransformInfoInterface_Access;
      document : Document_Access;
      outputTypeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return TransformInfoObjectConfig_Access;
   procedure createDocument (This : in out TransformInfoObjectConfig);
   function getTransformInfoInterface (This : in out TransformInfoObjectConfig) return TransformInfoInterface_Access;
   procedure getTransformInfoInterface (This : in out TransformInfoObjectConfig);
   function toXmlDoc (This : in out TransformInfoObjectConfig) return Document_Access;
   procedure toXmlDoc (This : in out TransformInfoObjectConfig);
   procedure setDocument (This : in out TransformInfoObjectConfig; document : Document_Access);
   function containsView (This : in out TransformInfoObjectConfig; transformInfoInterface : TransformInfoInterface_Access) return Boolean;
   procedure containsView (This : in out TransformInfoObjectConfig; transformInfoInterface : TransformInfoInterface_Access);
   function getTemplateAttributes (This : in out TransformInfoObjectConfig) return NamedNodeMap_Access;
   procedure getTemplateAttributes (This : in out TransformInfoObjectConfig);
   function getName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   procedure getName (This : in out TransformInfoObjectConfig);
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
   procedure getTransformDomNodes (This : in out TransformInfoObjectConfig);
   function getTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   procedure getTransforms (This : in out TransformInfoObjectConfig);
   function getGroupTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   procedure getGroupTransforms (This : in out TransformInfoObjectConfig);
   function getParentTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access;
   procedure getParentTransforms (This : in out TransformInfoObjectConfig);
   function getRootNode (This : in out TransformInfoObjectConfig) return Node_Access;
   procedure getRootNode (This : in out TransformInfoObjectConfig);
   procedure setOutputTypeName (This : in out TransformInfoObjectConfig; outputTypeName : Unbounded_String);
   function getOutputTypeName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   procedure getOutputTypeName (This : in out TransformInfoObjectConfig);
   function getInputOutputTypeName (This : in out TransformInfoObjectConfig) return Unbounded_String;
   procedure getInputOutputTypeName (This : in out TransformInfoObjectConfig);
   function getInputOutputTypeFile (This : in out TransformInfoObjectConfig) return Unbounded_String;
   procedure getInputOutputTypeFile (This : in out TransformInfoObjectConfig);
   function getImportUriPath (This : in out TransformInfoObjectConfig) return Unbounded_String;
   procedure getImportUriPath (This : in out TransformInfoObjectConfig);
   function toString (This : in out TransformInfoObjectConfig) return Unbounded_String;
   procedure toString (This : in out TransformInfoObjectConfig);

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;


