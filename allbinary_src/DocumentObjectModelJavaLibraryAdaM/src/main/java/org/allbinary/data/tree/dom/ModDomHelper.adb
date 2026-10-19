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


with org.allbinary.logic.java.anyType.clazz.ClassUtil_Package; use org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;

package body org.allbinary.data.tree.dom.ModDomHelper_Package is

   package ClassUtil_Package renames Standard.org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out ModDomHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ModDomHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ModDomHelper_Access is
      This : constant ModDomHelper_Access := new ModDomHelper;
   begin
      ModDomHelper_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createTextNode (document_Param : access Document_Package.Document'Class; name : Unbounded_String; text : Unbounded_String) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      newValueNode : Node_Access;
      newValueTextNode : Node_Access;
   begin
        newValueNode := document.createElement (name);
        newValueTextNode := document.createTextNode (text);
        newValueNode.appendChild (newValueTextNode);
        return newValueNode;
   end createTextNode;

   --  throws Exception
   function createValueNode (document_Param : access Document_Package.Document'Class; text : Unbounded_String) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createTextNode (document, DomData_Package.VALUE, text);
   end createValueNode;

   --  throws Exception
   function createNameNode (document_Param : access Document_Package.Document'Class; text : Unbounded_String) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createTextNode (document, DomData_Package.NAME, text);
   end createNameNode;

   --  throws Exception
   function createIndexNode (document_Param : access Document_Package.Document'Class; index : Integer) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createTextNode (document, DomData_Package.INDEX, index.toString);
   end createIndexNode;

   --  throws Exception
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; elementName : Unbounded_String; nameText : Unbounded_String; valueText : Unbounded_String) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      newNode : Node_Access;
   begin
        newNode := document.createElement (elementName);
        newNode.appendChild (ModDomHelper_Package.createNameNode (document, nameText));
        newNode.appendChild (ModDomHelper_Package.createValueNode (document, valueText));
        return newNode;
   end createNameValueNodes;

   --  throws Exception
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; elementNameAndNameText : Unbounded_String; valueText : Unbounded_String) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      newNode : Node_Access;
   begin
        newNode := ModDomHelper_Package.createNameValueNodes (document, elementNameAndNameText, elementNameAndNameText, valueText);
        return newNode;
   end createNameValueNodes;

   --  throws Exception
   function createNameValueIndexNodes (document_Param : access Document_Package.Document'Class; elementNameAndNameText : Unbounded_String; index : Integer; valueText : Unbounded_String) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      newNode : Node_Access;
   begin
        newNode := ModDomHelper_Package.createNameValueNodes (document, elementNameAndNameText, valueText);
        newNode.appendChild (ModDomHelper_Package.createIndexNode (document, index));
        return newNode;
   end createNameValueIndexNodes;

   --  throws Exception
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; rootNode : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      node : Node_Access;
   begin
        node := document.createElement (rootNode);
        return ModDomHelper_Package.createNameValueNodes (document, node, hashMap);
   end createNameValueNodes;

   --  throws Exception
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; hashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : constant Node_Access := Node_Access (node_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      stringUtil : StringUtil_Access;
      keySet : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      objectKey : Java_Object_Access;
      name : Unbounded_String;
      anyType : Java_Object_Access;
      value : Unbounded_String;
      i : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        keySet := hashMap.keySet;
        keyArray := keySet.toArray;
        size := keyArray'Length;
        for i in 0 .. (size) - 1 loop
            objectKey := keyArray (i);
            name := Java_Unbox (objectKey);
            anyType := Java_Object_Access (hashMap.get (objectKey));
            if (anyType) = (null) then
                value := stringUtil.EMPTY_STRING;
                node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
            elsif (anyType.all in String_Package.String'Class) then
                value := stringUtil.getNonNull (Java_Unbox (anyType));
                node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
            elsif (anyType.all in HashMap_Package.HashMap'Class) then
                node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, hashMap));
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("HashMap value is the wrong instance and is: ") & Java_Image (ClassUtil_Package.viewAll (anyType, CommonSeps_Package.getInstance.NEW_LINE))));
            end if;
        end loop;
        return node;
   end createNameValueNodes;

   --  throws Exception
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      valueVector : constant BasicArrayList_Access := BasicArrayList_Access (valueVector_Param);
      stringUtil : StringUtil_Access;
      node : Node_Access;
      size : Integer;
      value : Unbounded_String;
      i : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        node := document.createElement (rootNodeName);
        size := valueVector.size;
        for i in 0 .. (size) - 1 loop
            value := stringUtil.getNonNull (Java_Unbox (valueVector.get (i)));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, duplicateNodeName, value));
        end loop;
        return node;
   end createNameValueNodes;

   --  throws Exception
   function createNameValueIndexNodes (document_Param : access Document_Package.Document'Class; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      valueVector : constant BasicArrayList_Access := BasicArrayList_Access (valueVector_Param);
      stringUtil : StringUtil_Access;
      node : Node_Access;
      size : Integer;
      value : Unbounded_String;
      index : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        node := document.createElement (rootNodeName);
        size := valueVector.size;
        for index in 0 .. (size) - 1 loop
            value := stringUtil.getNonNull (Java_Unbox (valueVector.get (index)));
            node.appendChild (ModDomHelper_Package.createNameValueIndexNodes (document, duplicateNodeName, index, value));
        end loop;
        return node;
   end createNameValueIndexNodes;

   --  throws Exception
   function createNodeWithValueNodes (document_Param : access Document_Package.Document'Class; rootNode : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      node : Node_Access;
   begin
        node := document.createElement (rootNode);
        return ModDomHelper_Package.createNodeWithValueNodes (document, node, hashMap);
   end createNodeWithValueNodes;

   --  throws Exception
   function createNodeWithValueNodes (document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; hashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : constant Node_Access := Node_Access (node_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      stringUtil : StringUtil_Access;
      keySet : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      name : Unbounded_String;
      anyType : Java_Object_Access;
      value : Unbounded_String;
      i : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        keySet := hashMap.keySet;
        keyArray := keySet.toArray;
        size := keyArray'Length;
        for i in 0 .. (size) - 1 loop
            name := Java_Unbox (keyArray (i));
            anyType := Java_Object_Access (hashMap.get (Java_Box (name)));
            value := stringUtil.getNonNull (Java_Unbox (anyType));
            node.appendChild (ModDomHelper_Package.createTextNode (document, name, value));
        end loop;
        return node;
   end createNodeWithValueNodes;

   procedure createTextNode (document_Param : access Document_Package.Document'Class; name : Unbounded_String; text : Unbounded_String) is
      Java_Result : constant Node_Access := createTextNode (document_Param => document_Param, name => name, text => text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTextNode;

   procedure createValueNode (document_Param : access Document_Package.Document'Class; text : Unbounded_String) is
      Java_Result : constant Node_Access := createValueNode (document_Param => document_Param, text => text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createValueNode;

   procedure createNameNode (document_Param : access Document_Package.Document'Class; text : Unbounded_String) is
      Java_Result : constant Node_Access := createNameNode (document_Param => document_Param, text => text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameNode;

   procedure createIndexNode (document_Param : access Document_Package.Document'Class; index : Integer) is
      Java_Result : constant Node_Access := createIndexNode (document_Param => document_Param, index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createIndexNode;

   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; elementName : Unbounded_String; nameText : Unbounded_String; valueText : Unbounded_String) is
      Java_Result : constant Node_Access := createNameValueNodes (document_Param => document_Param, elementName => elementName, nameText => nameText, valueText => valueText);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; elementNameAndNameText : Unbounded_String; valueText : Unbounded_String) is
      Java_Result : constant Node_Access := createNameValueNodes (document_Param => document_Param, elementNameAndNameText => elementNameAndNameText, valueText => valueText);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueIndexNodes (document_Param : access Document_Package.Document'Class; elementNameAndNameText : Unbounded_String; index : Integer; valueText : Unbounded_String) is
      Java_Result : constant Node_Access := createNameValueIndexNodes (document_Param => document_Param, elementNameAndNameText => elementNameAndNameText, index => index, valueText => valueText);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueIndexNodes;

   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; rootNode : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Node_Access := createNameValueNodes (document_Param => document_Param, rootNode => rootNode, hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Node_Access := createNameValueNodes (document_Param => document_Param, node_Param => node_Param, hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Node_Access := createNameValueNodes (document_Param => document_Param, rootNodeName => rootNodeName, duplicateNodeName => duplicateNodeName, valueVector_Param => valueVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueIndexNodes (document_Param : access Document_Package.Document'Class; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Node_Access := createNameValueIndexNodes (document_Param => document_Param, rootNodeName => rootNodeName, duplicateNodeName => duplicateNodeName, valueVector_Param => valueVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueIndexNodes;

   procedure createNodeWithValueNodes (document_Param : access Document_Package.Document'Class; rootNode : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Node_Access := createNodeWithValueNodes (document_Param => document_Param, rootNode => rootNode, hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNodeWithValueNodes;

   procedure createNodeWithValueNodes (document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Node_Access := createNodeWithValueNodes (document_Param => document_Param, node_Param => node_Param, hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNodeWithValueNodes;

end org.allbinary.data.tree.dom.ModDomHelper_Package;


