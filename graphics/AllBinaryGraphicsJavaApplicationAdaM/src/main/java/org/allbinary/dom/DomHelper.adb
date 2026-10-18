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


package body org.allbinary.dom.DomHelper_Package is

   procedure Initialize_Fields (This : in out DomHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return DomHelper_Access is
   begin
        return DomHelper_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DomHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DomHelper_Access is
      This : constant DomHelper_Access := new DomHelper;
   begin
      DomHelper_Package.Initialize (This.all);
      return This;
   end Create;

   function createDocument (This : in out DomHelper) return Document_Access is
      factory : DocumentBuilderFactory_Access;
      builder : DocumentBuilder_Access;
      document : Document_Access;
   begin
        begin
            factory := DocumentBuilderFactory_Package.newInstance;
            builder := factory.newDocumentBuilder;
            document := builder.newDocument;
            return document;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return null;
                end;
        end;
   end createDocument;

   --  throws Exception
   function createDocument (This : in out DomHelper; xmlFile_Param : access File_Package.File'Class) return Document_Access is
      xmlFile : constant File_Access := File_Access (xmlFile_Param);
      factory : DocumentBuilderFactory_Access;
      builder : DocumentBuilder_Access;
      document : Document_Access;
   begin
        begin
            factory := DocumentBuilderFactory_Package.newInstance;
            builder := factory.newDocumentBuilder;
            document := builder.parse (xmlFile);
            return document;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end createDocument;

   --  throws Exception
   function toString (This : in out DomHelper; document_Param : access Document_Package.Document'Class) return Unbounded_String is
      document : constant Document_Access := Document_Access (document_Param);
      domSource : DOMSource_Access;
      byteArrayOutputStream : ByteArrayOutputStream_Access;
      streamResult : StreamResult_Access;
      copyTransformerFactory : TransformerFactory_Access;
      copyTransformer : Transformer_Access;
   begin
        begin
            domSource := DOMSource_Package.Create (document);
            byteArrayOutputStream := ByteArrayOutputStream_Package.Create;
            streamResult := StreamResult_Package.Create (byteArrayOutputStream);
            copyTransformerFactory := TransformerFactory_Package.newInstance;
            copyTransformer := copyTransformerFactory.newTransformer;
            copyTransformer.transform (domSource, streamResult);
            return byteArrayOutputStream.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end toString;

   --  throws Exception
   procedure save (This : in out DomHelper; file_Param : access File_Package.File'Class; document_Param : access Document_Package.Document'Class) is
      file : constant File_Access := File_Access (file_Param);
      document : constant Document_Access := Document_Access (document_Param);
      copyTransformerFactory : TransformerFactory_Access;
      copyTransformer : Transformer_Access;
      domSource : DOMSource_Access;
      streamResult : StreamResult_Access;
   begin
        begin
            copyTransformerFactory := TransformerFactory_Package.newInstance;
            copyTransformer := copyTransformerFactory.newTransformer;
            domSource := DOMSource_Package.Create (document);
            file.createNewFile;
            streamResult := StreamResult_Package.Create (file);
            copyTransformer.transform (domSource, streamResult);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end save;

   --  throws Exception
   function getChildNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return NodeList_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      numberOfNodes : Integer;
      node : Node_Access;
      index : Integer;
   begin
        numberOfNodes := nodeList.getLength;
        for index in 0 .. (numberOfNodes) - 1 loop
            node := nodeList.item (index);
            if (node.getNodeName.compareTo (nodeName)) = (0) then
                return node.getChildNodes;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", nodeName & To_Unbounded_String (" Node Not Found")));
   end getChildNodeList;

   --  throws Exception
   function getChildrenWithoutTextNodes (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      list : BasicArrayList_Access;
      childNodeList : NodeList_Access;
      numberOfChildren : Integer;
      node : Node_Access;
      index : Integer;
   begin
        list := BasicArrayListD_Package.Create;
        childNodeList := DomHelper'Class (This).getChildNodeList (nodeName, nodeList);
        numberOfChildren := childNodeList.getLength;
        for index in 0 .. (numberOfChildren) - 1 loop
            node := childNodeList.item (index);
            if (node.getNodeType) /= (Node_Package.TEXT_NODE) then
                list.add (node);
            end if;
        end loop;
        return list;
   end getChildrenWithoutTextNodes;

   --  throws Exception
   function getWithoutTextNodes (This : in out DomHelper; nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      list : BasicArrayList_Access;
      numberOfChildren : Integer;
      node : Node_Access;
      index : Integer;
   begin
        list := BasicArrayListD_Package.Create;
        numberOfChildren := nodeList.getLength;
        for index in 0 .. (numberOfChildren) - 1 loop
            node := nodeList.item (index);
            if (node.getNodeType) /= (Node_Package.TEXT_NODE) then
                list.add (node);
            end if;
        end loop;
        return list;
   end getWithoutTextNodes;

   --  throws Exception
   function searchNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return Node_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      numberOfNodes : Integer;
      node : Node_Access;
      index : Integer;
   begin
        numberOfNodes := nodeList.getLength;
        for index in 0 .. (numberOfNodes) - 1 loop
            node := nodeList.item (index);
            This.logUtil.putF (To_Unbounded_String ("NodeName: ") & Java_Image (node.getNodeName), DomHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("searchNodeList"));
            if (node.getNodeName.compareTo (nodeName)) = (0) then
                return node;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", nodeName & To_Unbounded_String (" Node Not Found in search")));
   end searchNodeList;

   --  throws Exception
   function searchNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) return Node_Access is
      nodeList : constant BasicArrayList_Access := BasicArrayList_Access (nodeList_Param);
      numberOfNodes : Integer;
      node : Node_Access;
      index : Integer;
   begin
        numberOfNodes := nodeList.size;
        for index in 0 .. (numberOfNodes) - 1 loop
            node := Node_Access (nodeList.get (index));
            This.logUtil.putF (To_Unbounded_String ("NodeName: ") & Java_Image (node.getNodeName), DomHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("searchNodeList"));
            if (node.getNodeName.compareTo (nodeName)) = (0) then
                return node;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", nodeName & To_Unbounded_String (" Node Not Found in search")));
   end searchNodeList;

   procedure createDocument (This : in out DomHelper; xmlFile_Param : access File_Package.File'Class) is
      Java_Result : constant Document_Access := DomHelper'Class (This).createDocument (xmlFile_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createDocument;

   procedure toString (This : in out DomHelper; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Unbounded_String := DomHelper'Class (This).toString (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getChildNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant NodeList_Access := DomHelper'Class (This).getChildNodeList (nodeName, nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChildNodeList;

   procedure getChildrenWithoutTextNodes (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant BasicArrayList_Access := DomHelper'Class (This).getChildrenWithoutTextNodes (nodeName, nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChildrenWithoutTextNodes;

   procedure getWithoutTextNodes (This : in out DomHelper; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant BasicArrayList_Access := DomHelper'Class (This).getWithoutTextNodes (nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithoutTextNodes;

   procedure searchNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant Node_Access := DomHelper'Class (This).searchNodeList (nodeName, nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchNodeList;

   procedure searchNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Node_Access := DomHelper'Class (This).searchNodeList (nodeName, nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end searchNodeList;

begin
   null;
   instance := DomHelper_Package.Create;

end org.allbinary.dom.DomHelper_Package;


