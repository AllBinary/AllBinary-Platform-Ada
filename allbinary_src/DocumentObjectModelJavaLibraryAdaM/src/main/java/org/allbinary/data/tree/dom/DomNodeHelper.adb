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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;

package body org.allbinary.data.tree.dom.DomNodeHelper_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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

   function getFirstChildElement (parentNode_Param : access Node_Package.Node'Class) return Node_Access is
      parentNode : constant Node_Access := Node_Access (parentNode_Param);
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

   function getTextNodeValue (node_Param : access Node_Package.Node'Class) return Unbounded_String is
      node : constant Node_Access := Node_Access (node_Param);
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
   function getTextNodeValue (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return Unbounded_String is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNode (nodeName, nodeList);
        return DomNodeHelper_Package.getTextNodeValue (node);
   end getTextNodeValue;

   function getTextNodesValue (node_Param : access Node_Package.Node'Class) return Unbounded_String is
      node : constant Node_Access := Node_Access (node_Param);
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

   procedure getFirstChildElement (parentNode_Param : access Node_Package.Node'Class) is
      Java_Result : constant Node_Access := getFirstChildElement (parentNode_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFirstChildElement;

   procedure getTextNodeValue (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant Unbounded_String := getTextNodeValue (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTextNodeValue;

   procedure getTextNodeValue (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant Unbounded_String := getTextNodeValue (nodeName, nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTextNodeValue;

   procedure getTextNodesValue (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant Unbounded_String := getTextNodesValue (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTextNodesValue;

end org.allbinary.data.tree.dom.DomNodeHelper_Package;


