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

limited with org.allbinary.data.tree.dom.DomSearchHelper_Package;
package org.allbinary.data.tree.dom.DomSearchHelper_Package_References is
   type DomSearchHelper_Access is access all org.allbinary.data.tree.dom.DomSearchHelper_Package.DomSearchHelper'Class;
   type DomSearchHelper_Access_Array is array (Natural range <>) of DomSearchHelper_Access;
   type DomSearchHelper_Access_Array_Access is access all DomSearchHelper_Access_Array;
   type DomSearchHelper_Access_Array_Access_Array is array (Natural range <>) of DomSearchHelper_Access_Array_Access;
   type DomSearchHelper_Access_Array_Access_Array_Access is access all DomSearchHelper_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.DomSearchHelper_Package_References;

with org.allbinary.data.tree.dom.DomSearchHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.w3c.dom.NodeList_Package;
with org.w3c.dom.NodeList_Package_References;

package org.allbinary.data.tree.dom.DomSearchHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype NodeList_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access;
   use type NodeList_Access;
   subtype NodeList_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array;
   use type NodeList_Access_Array;
   subtype NodeList_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access;
   use type NodeList_Access_Array_Access;
   subtype NodeList_Access_Array_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array;
   use type NodeList_Access_Array_Access_Array;
   subtype NodeList_Access_Array_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array_Access;
   use type NodeList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DomSearchHelper_Access is org.allbinary.data.tree.dom.DomSearchHelper_Package_References.DomSearchHelper_Access;
   function "=" (Left, Right : DomSearchHelper_Access) return Boolean renames org.allbinary.data.tree.dom.DomSearchHelper_Package_References."=";
   subtype DomSearchHelper_Access_Array is org.allbinary.data.tree.dom.DomSearchHelper_Package_References.DomSearchHelper_Access_Array;
   function "=" (Left, Right : DomSearchHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DomSearchHelper_Package_References."=";
   subtype DomSearchHelper_Access_Array_Access is org.allbinary.data.tree.dom.DomSearchHelper_Package_References.DomSearchHelper_Access_Array_Access;
   function "=" (Left, Right : DomSearchHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DomSearchHelper_Package_References."=";
   subtype DomSearchHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.DomSearchHelper_Package_References.DomSearchHelper_Access_Array_Access_Array;
   function "=" (Left, Right : DomSearchHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DomSearchHelper_Package_References."=";
   subtype DomSearchHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DomSearchHelper_Package_References.DomSearchHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomSearchHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DomSearchHelper_Package_References."=";

   type DomSearchHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomSearchHelper'Class);
   function Create return DomSearchHelper_Access;
   function getNodeNoThrow (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return Node_Access;
   procedure getNodeNoThrow (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);
   function getNode (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return Node_Access;
   procedure getNode (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);
   function getChildNodeList (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return NodeList_Access;
   procedure getChildNodeList (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);
   function getAllNodes (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access;
   procedure getAllNodes (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);
   function getAllNodesNoThrow (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access;
   procedure getAllNodesNoThrow (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);

end org.allbinary.data.tree.dom.DomSearchHelper_Package;


