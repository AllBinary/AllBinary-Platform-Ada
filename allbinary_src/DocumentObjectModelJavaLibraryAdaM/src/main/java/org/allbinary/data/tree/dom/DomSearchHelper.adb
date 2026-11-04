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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.w3c.dom.NodeList_Package_References;

package body org.allbinary.data.tree.dom.DomSearchHelper_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
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
   subtype NodeList_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access;
   function "=" (Left, Right : NodeList_Access) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   subtype NodeList_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array;
   function "=" (Left, Right : NodeList_Access_Array) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   subtype NodeList_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access;
   function "=" (Left, Right : NodeList_Access_Array_Access) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   subtype NodeList_Access_Array_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array;
   function "=" (Left, Right : NodeList_Access_Array_Access_Array) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   subtype NodeList_Access_Array_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NodeList_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   procedure Initialize_Fields (This : in out DomSearchHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DomSearchHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DomSearchHelper_Access is
      This : constant DomSearchHelper_Access := new DomSearchHelper;
   begin
      DomSearchHelper_Package.Initialize (This.all);
      return This;
   end Create;

   function getNodeNoThrow (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return Node_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      numberOfNodes : Integer;
      node : Node_Access;
      index : Integer;
   begin
        numberOfNodes := nodeList.getLength;
        for index in 0 .. (numberOfNodes) - 1 loop
            node := nodeList.item (index);
            if (node.getNodeName.compareTo (nodeName)) = (0) then
                return node;
            end if;
        end loop;
        return null;
   end getNodeNoThrow;

   --  throws Exception
   function getNode (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return Node_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNodeNoThrow (nodeName, nodeList);
        if (node) /= (null) then
            return node;
        else
            Java_Throw (Java_New_Exception ("Exception", nodeName & To_Unbounded_String (" Node Not Found in search")));
        end if;
   end getNode;

   --  throws Exception
   function getChildNodeList (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return NodeList_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      node : Node_Access;
   begin
        node := DomSearchHelper_Package.getNode (nodeName, nodeList);
        return node.getChildNodes;
   end getChildNodeList;

   --  throws Exception
   function getAllNodes (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      vector : BasicArrayList_Access;
   begin
        vector := DomSearchHelper_Package.getAllNodesNoThrow (nodeName, nodeList);
        if (vector) = (null) then
            Java_Throw (Java_New_Exception ("Exception", nodeName & To_Unbounded_String (" Node Not Found in search")));
        else
            return vector;
        end if;
   end getAllNodes;

   function getAllNodesNoThrow (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      nodeVector : BasicArrayList_Access;
      numberOfNodes : Integer;
      node : Node_Access;
      index : Integer;
   begin
        nodeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        numberOfNodes := nodeList.getLength;
        for index in 0 .. (numberOfNodes) - 1 loop
            node := nodeList.item (index);
            if (node.getNodeName.compareTo (nodeName)) = (0) then
                nodeVector.add (Java_Object_Access (node));
            end if;
        end loop;
        return nodeVector;
   end getAllNodesNoThrow;

   procedure getNodeNoThrow (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant Node_Access := getNodeNoThrow (nodeName => nodeName, nodeList_Param => nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNodeNoThrow;

   procedure getNode (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant Node_Access := getNode (nodeName => nodeName, nodeList_Param => nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNode;

   procedure getChildNodeList (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant NodeList_Access := getChildNodeList (nodeName => nodeName, nodeList_Param => nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChildNodeList;

   procedure getAllNodes (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant BasicArrayList_Access := getAllNodes (nodeName => nodeName, nodeList_Param => nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllNodes;

   procedure getAllNodesNoThrow (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant BasicArrayList_Access := getAllNodesNoThrow (nodeName => nodeName, nodeList_Param => nodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllNodesNoThrow;

end org.allbinary.data.tree.dom.DomSearchHelper_Package;


