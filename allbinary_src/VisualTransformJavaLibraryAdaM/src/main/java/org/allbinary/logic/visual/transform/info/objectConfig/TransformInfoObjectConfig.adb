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


package body org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package is

   procedure Initialize_Fields (This : in out TransformInfoObjectConfig'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.outputTypeName := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access) is
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.ownerTransformInfoInterface := transformInfoInterface;
        This.createDocument;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("TransformInfo: "));
            if (This.ownerTransformInfoInterface) /= (null) then
                stringBuffer.append (This.ownerTransformInfoInterface.getName);
            else
                stringBuffer.append (To_Unbounded_String ("No Owner!?#@"));
            end if;
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Constructed with document: "));
            stringBuffer.append (This.toString);
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("Constructor(TransformInfoInterface)"));
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return TransformInfoObjectConfig_Access is
      This : constant TransformInfoObjectConfig_Access := new TransformInfoObjectConfig;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) is
      node : Node_Access;
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.ownerTransformInfoInterface := transformInfoInterface;
        This.document := document;
        node := DomSearchHelper_Package.getNodeNoThrow (OutputTypeData_Package.getInstance.NAME, This.getRootNode.getChildNodes);
        if (node) /= (null) then
            This.setOutputTypeName (DomNodeHelper_Package.getTextNodeValue (node));
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
            stringBuffer.append (This.toString);
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("Constructor(TransformInfoInterface, Document)"));
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return TransformInfoObjectConfig_Access is
      This : constant TransformInfoObjectConfig_Access := new TransformInfoObjectConfig;
   begin
      Initialize (This.all, transformInfoInterface, document);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfoObjectConfig'Class; transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) is
      configNameAttr : Attr_Access;
      objectConfigNode : Node_Access;
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        This.ownerTransformInfoInterface := transformInfoInterface;
        This.createDocument;
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
            stringBuffer.append (This.toString);
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("Constructor(TransformInfoInterface, name, type)"));
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access; name : Unbounded_String; type_Id : Unbounded_String) return TransformInfoObjectConfig_Access is
      This : constant TransformInfoObjectConfig_Access := new TransformInfoObjectConfig;
   begin
      Initialize (This.all, transformInfoInterface, name, type_Id);
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

   procedure setDocument (This : in out TransformInfoObjectConfig; document : Document_Access) is
   begin
        This.document := document;
   end setDocument;

   function containsView (This : in out TransformInfoObjectConfig; transformInfoInterface : TransformInfoInterface_Access) return Boolean is
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
            if (transformInfoInterface.getName.compareTo (attrNode.getValue)) = (0) then
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
        attrNode := Attr_Access (This.getTemplateAttributes.getNamedItem (TransformInfoObjectConfigData_Package.getInstance.NAME));
        return attrNode.getValue;
   end getName;

   --  throws Exception
   procedure setName (This : in out TransformInfoObjectConfig; name : Unbounded_String) is
      attrNode : Attr_Access;
   begin
        attrNode := Attr_Access (This.getTemplateAttributes.getNamedItem (TransformInfoObjectConfigData_Package.getInstance.NAME));
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
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("getNodeVector(nodename)"));
            end if;
            return viewNodeVector;
        end if;
        return BasicArrayListD_Package.Create;
   end getNodeVector;

   --  throws Exception
   function getTransformDomNodes (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) return BasicArrayList_Access is
      viewVector : BasicArrayList_Access;
      viewNodeVector : BasicArrayList_Access;
      size : Integer;
      viewNode : Node_Access;
      index : Integer;
   begin
        viewVector := BasicArrayListD_Package.Create;
        viewNodeVector := This.getNodeVector (nodeName);
        size := viewNodeVector.size;
        for index in 0 .. (size) - 1 loop
            viewNode := Node_Access (viewNodeVector.get (index));
            viewVector.add (TransformInfoDomNode_Package.Create (viewNode));
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
        viewVector := BasicArrayListD_Package.Create;
        viewNodeVector := This.getNodeVector (nodeName);
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
            This.logUtil.putF (To_Unbounded_String ("Started: ") & group, This'Unchecked_Access, To_Unbounded_String ("getTransformsGroup()"));
        end if;
        viewVector := BasicArrayListD_Package.Create;
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
                if (value.compareTo (group)) = (0) then
                    componentsNode := node;
                    exit;
                end if;
            end loop;
            viewNodeVector := DomSearchHelper_Package.getAllNodes (TransformInfoData_Package.getInstance.NAME, componentsNode.getChildNodes);
            numberOfViews := viewNodeVector.size;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Number Of Nodes: ") & Java_Image (numberOfViews), This'Unchecked_Access, To_Unbounded_String ("getTransformsGroup()"));
            end if;
            size := viewNodeVector.size;
            for index in 0 .. (size) - 1 loop
                viewNode := Node_Access (viewNodeVector.get (index));
                viewVector.add (TransformInfoDomNode_Package.Create (viewNode));
            end loop;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                if (componentsNodeList) = (null) then
                    This.logUtil.putF (To_Unbounded_String ("Number Of Nodes: NULL"), This'Unchecked_Access, To_Unbounded_String ("getTransformsGroup()"));
                else
                    This.logUtil.putF (To_Unbounded_String ("Number Of Nodes: 0"), This'Unchecked_Access, To_Unbounded_String ("getTransformsGroup()"));
                end if;
            end if;
        end if;
        return viewVector;
   end getTransformsGroup;

   --  throws Exception
   function getTransformDomNodes (This : in out TransformInfoObjectConfig) return BasicArrayList_Access is
   begin
        return This.getTransformDomNodes (TransformInfosData_Package.getInstance.GROUP);
   end getTransformDomNodes;

   --  throws Exception
   function getTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access is
   begin
        return This.getTransforms (TransformInfosData_Package.getInstance.NAME);
   end getTransforms;

   --  throws Exception
   function getGroupTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access is
   begin
        return This.getTransforms (TransformInfosData_Package.getInstance.GROUP);
   end getGroupTransforms;

   --  throws Exception
   function getParentTransforms (This : in out TransformInfoObjectConfig) return BasicArrayList_Access is
   begin
        return This.getTransforms (TransformInfoData_Package.getInstance.PARENT);
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
        node := DomSearchHelper_Package.getNode (InputOutputTypeData_Package.getInstance.NAME, This.getRootNode.getChildNodes);
        return DomNodeHelper_Package.getTextNodeValue (node);
   end getInputOutputTypeName;

   --  throws Exception
   function getInputOutputTypeFile (This : in out TransformInfoObjectConfig) return Unbounded_String is
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNode (InputOutputTypeData_Package.getInstance.FILE, This.getRootNode.getChildNodes);
        return DomNodeHelper_Package.getTextNodeValue (node);
   end getInputOutputTypeFile;

   --  throws Exception
   function getImportUriPath (This : in out TransformInfoObjectConfig) return Unbounded_String is
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNode (XslData_Package.getInstance.ROOT_IMPORT_URI, This.getRootNode.getChildNodes);
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
                This.logUtil.putF (To_Unbounded_String ("DOM Document error"), This'Unchecked_Access, This.commonStrings.TOSTRING);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end toString;

   procedure getTransformInfoInterface (This : in out TransformInfoObjectConfig) is
      Java_Result : constant TransformInfoInterface_Access := TransformInfoObjectConfig'Class (This).getTransformInfoInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoInterface;

   procedure toXmlDoc (This : in out TransformInfoObjectConfig) is
      Java_Result : constant Document_Access := TransformInfoObjectConfig'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure containsView (This : in out TransformInfoObjectConfig; transformInfoInterface : TransformInfoInterface_Access) is
      Java_Result : constant Boolean := TransformInfoObjectConfig'Class (This).containsView (transformInfoInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsView;

   procedure getTemplateAttributes (This : in out TransformInfoObjectConfig) is
      Java_Result : constant NamedNodeMap_Access := TransformInfoObjectConfig'Class (This).getTemplateAttributes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTemplateAttributes;

   procedure getName (This : in out TransformInfoObjectConfig) is
      Java_Result : constant Unbounded_String := TransformInfoObjectConfig'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getNodeVector (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getNodeVector (nodeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNodeVector;

   procedure getTransformDomNodes (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getTransformDomNodes (nodeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformDomNodes;

   procedure getTransforms (This : in out TransformInfoObjectConfig; nodeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getTransforms (nodeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransforms;

   procedure getTransformsGroup (This : in out TransformInfoObjectConfig; group : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getTransformsGroup (group);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformsGroup;

   procedure getTransformDomNodes (This : in out TransformInfoObjectConfig) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getTransformDomNodes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformDomNodes;

   procedure getTransforms (This : in out TransformInfoObjectConfig) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getTransforms;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransforms;

   procedure getGroupTransforms (This : in out TransformInfoObjectConfig) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getGroupTransforms;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupTransforms;

   procedure getParentTransforms (This : in out TransformInfoObjectConfig) is
      Java_Result : constant BasicArrayList_Access := TransformInfoObjectConfig'Class (This).getParentTransforms;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getParentTransforms;

   procedure getRootNode (This : in out TransformInfoObjectConfig) is
      Java_Result : constant Node_Access := TransformInfoObjectConfig'Class (This).getRootNode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootNode;

   procedure getOutputTypeName (This : in out TransformInfoObjectConfig) is
      Java_Result : constant Unbounded_String := TransformInfoObjectConfig'Class (This).getOutputTypeName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOutputTypeName;

   procedure getInputOutputTypeName (This : in out TransformInfoObjectConfig) is
      Java_Result : constant Unbounded_String := TransformInfoObjectConfig'Class (This).getInputOutputTypeName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputOutputTypeName;

   procedure getInputOutputTypeFile (This : in out TransformInfoObjectConfig) is
      Java_Result : constant Unbounded_String := TransformInfoObjectConfig'Class (This).getInputOutputTypeFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputOutputTypeFile;

   procedure getImportUriPath (This : in out TransformInfoObjectConfig) is
      Java_Result : constant Unbounded_String := TransformInfoObjectConfig'Class (This).getImportUriPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImportUriPath;

   procedure toString (This : in out TransformInfoObjectConfig) is
      Java_Result : constant Unbounded_String := TransformInfoObjectConfig'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;


