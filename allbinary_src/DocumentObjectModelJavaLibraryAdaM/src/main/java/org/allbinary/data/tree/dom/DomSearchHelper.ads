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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.data.tree.dom.DomSearchHelper_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type DomSearchHelper is tagged;
   type DomSearchHelper_Access is access all DomSearchHelper'Class;
   type DomSearchHelper_Access_Array is array (Natural range <>) of DomSearchHelper_Access;
   type DomSearchHelper_Access_Array_Access is access all DomSearchHelper_Access_Array;

   type DomSearchHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomSearchHelper'Class);
   function Create return DomSearchHelper_Access;
   function getNodeNoThrow (nodeName : Unbounded_String; nodeList : NodeList_Access) return Node_Access;
   procedure getNodeNoThrow (nodeName : Unbounded_String; nodeList : NodeList_Access);
   function getNode (nodeName : Unbounded_String; nodeList : NodeList_Access) return Node_Access;
   procedure getNode (nodeName : Unbounded_String; nodeList : NodeList_Access);
   function getChildNodeList (nodeName : Unbounded_String; nodeList : NodeList_Access) return NodeList_Access;
   procedure getChildNodeList (nodeName : Unbounded_String; nodeList : NodeList_Access);
   function getAllNodes (nodeName : Unbounded_String; nodeList : NodeList_Access) return BasicArrayList_Access;
   procedure getAllNodes (nodeName : Unbounded_String; nodeList : NodeList_Access);
   function getAllNodesNoThrow (nodeName : Unbounded_String; nodeList : NodeList_Access) return BasicArrayList_Access;
   procedure getAllNodesNoThrow (nodeName : Unbounded_String; nodeList : NodeList_Access);

end org.allbinary.data.tree.dom.DomSearchHelper_Package;


