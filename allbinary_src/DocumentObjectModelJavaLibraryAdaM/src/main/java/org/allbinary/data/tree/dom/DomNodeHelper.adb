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


package body org.allbinary.data.tree.dom.DomNodeHelper_Package is

   procedure Initialize_Fields (This : in out DomNodeHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DomNodeHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DomNodeHelper_Access is
      This : constant DomNodeHelper_Access := new DomNodeHelper;
   begin
      DomNodeHelper_Package.Initialize (This.all);
      return This;
   end Create;

   function getFirstChildElement (parentNode : Node_Access) return Node_Access is
      node : Node_Access;
      nodeList : NodeList_Access;
      index : Integer;
   begin
        node := parentNode.getFirstChild;
        if ((node) /= (null)) and then ((node.getNodeType) /= (Node_Package.ELEMENT_NODE)) then
            nodeList := parentNode.getChildNodes;
            for index in 0 .. (nodeList.getLength) - 1 loop
                node := nodeList.item (index);
                if (node.getNodeType) = (1) then
                    exit;
                end if;
            end loop;
        end if;
        return node;
   end getFirstChildElement;

   function getTextNodeValue (node : Node_Access) return Unbounded_String is
      nodeTextNode : Node_Access;
   begin
        nodeTextNode := node.getFirstChild;
        if (nodeTextNode) /= (null) then
            return nodeTextNode.getNodeValue;
        else
            return StringUtil_Package.getInstance.EMPTY_STRING;
        end if;
   end getTextNodeValue;

   --  throws Exception
   function getTextNodeValue (nodeName : Unbounded_String; nodeList : NodeList_Access) return Unbounded_String is
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNode (nodeName, nodeList);
        return DomNodeHelper_Package.getTextNodeValue (node);
   end getTextNodeValue;

   function getTextNodesValue (node : Node_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      nodeList : NodeList_Access;
      nodeTextNode : Node_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        nodeList := node.getChildNodes;
        for index in 0 .. (nodeList.getLength) - 1 loop
            nodeTextNode := nodeList.item (index);
            if (nodeTextNode.getNodeType) = (Node_Package.TEXT_NODE) then
                if (nodeTextNode) /= (null) then
                    stringBuffer.append (nodeTextNode.getNodeValue);
                end if;
            end if;
        end loop;
        return stringBuffer.toString;
   end getTextNodesValue;

   procedure getFirstChildElement (parentNode : Node_Access) is
      Java_Result : constant Node_Access := getFirstChildElement (parentNode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFirstChildElement;

   procedure getTextNodeValue (node : Node_Access) is
      Java_Result : constant Unbounded_String := getTextNodeValue (node);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTextNodeValue;

   procedure getTextNodeValue (nodeName : Unbounded_String; nodeList : NodeList_Access) is
      Java_Result : constant Unbounded_String := getTextNodeValue (nodeName, nodeList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTextNodeValue;

   procedure getTextNodesValue (node : Node_Access) is
      Java_Result : constant Unbounded_String := getTextNodesValue (node);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTextNodesValue;

end org.allbinary.data.tree.dom.DomNodeHelper_Package;


