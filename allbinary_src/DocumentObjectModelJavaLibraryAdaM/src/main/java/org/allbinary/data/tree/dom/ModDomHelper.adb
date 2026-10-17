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


package body org.allbinary.data.tree.dom.ModDomHelper_Package is

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
   function createTextNode (document : Document_Access; name : Unbounded_String; text : Unbounded_String) return Node_Access is
      newValueNode : Node_Access;
      newValueTextNode : Node_Access;
   begin
        newValueNode := document.createElement (name);
        newValueTextNode := document.createTextNode (text);
        newValueNode.appendChild (newValueTextNode);
        return newValueNode;
   end createTextNode;

   --  throws Exception
   function createValueNode (document : Document_Access; text : Unbounded_String) return Node_Access is
   begin
        return ModDomHelper_Package.createTextNode (document, DomData_Package.VALUE, text);
   end createValueNode;

   --  throws Exception
   function createNameNode (document : Document_Access; text : Unbounded_String) return Node_Access is
   begin
        return ModDomHelper_Package.createTextNode (document, DomData_Package.NAME, text);
   end createNameNode;

   --  throws Exception
   function createIndexNode (document : Document_Access; index : Integer) return Node_Access is
   begin
        return ModDomHelper_Package.createTextNode (document, DomData_Package.INDEX, index.toString);
   end createIndexNode;

   --  throws Exception
   function createNameValueNodes (document : Document_Access; elementName : Unbounded_String; nameText : Unbounded_String; valueText : Unbounded_String) return Node_Access is
      newNode : Node_Access;
   begin
        newNode := document.createElement (elementName);
        newNode.appendChild (ModDomHelper_Package.createNameNode (document, nameText));
        newNode.appendChild (ModDomHelper_Package.createValueNode (document, valueText));
        return newNode;
   end createNameValueNodes;

   --  throws Exception
   function createNameValueNodes (document : Document_Access; elementNameAndNameText : Unbounded_String; valueText : Unbounded_String) return Node_Access is
      newNode : Node_Access;
   begin
        newNode := ModDomHelper_Package.createNameValueNodes (document, elementNameAndNameText, elementNameAndNameText, valueText);
        return newNode;
   end createNameValueNodes;

   --  throws Exception
   function createNameValueIndexNodes (document : Document_Access; elementNameAndNameText : Unbounded_String; index : Integer; valueText : Unbounded_String) return Node_Access is
      newNode : Node_Access;
   begin
        newNode := ModDomHelper_Package.createNameValueNodes (document, elementNameAndNameText, valueText);
        newNode.appendChild (ModDomHelper_Package.createIndexNode (document, index));
        return newNode;
   end createNameValueIndexNodes;

   --  throws Exception
   function createNameValueNodes (document : Document_Access; rootNode : Unbounded_String; hashMap : HashMap_Access) return Node_Access is
      node : Node_Access;
   begin
        node := document.createElement (rootNode);
        return ModDomHelper_Package.createNameValueNodes (document, node, hashMap);
   end createNameValueNodes;

   --  throws Exception
   function createNameValueNodes (document : Document_Access; node : Node_Access; hashMap : HashMap_Access) return Node_Access is
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
            name := Unbounded_String (objectKey);
            anyType := Java_Object_Access (hashMap.get (objectKey));
            if (anyType) = (null) then
                value := stringUtil.EMPTY_STRING;
                node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
            elsif (anyType.all in String_Package.String'Class) then
                value := stringUtil.getNonNull (Unbounded_String (anyType));
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
   function createNameValueNodes (document : Document_Access; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector : BasicArrayList_Access) return Node_Access is
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
            value := stringUtil.getNonNull (Unbounded_String (valueVector.get (i)));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, duplicateNodeName, value));
        end loop;
        return node;
   end createNameValueNodes;

   --  throws Exception
   function createNameValueIndexNodes (document : Document_Access; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector : BasicArrayList_Access) return Node_Access is
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
            value := stringUtil.getNonNull (Unbounded_String (valueVector.get (index)));
            node.appendChild (ModDomHelper_Package.createNameValueIndexNodes (document, duplicateNodeName, index, value));
        end loop;
        return node;
   end createNameValueIndexNodes;

   --  throws Exception
   function createNodeWithValueNodes (document : Document_Access; rootNode : Unbounded_String; hashMap : HashMap_Access) return Node_Access is
      node : Node_Access;
   begin
        node := document.createElement (rootNode);
        return ModDomHelper_Package.createNodeWithValueNodes (document, node, hashMap);
   end createNodeWithValueNodes;

   --  throws Exception
   function createNodeWithValueNodes (document : Document_Access; node : Node_Access; hashMap : HashMap_Access) return Node_Access is
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
            name := Unbounded_String (keyArray (i));
            anyType := Java_Object_Access (hashMap.get (name));
            value := stringUtil.getNonNull (Unbounded_String (anyType));
            node.appendChild (ModDomHelper_Package.createTextNode (document, name, value));
        end loop;
        return node;
   end createNodeWithValueNodes;

   procedure createTextNode (document : Document_Access; name : Unbounded_String; text : Unbounded_String) is
      Java_Result : constant Node_Access := createTextNode (document, name, text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTextNode;

   procedure createValueNode (document : Document_Access; text : Unbounded_String) is
      Java_Result : constant Node_Access := createValueNode (document, text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createValueNode;

   procedure createNameNode (document : Document_Access; text : Unbounded_String) is
      Java_Result : constant Node_Access := createNameNode (document, text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameNode;

   procedure createIndexNode (document : Document_Access; index : Integer) is
      Java_Result : constant Node_Access := createIndexNode (document, index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createIndexNode;

   procedure createNameValueNodes (document : Document_Access; elementName : Unbounded_String; nameText : Unbounded_String; valueText : Unbounded_String) is
      Java_Result : constant Node_Access := createNameValueNodes (document, elementName, nameText, valueText);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueNodes (document : Document_Access; elementNameAndNameText : Unbounded_String; valueText : Unbounded_String) is
      Java_Result : constant Node_Access := createNameValueNodes (document, elementNameAndNameText, valueText);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueIndexNodes (document : Document_Access; elementNameAndNameText : Unbounded_String; index : Integer; valueText : Unbounded_String) is
      Java_Result : constant Node_Access := createNameValueIndexNodes (document, elementNameAndNameText, index, valueText);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueIndexNodes;

   procedure createNameValueNodes (document : Document_Access; rootNode : Unbounded_String; hashMap : HashMap_Access) is
      Java_Result : constant Node_Access := createNameValueNodes (document, rootNode, hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueNodes (document : Document_Access; node : Node_Access; hashMap : HashMap_Access) is
      Java_Result : constant Node_Access := createNameValueNodes (document, node, hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueNodes (document : Document_Access; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector : BasicArrayList_Access) is
      Java_Result : constant Node_Access := createNameValueNodes (document, rootNodeName, duplicateNodeName, valueVector);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueNodes;

   procedure createNameValueIndexNodes (document : Document_Access; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector : BasicArrayList_Access) is
      Java_Result : constant Node_Access := createNameValueIndexNodes (document, rootNodeName, duplicateNodeName, valueVector);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNameValueIndexNodes;

   procedure createNodeWithValueNodes (document : Document_Access; rootNode : Unbounded_String; hashMap : HashMap_Access) is
      Java_Result : constant Node_Access := createNodeWithValueNodes (document, rootNode, hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNodeWithValueNodes;

   procedure createNodeWithValueNodes (document : Document_Access; node : Node_Access; hashMap : HashMap_Access) is
      Java_Result : constant Node_Access := createNodeWithValueNodes (document, node, hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createNodeWithValueNodes;

end org.allbinary.data.tree.dom.ModDomHelper_Package;


