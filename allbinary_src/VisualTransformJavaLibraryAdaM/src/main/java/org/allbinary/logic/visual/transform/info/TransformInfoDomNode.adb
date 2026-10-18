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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Attr_Package renames Standard.org.w3c.dom.Attr_Package;
   package NamedNodeMap_Package renames Standard.org.w3c.dom.NamedNodeMap_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out TransformInfoDomNode'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoDomNode'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      transformInfoData : TransformInfoData_Access;
      attributes : NamedNodeMap_Access;
      attrNode : Attr_Access;
      name : Unbounded_String;
      nodeList : NodeList_Access;
      stringBuffer : StringMaker_Access;
      objectFileNameNode : Node_Access;
      objectFileName : Unbounded_String;
      objectConfigFileNameNode : Node_Access;
      objectConfigFileName : Unbounded_String;
      templateFileNameNode : Node_Access;
      templateFileName : Unbounded_String;
      dataFileNameNode : Node_Access;
      dataFileName : Unbounded_String;
      templateAttrNode : Attr_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Constructing TransformInfo From TransformInfoDomNode: ") & Java_Image (node.getNodeName), TransformInfoDomNode_Access'(This'Unchecked_Access), To_Unbounded_String ("TransformInfoDomNode(Node node)"));
        end if;
        transformInfoData := TransformInfoData_Package.getInstance;
        attributes := node.getAttributes;
        attrNode := Attr_Access (attributes.getNamedItem (transformInfoData.NAME));
        name := attrNode.getValue;
        nodeList := node.getChildNodes;
        if (nodeList.getLength) > (1) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Constructing Complete TransformInfo Node For: "));
                stringBuffer.append (name);
                stringBuffer.append (To_Unbounded_String (" with "));
                stringBuffer.appendint (Integer (nodeList.getLength));
                stringBuffer.append (To_Unbounded_String (" children"));
                This.logUtil.putF (stringBuffer.toString, TransformInfoDomNode_Access'(This'Unchecked_Access), To_Unbounded_String ("TransformInfoObjectConfigComponent(Node node)"));
            end if;
            objectFileNameNode := DomSearchHelper_Package.getNode (transformInfoData.OBJECTFILENAME, nodeList);
            objectFileName := DomNodeHelper_Package.getTextNodeValue (objectFileNameNode);
            objectConfigFileNameNode := DomSearchHelper_Package.getNode (transformInfoData.OBJECTCONFIGFILENAME, nodeList);
            objectConfigFileName := DomNodeHelper_Package.getTextNodeValue (objectConfigFileNameNode);
            templateFileNameNode := DomSearchHelper_Package.getNode (transformInfoData.TEMPLATEFILENAME, nodeList);
            templateFileName := DomNodeHelper_Package.getTextNodeValue (templateFileNameNode);
            dataFileNameNode := DomSearchHelper_Package.getNode (transformInfoData.DATAFILENAME, nodeList);
            dataFileName := DomNodeHelper_Package.getTextNodeValue (dataFileNameNode);
            This.transformInfoInterface := TransformInfoInterface_Access (TransformInfo_Package.Create (name, objectFileName, objectConfigFileName, templateFileName, dataFileName));
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Constructing Partial TransformInfo Node For: "));
                stringBuffer.append (name);
                stringBuffer.append (To_Unbounded_String (" with "));
                stringBuffer.appendint (Integer (nodeList.getLength));
                stringBuffer.append (To_Unbounded_String (" children"));
                This.logUtil.putF (stringBuffer.toString, TransformInfoDomNode_Access'(This'Unchecked_Access), To_Unbounded_String ("TransformInfoObjectConfigComponent(Node node)"));
            end if;
            This.transformInfoInterface := TransformInfoInterface_Access (TransformInfo_Package.Create (name));
        end if;
        templateAttrNode := Attr_Access (attributes.getNamedItem (transformInfoData.MAPPED));
        if (templateAttrNode) /= (null) then
            This.mappedName := templateAttrNode.getValue;
        else
            This.mappedName := TransformInfoDomNode'Class (This).getTransformInfoInterface.getName;
        end if;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return TransformInfoDomNode_Access is
      This : constant TransformInfoDomNode_Access := new TransformInfoDomNode;
   begin
      TransformInfoDomNode_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoDomNode'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.mappedName := transformInfoInterface.getName;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoDomNode_Access is
      This : constant TransformInfoDomNode_Access := new TransformInfoDomNode;
   begin
      TransformInfoDomNode_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoDomNode'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; mappedName : Unbounded_String) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
        This.mappedName := mappedName;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; mappedName : Unbounded_String) return TransformInfoDomNode_Access is
      This : constant TransformInfoDomNode_Access := new TransformInfoDomNode;
   begin
      TransformInfoDomNode_Package.Initialize (This.all, transformInfoInterface_Param, mappedName);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoDomNode'Class; name : Unbounded_String; mappedName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := TransformInfoInterface_Access (TransformInfo_Package.Create (name));
        This.mappedName := mappedName;
   end Initialize;

   function Create (name : Unbounded_String; mappedName : Unbounded_String) return TransformInfoDomNode_Access is
      This : constant TransformInfoDomNode_Access := new TransformInfoDomNode;
   begin
      TransformInfoDomNode_Package.Initialize (This.all, name, mappedName);
      return This;
   end Create;

   function getTransformInfoInterface (This : in out TransformInfoDomNode) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   function getMappedName (This : in out TransformInfoDomNode) return Unbounded_String is
   begin
        return This.mappedName;
   end getMappedName;

   function getReplaceKey (This : in out TransformInfoDomNode) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      key : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("<transform:component name="""));
        stringBuffer.append (To_Unbounded_String ("body"));
        stringBuffer.append (To_Unbounded_String ("""/>"));
        key := stringBuffer.toString;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Component Key: ") & key, TransformInfoDomNode_Access'(This'Unchecked_Access), To_Unbounded_String ("getReplaceKey()"));
        end if;
        return key;
   end getReplaceKey;

end org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;


