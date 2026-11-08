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


with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package; use org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package Attr_Package renames Standard.org.w3c.dom.Attr_Package;
   package NamedNodeMap_Package renames Standard.org.w3c.dom.NamedNodeMap_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype TransformInfoProperties_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access;
   function "=" (Left, Right : TransformInfoProperties_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   subtype TransformInfoProperties_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array;
   function "=" (Left, Right : TransformInfoProperties_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   subtype TransformInfoProperties_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access;
   function "=" (Left, Right : TransformInfoProperties_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   subtype TransformInfoProperties_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   subtype TransformInfoProperties_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   procedure Initialize_Fields (This : in out TransformInfoPropertiesFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TransformInfoPropertiesFactory_Access is
   begin
        return TransformInfoPropertiesFactory_Access (TransformInfoPropertiesFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out TransformInfoPropertiesFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfoPropertiesFactory_Access is
      This : constant TransformInfoPropertiesFactory_Access := new TransformInfoPropertiesFactory;
   begin
      TransformInfoPropertiesFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TransformInfoPropertiesFactory; node_Param : access Node_Package.Node'Class) return TransformInfoProperties_Access is
      node : constant Node_Access := Node_Access (node_Param);
      transformInfoChildNodeList : NodeList_Access;
      transformInfoData : TransformInfoData_Access;
      attributes : NamedNodeMap_Access;
      attrNode : Attr_Access;
      name : Unbounded_String;
      labelNode : Node_Access;
      label : Unbounded_String;
      descriptionNode : Node_Access;
      description : Unbounded_String;
      objectFileNode : Node_Access;
      objectFileName : Unbounded_String;
      objectConfigFileNode : Node_Access;
      objectConfigFileName : Unbounded_String;
      templateFileNode : Node_Access;
      templateFileName : Unbounded_String;
      transformInfoProperties : TransformInfoProperties_Access;
   begin
        transformInfoChildNodeList := node.getChildNodes;
        transformInfoData := TransformInfoData_Package.getInstance;
        attributes := node.getAttributes;
        attrNode := Attr_Access (attributes.getNamedItem (transformInfoData.NAME));
        name := attrNode.getValue;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (CommonLabels_Package.getInstance.NEXT & To_Unbounded_String (" View Name: ") & name, TransformInfoPropertiesFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("toTransformInfoPropertiesHashMap()"));
        end if;
        labelNode := DomSearchHelper_Package.getNodeNoThrow (transformInfoData.LABEL, transformInfoChildNodeList);
        label := DomNodeHelper_Package.getTextNodesValue (labelNode);
        if (label) = (Null_Unbounded_String) then
            label := name;
        end if;
        descriptionNode := DomSearchHelper_Package.getNode (transformInfoData.DESCRIPTION, transformInfoChildNodeList);
        description := DomNodeHelper_Package.getTextNodesValue (descriptionNode);
        objectFileNode := DomSearchHelper_Package.getNode (transformInfoData.OBJECTFILENAME, transformInfoChildNodeList);
        objectFileName := DomNodeHelper_Package.getTextNodeValue (objectFileNode);
        objectConfigFileNode := DomSearchHelper_Package.getNode (transformInfoData.OBJECTCONFIGFILENAME, transformInfoChildNodeList);
        objectConfigFileName := DomNodeHelper_Package.getTextNodeValue (objectConfigFileNode);
        templateFileNode := DomSearchHelper_Package.getNode (transformInfoData.TEMPLATEFILENAME, transformInfoChildNodeList);
        templateFileName := DomNodeHelper_Package.getTextNodeValue (templateFileNode);
        transformInfoProperties := TransformInfoProperties_Package.Create (name, label, description, objectFileName, objectConfigFileName, templateFileName);
        return transformInfoProperties;
   end getInstance;

   procedure getInstance (This : in out TransformInfoPropertiesFactory; node_Param : access Node_Package.Node'Class) is
      Java_Result : constant TransformInfoProperties_Access := TransformInfoPropertiesFactory'Class (This).getInstance (node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TransformInfoPropertiesFactory_Package.Create;

end org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package;


