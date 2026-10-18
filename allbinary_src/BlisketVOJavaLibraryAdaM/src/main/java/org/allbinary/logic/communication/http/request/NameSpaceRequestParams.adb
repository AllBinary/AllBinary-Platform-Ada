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


package body org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package is

   procedure Initialize_Fields (This : in out NameSpaceRequestParams'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out NameSpaceRequestParams'Class) is
   begin
        RequestParams_Package.Initialize (This);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("Constructing empty"), NameSpaceRequestParams_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return NameSpaceRequestParams_Access is
      This : constant NameSpaceRequestParams_Access := new NameSpaceRequestParams;
   begin
      NameSpaceRequestParams_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out NameSpaceRequestParams'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      httpServletRequest : constant HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
   begin
        RequestParams_Package.Initialize (This, httpServletRequest);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("Constructing from HttpServletRequest"), NameSpaceRequestParams_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return NameSpaceRequestParams_Access is
      This : constant NameSpaceRequestParams_Access := new NameSpaceRequestParams;
   begin
      NameSpaceRequestParams_Package.Initialize (This.all, httpServletRequest_Param);
      return This;
   end Create;

   procedure Initialize (This : in out NameSpaceRequestParams'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        RequestParams_Package.Initialize (This, pageContext);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("Constructing from PageContext"), NameSpaceRequestParams_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (pageContext_Param : access PageContext_Package.PageContext'Class) return NameSpaceRequestParams_Access is
      This : constant NameSpaceRequestParams_Access := new NameSpaceRequestParams;
   begin
      NameSpaceRequestParams_Package.Initialize (This.all, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   function createPackageNode (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; packageName : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      packagePropertiesHashMap : constant HashMap_Access := HashMap_Access (packagePropertiesHashMap_Param);
      node : Node_Access;
      propertyKeySet : Set_Access;
      propertyKeySetArray : Java_Object_Access_Array_Access;
      size : Integer;
      propertyName : Unbounded_String;
      propertyValue : Unbounded_String;
      propertyNode : Node_Access;
      index : Integer;
   begin
        node := document.createElement (packageName);
        propertyKeySet := packagePropertiesHashMap.keySet;
        propertyKeySetArray := propertyKeySet.toArray;
        size := propertyKeySetArray'Length;
        for index in 0 .. (size) - 1 loop
            propertyName := Java_Unbox (propertyKeySetArray (index));
            propertyValue := Java_Unbox (packagePropertiesHashMap.get (Java_Box (propertyName)));
            propertyNode := ModDomHelper_Package.createTextNode (document, propertyName, propertyValue);
            node.appendChild (propertyNode);
        end loop;
        return node;
   end createPackageNode;

   --  throws Exception
   function createPackageMultiNode (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; nameSpaceRequestParam_Param : access NameSpaceRequestParam_Package.NameSpaceRequestParam'Class; packageName : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      nameSpaceRequestParam : constant NameSpaceRequestParam_Access := NameSpaceRequestParam_Access (nameSpaceRequestParam_Param);
      packagePropertiesHashMap : constant HashMap_Access := HashMap_Access (packagePropertiesHashMap_Param);
      beginIndex : Integer;
      indexValue : Unbounded_String;
      multiElementPackage : Unbounded_String;
      selectedValue : Unbounded_String;
      propertyValue : Unbounded_String;
      nextNode : Node_Access;
      indexNode : Node_Access;
   begin
        beginIndex := (Index (packageName, Java_Image ('[')) - 1);
        indexValue := Unbounded_Slice (packageName, ((beginIndex) + (1)) + 1, (Length (packageName)) - (1));
        multiElementPackage := Unbounded_Slice (packageName, (0) + 1, beginIndex);
        selectedValue := nameSpaceRequestParam.getValue;
        propertyValue := Java_Unbox (packagePropertiesHashMap.get (DomData_Package.VALUE));
        if (Java_Compare_To (propertyValue, NameSpaceRequestParamData_Package.VALUE)) /= (0) then
            selectedValue := propertyValue;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Appending Multinode Element: ") & multiElementPackage & To_Unbounded_String ("[") & indexValue & To_Unbounded_String ("] ") & selectedValue, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("createPackageMultiNode"));
        end if;
        nextNode := ModDomHelper_Package.createNameValueNodes (document, multiElementPackage, selectedValue);
        indexNode := ModDomHelper_Package.createTextNode (document, DomData_Package.INDEX, indexValue);
        nextNode.appendChild (indexNode);
        return nextNode;
   end createPackageMultiNode;

   --  throws Exception
   function getRootNode (This : in out NameSpaceRequestParams; rootElementPackage : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; document_Param : access Document_Package.Document'Class) return Node_Access is
      packagePropertiesHashMap : constant HashMap_Access := HashMap_Access (packagePropertiesHashMap_Param);
      document : constant Document_Access := Document_Access (document_Param);
      rootNode : Node_Access;
      node : Node_Access;
   begin
        rootNode := DomSearchHelper_Package.getNodeNoThrow (rootElementPackage, document.getChildNodes);
        if (rootNode) = (null) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Appending Document Root: ") & To_Unbounded_String ("" & ASCII.LF & "ElementName: ") & rootElementPackage & To_Unbounded_String ("" & ASCII.LF & "Properties: ") & packagePropertiesHashMap.toString, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("getRootNode"));
            end if;
            node := NameSpaceRequestParams'Class (This).createPackageNode (document, rootElementPackage, packagePropertiesHashMap);
            document.appendChild (node);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Appended Document Created: ") & XmlDocumentHelper_Package.toString (document), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("getRootNode"));
            end if;
            return node;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Using Existing Root Node"), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("getRootNode"));
            end if;
            return rootNode;
        end if;
   end getRootNode;

   --  throws Exception
   function addNewProperties (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : constant Node_Access := Node_Access (node_Param);
      nextPackagePropertiesHashMap : constant HashMap_Access := HashMap_Access (nextPackagePropertiesHashMap_Param);
      propertyNameSet : Set_Access;
      propertyNameSetArray : Java_Object_Access_Array_Access;
      size : Integer;
      nextPropertyName : Unbounded_String;
      propertyValue : Unbounded_String;
      valueNode : Node_Access;
      newPropertyNode : Node_Access;
      existingElementNodeTextNodeValue : Unbounded_String;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("" & ASCII.LF & "Adding Any New Properties: ")).append (nextPackagePropertiesHashMap.toString).append (To_Unbounded_String ("" & ASCII.LF & "to node: ")).append (node.getNodeName).toString, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addNewProperties"));
        end if;
        propertyNameSet := nextPackagePropertiesHashMap.keySet;
        propertyNameSetArray := propertyNameSet.toArray;
        size := propertyNameSetArray'Length;
        for index in 0 .. (size) - 1 loop
            nextPropertyName := Java_Unbox (propertyNameSetArray (index));
            propertyValue := StringUtil_Package.getInstance.getNonNull (Java_Unbox (nextPackagePropertiesHashMap.get (Java_Box (nextPropertyName))));
            valueNode := DomSearchHelper_Package.getNodeNoThrow (nextPropertyName, node.getChildNodes);
            if (valueNode) /= (null) then
                existingElementNodeTextNodeValue := DomNodeHelper_Package.getTextNodeValue (valueNode);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "If property: """) & nextPropertyName & To_Unbounded_String (" is the same as:" & ASCII.LF & "") & To_Unbounded_String ("Node: ") & Java_Image (node.getNodeName) & To_Unbounded_String (" then: ") & propertyValue & To_Unbounded_String ("==") & existingElementNodeTextNodeValue, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addNewProperties"));
                end if;
                if (Java_Compare_To (propertyValue, existingElementNodeTextNodeValue)) /= (0) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                        This.logUtil.putF (To_Unbounded_String ("At least one Property from NameSpaceRequest Package was different from Node"), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addNewProperties"));
                    end if;
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Property Modifications Should Not Occur")));
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("Adding a new Property: ") & nextPropertyName & To_Unbounded_String ("=") & propertyValue, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addNewProperties"));
                end if;
                newPropertyNode := ModDomHelper_Package.createTextNode (document, nextPropertyName, propertyValue);
                node.appendChild (newPropertyNode);
            end if;
        end loop;
        return node;
   end addNewProperties;

   --  throws Exception
   function isElementValueTextNodeEqual (This : in out NameSpaceRequestParams; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; node_Param : access Node_Package.Node'Class) return Boolean is
      nextPackagePropertiesHashMap : constant HashMap_Access := HashMap_Access (nextPackagePropertiesHashMap_Param);
      node : constant Node_Access := Node_Access (node_Param);
      propertyValue : Unbounded_String;
      valueNode : Node_Access;
      existingElementNodeTextNodeValue : Unbounded_String;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Comparing the value property in: ") & nextPackagePropertiesHashMap.toString & To_Unbounded_String ("" & ASCII.LF & "to node child leaves of node: ") & Java_Image (node.getNodeName), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("isElementValueTextNodeEqual"));
        end if;
        propertyValue := Java_Unbox (nextPackagePropertiesHashMap.get (DomData_Package.VALUE));
        valueNode := DomSearchHelper_Package.getNodeNoThrow (DomData_Package.VALUE, node.getChildNodes);
        if (valueNode) /= (null) then
            existingElementNodeTextNodeValue := DomNodeHelper_Package.getTextNodeValue (valueNode);
            if (Java_Compare_To (propertyValue, existingElementNodeTextNodeValue)) = (0) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("Value Node is the same"), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("isElementValueTextNodeEqual"));
                end if;
                return True;
            end if;
        else
            return True;
        end if;
        return False;
   end isElementValueTextNodeEqual;

   --  throws Exception
   function isElementValueTextNodeUnique (This : in out NameSpaceRequestParams; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; elementNodeVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Integer is
      nextPackagePropertiesHashMap : constant HashMap_Access := HashMap_Access (nextPackagePropertiesHashMap_Param);
      elementNodeVector : constant BasicArrayList_Access := BasicArrayList_Access (elementNodeVector_Param);
      size : Integer;
      existingElementNode : Node_Access;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Comparing Properties of: ") & Java_Image (elementNodeVector.size) & To_Unbounded_String (" Nodes"), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("isElementValueTextNodeUnique"));
        end if;
        size := elementNodeVector.size;
        for index in 0 .. (size) - 1 loop
            existingElementNode := Node_Access (elementNodeVector.get (index));
            if NameSpaceRequestParams'Class (This).isElementValueTextNodeEqual (nextPackagePropertiesHashMap, existingElementNode) then
                return index;
            end if;
        end loop;
        return -(1);
   end isElementValueTextNodeUnique;

   --  throws Exception
   function addChildren (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; rootNode_Param : access Node_Package.Node'Class; nameSpaceRequestParam_Param : access NameSpaceRequestParam_Package.NameSpaceRequestParam'Class) return Document_Access is
      document : constant Document_Access := Document_Access (document_Param);
      rootNode : constant Node_Access := Node_Access (rootNode_Param);
      nameSpaceRequestParam : constant NameSpaceRequestParam_Access := NameSpaceRequestParam_Access (nameSpaceRequestParam_Param);
      node : Node_Access;
      packageVector : BasicArrayList_Access;
      size : Integer;
      nextPackageName : Unbounded_String;
      nextPackagePropertiesHashMap : HashMap_Access;
      elementNodeVector : BasicArrayList_Access;
      isElementValueTextNodeUniqueIndex : Integer;
      nodeNameDuplicateNode : Node_Access;
      nextNode : Node_Access;
      index : Integer;
   begin
        node := rootNode;
        packageVector := nameSpaceRequestParam.getPackages;
        size := packageVector.size;
        for index in 1 .. (size) - 1 loop
            nextPackageName := Java_Unbox (packageVector.get (index));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("" & ASCII.LF & "Trying to Add Child to Node: ")).append (node.getNodeName).append (To_Unbounded_String ("" & ASCII.LF & "with new PackageName: ")).append (nextPackageName).toString, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addChildren"));
            end if;
            nextPackagePropertiesHashMap := nameSpaceRequestParam.getPackageProperties (index);
            elementNodeVector := DomSearchHelper_Package.getAllNodesNoThrow (nextPackageName, node.getChildNodes);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Document Contains ") & Java_Image (elementNodeVector.size) & To_Unbounded_String (" Node(s) With Same Name"), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addChildren"));
            end if;
            isElementValueTextNodeUniqueIndex := NameSpaceRequestParams'Class (This).isElementValueTextNodeUnique (nextPackagePropertiesHashMap, elementNodeVector);
            if ((((elementNodeVector.size) = (0)) or else ((isElementValueTextNodeUniqueIndex) = (-(1))))) and then (not (nextPackageName.endsWith (CommonSeps_Package.getInstance.BRACKET_CLOSE))) then
                nextNode := NameSpaceRequestParams'Class (This).createPackageNode (document, nextPackageName, nextPackagePropertiesHashMap);
                node.appendChild (nextNode);
                node := nextNode;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Appended Package: ") & Java_Image (node.getNodeName), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addChildren"));
                    This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Appended Document Created: ") & XmlDocumentHelper_Package.toString (document), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addChildren"));
                end if;
            elsif nextPackageName.endsWith (CommonSeps_Package.getInstance.BRACKET_CLOSE) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("Package is MultiNode: just append"), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addChildren"));
                end if;
                nextNode := NameSpaceRequestParams'Class (This).createPackageMultiNode (document, nameSpaceRequestParam, nextPackageName, nextPackagePropertiesHashMap);
                node.appendChild (nextNode);
                node := nextNode;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Appended Multinode Element: ") & XmlDocumentHelper_Package.toString (document), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addChildren"));
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("Value Node already exists: Now compare (properties to leaf nodes)"), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addChildren"));
                end if;
                nodeNameDuplicateNode := Node_Access (elementNodeVector.get (isElementValueTextNodeUniqueIndex));
                node := NameSpaceRequestParams'Class (This).addNewProperties (document, nodeNameDuplicateNode, nextPackagePropertiesHashMap);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Duplicate Node Found: Moving to next child ^"), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addChildre"));
                end if;
            end if;
        end loop;
        return document;
   end addChildren;

   --  throws Exception
   function addNameSpace (This : in out NameSpaceRequestParams; key : Unbounded_String; value : Unbounded_String; document_Param : access Document_Package.Document'Class) return Document_Access is
      document : constant Document_Access := Document_Access (document_Param);
      nameSpaceRequestParam : NameSpaceRequestParam_Access;
      packageVector : BasicArrayList_Access;
      size : Integer;
      packageName : Unbounded_String;
      packagePropertiesHashMap : HashMap_Access;
      rootNode : Node_Access;
      index : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("NameSpace key: ")).append (key).append (To_Unbounded_String (" Value: ")).append (value).toString, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("addNameSpace"));
        end if;
        nameSpaceRequestParam := NameSpaceRequestParam_Package.Create (key, value);
        packageVector := nameSpaceRequestParam.getPackages;
        size := packageVector.size;
        for index in 0 .. (size) - 1 loop
            packageName := Java_Unbox (packageVector.get (index));
            packagePropertiesHashMap := nameSpaceRequestParam.getPackageProperties (packageVector.indexOf (packageName));
            rootNode := NameSpaceRequestParams'Class (This).getRootNode (packageName, packagePropertiesHashMap, document);
            if (index) < ((size) - (1)) then
                return NameSpaceRequestParams'Class (This).addChildren (document, Node_Access (rootNode), nameSpaceRequestParam);
            end if;
        end loop;
        return document;
   end addNameSpace;

   --  throws Exception
   function toHashMap (This : in out NameSpaceRequestParams) return HashMap_Access is
      document : Document_Access;
      hashMap : HashMap_Access;
      keys : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      keySize : Integer;
      key : Unbounded_String;
      anyType : Java_Object_Access;
      className : Unbounded_String;
      values : Unbounded_String_Array_Access;
      value : Unbounded_String;
      i : Integer;
   begin
        document := DomDocumentHelper_Package.create;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        keys := NameSpaceRequestParams'Class (This).getMap.keySet;
        keyArray := keys.toArray;
        keySize := keyArray'Length;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("NameSpace Request Size: ") & Java_Image (keys.size), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap"));
        end if;
        for i in 0 .. (keySize) - 1 loop
            key := Java_Unbox (keyArray (i));
            anyType := NameSpaceRequestParams'Class (This).getMap.get (key);
            className := To_Unbounded_String (Ada.Tags.Expanded_Name (anyType.all'Tag));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                This.logUtil.putF (To_Unbounded_String ("Request Param Class: ") & className, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap"));
            end if;
            if (NameSpaceRequestParams'Class (This).getMap.get (key).all in String_Package.String'Class) then
                value := Java_Unbox (NameSpaceRequestParams'Class (This).getMap.get (key));
                if ((Index (key, Java_Image (NameSpaceRequestParamData_Package.NAME)) - 1)) < (0) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                        This.logUtil.putF (To_Unbounded_String ("Not NameSpace key: ") & key & To_Unbounded_String (" Value: ") & value, NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
                    end if;
                    hashMap.put (Java_New_String (key), Java_New_String (value));
                else
                    document := NameSpaceRequestParams'Class (This).addNameSpace (Java_New_String (key), Java_New_String (value), document);
                end if;
            elsif (NameSpaceRequestParams'Class (This).getMap.get (key).all in _Package.'Class) then
                values := Unbounded_String_Array_Access (NameSpaceRequestParams'Class (This).getMap.get (key));
                if ((Index (key, Java_Image (NameSpaceRequestParamData_Package.NAME)) - 1)) < (0) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                        This.logUtil.putF (To_Unbounded_String ("Not NameSpace key: ") & key & To_Unbounded_String (" Value: ") & Java_Image (values (0)), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
                    end if;
                    hashMap.put (Java_New_String (key), Java_New_String (values (0)));
                else
                    document := NameSpaceRequestParams'Class (This).addNameSpace (Java_New_String (key), Java_New_String (values (0)), document);
                end if;
            end if;
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("NameSpaceRequestParams: ") & NameSpaceRequestParams'Class (This).getMap.toString & To_Unbounded_String ("" & ASCII.LF & "toHashMap(): ") & hashMap.toString & To_Unbounded_String ("" & ASCII.LF & "Document Created: ") & XmlDocumentHelper_Package.toString (document), NameSpaceRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        end if;
        hashMap.put (NameSpaceRequestParamData_Package.DOCUMENT, document);
        return hashMap;
   end toHashMap;

   procedure createPackageNode (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; packageName : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Node_Access := NameSpaceRequestParams'Class (This).createPackageNode (document_Param, packageName, packagePropertiesHashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPackageNode;

   procedure createPackageMultiNode (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; nameSpaceRequestParam_Param : access NameSpaceRequestParam_Package.NameSpaceRequestParam'Class; packageName : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Node_Access := NameSpaceRequestParams'Class (This).createPackageMultiNode (document_Param, nameSpaceRequestParam_Param, packageName, packagePropertiesHashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPackageMultiNode;

   procedure getRootNode (This : in out NameSpaceRequestParams; rootElementPackage : Unbounded_String; packagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := NameSpaceRequestParams'Class (This).getRootNode (rootElementPackage, packagePropertiesHashMap_Param, document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRootNode;

   procedure addNewProperties (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Node_Access := NameSpaceRequestParams'Class (This).addNewProperties (document_Param, node_Param, nextPackagePropertiesHashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addNewProperties;

   procedure isElementValueTextNodeEqual (This : in out NameSpaceRequestParams; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; node_Param : access Node_Package.Node'Class) is
      Java_Result : constant Boolean := NameSpaceRequestParams'Class (This).isElementValueTextNodeEqual (nextPackagePropertiesHashMap_Param, node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isElementValueTextNodeEqual;

   procedure isElementValueTextNodeUnique (This : in out NameSpaceRequestParams; nextPackagePropertiesHashMap_Param : access HashMap_Package.HashMap'Class; elementNodeVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Integer := NameSpaceRequestParams'Class (This).isElementValueTextNodeUnique (nextPackagePropertiesHashMap_Param, elementNodeVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isElementValueTextNodeUnique;

   procedure addChildren (This : in out NameSpaceRequestParams; document_Param : access Document_Package.Document'Class; rootNode_Param : access Node_Package.Node'Class; nameSpaceRequestParam_Param : access NameSpaceRequestParam_Package.NameSpaceRequestParam'Class) is
      Java_Result : constant Document_Access := NameSpaceRequestParams'Class (This).addChildren (document_Param, rootNode_Param, nameSpaceRequestParam_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addChildren;

   procedure addNameSpace (This : in out NameSpaceRequestParams; key : Unbounded_String; value : Unbounded_String; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Document_Access := NameSpaceRequestParams'Class (This).addNameSpace (key, value, document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addNameSpace;

end org.allbinary.logic.communication.http.request.NameSpaceRequestParams_Package;


