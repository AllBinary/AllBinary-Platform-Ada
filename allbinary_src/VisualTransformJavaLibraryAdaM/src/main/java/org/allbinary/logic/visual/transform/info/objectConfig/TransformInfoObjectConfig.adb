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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with org.allbinary.logic.io.OutputTypeData_Package; use org.allbinary.logic.io.OutputTypeData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package; use org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with org.allbinary.logic.visual.transform.template.XslData_Package; use org.allbinary.logic.visual.transform.template.XslData_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;

package body org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package InputOutputTypeData_Package renames Standard.org.allbinary.logic.io.InputOutputTypeData_Package;
   package OutputTypeData_Package renames Standard.org.allbinary.logic.io.OutputTypeData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoDomNode_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
   package TransformInfosData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package XslData_Package renames Standard.org.allbinary.logic.visual.transform.template.XslData_Package;
   package Attr_Package renames Standard.org.w3c.dom.Attr_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out TransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.outputTypeName := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.ownerTransformInfoInterface := transformInfoInterface;
        TransformInfoObjectConfig'Class (This).createDocument;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("TransformInfo: "));
            if (This.ownerTransformInfoInterface) /= (null) then
                stringBuffer.append (This.ownerTransformInfoInterface.getName);
            else
                stringBuffer.append (To_Unbounded_String ("No Owner!?#@"));
            end if;
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Constructed with document: "));
            stringBuffer.append (TransformInfoObjectConfig'Class (This).toString);
            This.logUtil.putF (stringBuffer.toString, TransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(TransformInfoInterface)"));
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfig_Access is
      This : constant TransformInfoObjectConfig_Access := new TransformInfoObjectConfig;
   begin
      TransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.ownerTransformInfoInterface := transformInfoInterface;
        This.document := document;
        node := DomSearchHelper_Package.getNodeNoThrow (OutputTypeData_Package.getInstance.NAME, TransformInfoObjectConfig'Class (This).getRootNode.getChildNodes);
        if (node) /= (null) then
            TransformInfoObjectConfig'Class (This).setOutputTypeName (DomNodeHelper_Package.getTextNodeValue (node));
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("TransformInfo: "));
            if (This.ownerTransformInfoInterface) /= (null) then
                stringBuffer.append (This.ownerTransformInfoInterface.getName);
            else
                stringBuffer.append (To_Unbounded_String ("No Owner!?#@"));
            end if;
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Constructed with document: "));
            stringBuffer.append (TransformInfoObjectConfig'Class (This).toString);
            This.logUtil.putF (stringBuffer.toString, TransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(TransformInfoInterface, Document)"));
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return TransformInfoObjectConfig_Access is
      This : constant TransformInfoObjectConfig_Access := new TransformInfoObjectConfig;
   begin
      TransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      configNameAttr : Attr_Access;
      objectConfigNode : Node_Access;
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.ownerTransformInfoInterface := transformInfoInterface;
        TransformInfoObjectConfig'Class (This).createDocument;
        configNameAttr := This.document.createAttribute (TransformInfoObjectConfigData_Package.getInstance.NAME);
        configNameAttr.setValue (name);
        objectConfigNode := This.document.getElementsByTagName (TransformInfoObjectConfigData_Package.getInstance.NAME).item (0);
        objectConfigNode.appendChild (configNameAttr);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("TransformInfo: "));
            if (This.ownerTransformInfoInterface) /= (null) then
                stringBuffer.append (This.ownerTransformInfoInterface.getName);
            else
                stringBuffer.append (To_Unbounded_String ("No Owner!?#@"));
            end if;
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Constructed with document: "));
            stringBuffer.append (TransformInfoObjectConfig'Class (This).toString);
            This.logUtil.putF (stringBuffer.toString, TransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("Constructor(TransformInfoInterface, name, type)"));
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return TransformInfoObjectConfig_Access is
      This : constant TransformInfoObjectConfig_Access := new TransformInfoObjectConfig;
   begin
      TransformInfoObjectConfig_Package.Initialize (This.all, transformInfoInterface_Param, name, type_Id);
      return This;
   end Create;

   procedure createDocument (This : in out TransformInfoObjectConfig) is
      objectConfigNode : Node_Access;
   begin
        This.document := DomDocumentHelper_Package.create;
        objectConfigNode := This.document.createElement (TransformInfoObjectConfigData_Package.getInstance.NAME);
        This.document.appendChild (objectConfigNode);
   end createDocument;

   function getTransformInfoInterface (This : in out TransformInfoObjectConfig) return TransformInfoInterface_Access is
   begin
        return This.ownerTransformInfoInterface;
   end getTransformInfoInterface;

   --  throws Exception
   function toXmlDoc (This : in out TransformInfoObjectConfig) return Document_Access is
   begin
        return This.document;
   end toXmlDoc;

   procedure setDocument (This : in out TransformInfoObjectConfig; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        This.document := document;
   end setDocument;

   function containsView (This : in out TransformInfoObjectConfig; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Boolean is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      objectConfigNode : Node_Access;
      viewNodeList : NodeList_Access;
      numberOfViews : Integer;
      viewNode : Node_Access;
      viewAttributes : NamedNodeMap_Access;
      attrNode : Attr_Access;
      index : Integer;
   begin
        objectConfigNode := This.document.getElementsByTagName (TransformInfoObjectConfigData_Package.getInstance.NAME).item (0);
        viewNodeList := objectConfigNode.getChildNodes;
        numberOfViews := viewNodeList.getLength;
        for index in 0 .. (numberOfViews) - 1 loop
            viewNode := viewNodeList.item (index);
            viewAttributes := viewNode.getAttributes;
            attrNode := Attr_Access (viewAttributes.getNamedItem (TransformInfoData_Package.getInstance.NAME));
            if (Java_Compare_To (transformInfoInterface.getName, attrNode.getValue)) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end containsView;

   --  throws Exception
   function getTemplateAttributes (This : in out TransformInfoObjectConfig) return NamedNodeMap_Access is
      componentNode : Node_Access;
   begin
        componentNode := This.document.getElementsByTagName (TransformInfoObjectConfigData_Package.getInstance.NAME).item (0);
        return componentNode.getAttributes;
   end getTemplateAttributes;

   --  throws Exception
   function getName (This : in out TransformInfoObjectConfig) return Unbounded_String is
      attrNode : Attr_Access;
   begin
        attrNode := Attr_Access (TransformInfoObjectConfig'Class (This).getTemplateAttributes.getNamedItem (TransformInfoObjectConfigData_Package.getInstance.NAME));
        return attrNode.getValue;
   end getName;

   --  throws Exception
   procedure setName (This : in out TransformInfoObjectConfig; name : Unbounded_String) is
      attrNode : Attr_Access;
   begin
        attrNode := Attr_Access (TransformInfoObjectConfig'Class (This).getTemplateAttributes.getNamedItem (TransformInfoObjectConfigData_Package.getInstance.NAME));
        attrNode.setValue (name);
   end setName;

   --  throws Exception
   function getNodeVector (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access is
      componentsNodeList : NodeList_Access;
      viewNodeVector : BasicArrayList_Access;
      numberOfViews : Integer;
      stringBuffer : StringMaker_Access;
   begin
        componentsNodeList := This.document.getElementsByTagName (nodeName);
        if ((componentsNodeList) /= (null)) and then ((componentsNodeList.getLength) > (0)) then
            viewNodeVector := DomSearchHelper_Package.getAllNodes (TransformInfoData_Package.getInstance.NAME, componentsNodeList.item (0).getChildNodes);
            numberOfViews := viewNodeVector.size;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Number Of "));
                stringBuffer.append (nodeName);
                stringBuffer.append (To_Unbounded_String (" Nodes: "));
                stringBuffer.appendint (numberOfViews);
                This.logUtil.putF (stringBuffer.toString, TransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("getNodeVector(nodename)"));
            end if;
            return viewNodeVector;
        end if;
        return BasicArrayList_Access (BasicArrayListD_Package.Create);
   end getNodeVector;

   --  throws Exception
   function getTransformDomNodes (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access is
      viewVector : BasicArrayList_Access;
      viewNodeVector : BasicArrayList_Access;
      size : Integer;
      viewNode : Node_Access;
      index : Integer;
   begin
        viewVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        viewNodeVector := TransformInfoObjectConfig'Class (This).getNodeVector (nodeName);
        size := viewNodeVector.size;
        for index in 0 .. (size) - 1 loop
            viewNode := Node_Access (viewNodeVector.get (index));
            viewVector.add (Java_Object_Access (TransformInfoDomNode_Package.Create (viewNode)));
        end loop;
        return viewVector;
   end getTransformDomNodes;

   --  throws Exception
   function getTransforms (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access is
      viewVector : BasicArrayList_Access;
      viewNodeVector : BasicArrayList_Access;
      size : Integer;
      viewNode : Node_Access;
      index : Integer;
   begin
        viewVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        viewNodeVector := TransformInfoObjectConfig'Class (This).getNodeVector (nodeName);
        size := viewNodeVector.size;
        for index in 0 .. (size) - 1 loop
            viewNode := Node_Access (viewNodeVector.get (index));
            viewVector.add (TransformInfoDomNode_Package.Create (viewNode).getTransformInfoInterface);
        end loop;
        return viewVector;
   end getTransforms;

   --  throws Exception
   function getTransformsGroup (This : in out TransformInfoObjectConfig; group : Unbounded_String) return BasicArrayList_Access is
      viewVector : BasicArrayList_Access;
      GROUP : Unbounded_String;
      componentsNodeList : NodeList_Access;
      componentsNode : Node_Access;
      length : Integer;
      node : Node_Access;
      attributes : NamedNodeMap_Access;
      attrNode : Attr_Access;
      value : Unbounded_String;
      index : Integer;
      viewNodeVector : BasicArrayList_Access;
      numberOfViews : Integer;
      size : Integer;
      viewNode : Node_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Started: ") & group, TransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransformsGroup()"));
        end if;
        viewVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        GROUP := TransformInfosData_Package.getInstance.GROUP;
        componentsNodeList := This.document.getElementsByTagName (GROUP);
        if ((componentsNodeList) /= (null)) and then ((componentsNodeList.getLength) > (0)) then
            componentsNode := componentsNodeList.item (0);
            length := componentsNodeList.getLength;
            for index in 0 .. (length) - 1 loop
                node := componentsNodeList.item (index);
                attributes := node.getAttributes;
                attrNode := Attr_Access (attributes.getNamedItem (GROUP));
                value := attrNode.getValue;
                if (Java_Compare_To (value, group)) = (0) then
                    componentsNode := node;
                    exit;
                end if;
            end loop;
            viewNodeVector := DomSearchHelper_Package.getAllNodes (TransformInfoData_Package.getInstance.NAME, componentsNode.getChildNodes);
            numberOfViews := viewNodeVector.size;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Number Of Nodes: ") & Java_Image (numberOfViews), TransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransformsGroup()"));
            end if;
            size := viewNodeVector.size;
            for index in 0 .. (size) - 1 loop
                viewNode := Node_Access (viewNodeVector.get (index));
                viewVector.add (Java_Object_Access (TransformInfoDomNode_Package.Create (viewNode)));
            end loop;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                if (componentsNodeList) = (null) then
                    This.logUtil.putF (To_Unbounded_String ("Number Of Nodes: NULL"), TransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransformsGroup()"));
                else
                    This.logUtil.putF (To_Unbounded_String ("Number Of Nodes: 0"), TransformInfoObjectConfig_Access'(This'Unchecked_Access), To_Unbounded_String ("getTransformsGroup()"));
                end if;
            end if;
        end if;
        return viewVector;
   end getTransformsGroup;

   --  throws Exception
   function getTransformDomNodes (This : in out TransformInfoObjectConfig) return BasicArrayList_Access is
   begin
        return TransformInfoObjectConfig'Class (This).getTransformDomNodes (TransformInfosData_Package.getInstance.GROUP);
   end getTransformDomNodes;

   --  throws Exception
   function getTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access is
   begin
        return TransformInfoObjectConfig'Class (This).getTransforms (TransformInfosData_Package.getInstance.NAME);
   end getTransforms;

   --  throws Exception
   function getGroupTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access is
   begin
        return TransformInfoObjectConfig'Class (This).getTransforms (TransformInfosData_Package.getInstance.GROUP);
   end getGroupTransforms;

   --  throws Exception
   function getParentTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access is
   begin
        return TransformInfoObjectConfig'Class (This).getTransforms (TransformInfoData_Package.getInstance.PARENT);
   end getParentTransforms;

   function getRootNode (This : in out TransformInfoObjectConfig) return Node_Access is
   begin
        return This.document.getElementsByTagName (TransformInfoObjectConfigData_Package.getInstance.NAME).item (0);
   end getRootNode;

   procedure setOutputTypeName (This : in out TransformInfoObjectConfig; outputTypeName : Unbounded_String) is
   begin
        This.outputTypeName := outputTypeName;
   end setOutputTypeName;

   --  throws Exception
   function getOutputTypeName (This : in out TransformInfoObjectConfig) return Unbounded_String is
   begin
        return This.outputTypeName;
   end getOutputTypeName;

   --  throws Exception
   function getInputOutputTypeName (This : in out TransformInfoObjectConfig) return Unbounded_String is
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNode (InputOutputTypeData_Package.getInstance.NAME, TransformInfoObjectConfig'Class (This).getRootNode.getChildNodes);
        return DomNodeHelper_Package.getTextNodeValue (node);
   end getInputOutputTypeName;

   --  throws Exception
   function getInputOutputTypeFile (This : in out TransformInfoObjectConfig) return Unbounded_String is
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNode (InputOutputTypeData_Package.getInstance.FILE, TransformInfoObjectConfig'Class (This).getRootNode.getChildNodes);
        return DomNodeHelper_Package.getTextNodeValue (node);
   end getInputOutputTypeFile;

   --  throws Exception
   function getImportUriPath (This : in out TransformInfoObjectConfig) return Unbounded_String is
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNode (XslData_Package.getInstance.ROOT_IMPORT_URI, TransformInfoObjectConfig'Class (This).getRootNode.getChildNodes);
        return DomNodeHelper_Package.getTextNodeValue (node);
   end getImportUriPath;

   function toString (This : in out TransformInfoObjectConfig) return Unbounded_String is
   begin
        begin
            if (This.document) /= (null) then
                return XmlDocumentHelper_Package.toString (This.document);
            else
                return Null_Unbounded_String;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.putF (To_Unbounded_String ("DOM Document error"), TransformInfoObjectConfig_Access'(This'Unchecked_Access), This.commonStrings.TOSTRING);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end toString;

   procedure containsView (This : in out TransformInfoObjectConfig; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant Boolean := TransformInfoObjectConfig'Class (This).containsView (transformInfoInterface_Param => transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsView;

   procedure getNodeVector (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getNodeVector (nodeName => nodeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNodeVector;

   procedure getTransformDomNodes (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getTransformDomNodes (nodeName => nodeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformDomNodes;

   procedure getTransforms (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getTransforms (nodeName => nodeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransforms;

   procedure getTransformsGroup (This : in out TransformInfoObjectConfig; group : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getTransformsGroup (group => group);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformsGroup;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;


