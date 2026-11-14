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

with AllBinary_Java;
limited with org.allbinary.data.tree.dom.DomNodeHelper_Package;
package org.allbinary.data.tree.dom.DomNodeHelper_Package_References is
   type DomNodeHelper_Access is access all org.allbinary.data.tree.dom.DomNodeHelper_Package.DomNodeHelper'Class;
   type DomNodeHelper_Access_Array is array (Natural range <>) of DomNodeHelper_Access;
   type DomNodeHelper_Access_Array_Access is access all DomNodeHelper_Access_Array;
   type DomNodeHelper_Access_Array_Access_Array is array (Natural range <>) of DomNodeHelper_Access_Array_Access;
   type DomNodeHelper_Access_Array_Access_Array_Access is access all DomNodeHelper_Access_Array_Access_Array;
   type DomNodeHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DomNodeHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : DomNodeHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DomNodeHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DomNodeHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DomNodeHelper_Access_Array_Access is (if Value /= null and then Value.all in DomNodeHelper_Access_Array_Object'Class then DomNodeHelper_Access_Array_Object'Class (Value.all).Value else null);
   type DomNodeHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DomNodeHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DomNodeHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DomNodeHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DomNodeHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DomNodeHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DomNodeHelper_Access_Array_Access_Array_Object'Class then DomNodeHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.DomNodeHelper_Package_References;

with org.allbinary.data.tree.dom.DomNodeHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.w3c.dom.NodeList_Package;
with org.w3c.dom.NodeList_Package_References;

package org.allbinary.data.tree.dom.DomNodeHelper_Package is

   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   package Reference_Types is
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


   subtype DomNodeHelper_Access is org.allbinary.data.tree.dom.DomNodeHelper_Package_References.DomNodeHelper_Access;
   function "=" (Left, Right : DomNodeHelper_Access) return Boolean renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References."=";
   subtype DomNodeHelper_Access_Array is org.allbinary.data.tree.dom.DomNodeHelper_Package_References.DomNodeHelper_Access_Array;
   function "=" (Left, Right : DomNodeHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References."=";
   subtype DomNodeHelper_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeHelper_Package_References.DomNodeHelper_Access_Array_Access;
   function "=" (Left, Right : DomNodeHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References."=";
   function Java_Box (Value : DomNodeHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References.Java_Box;
   function Java_Unbox_DomNodeHelper_Access_Array (Value : access Java_Object'Class) return DomNodeHelper_Access_Array_Access renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References.Java_Unbox_DomNodeHelper_Access_Array;
   subtype DomNodeHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.DomNodeHelper_Package_References.DomNodeHelper_Access_Array_Access_Array;
   function "=" (Left, Right : DomNodeHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References."=";
   subtype DomNodeHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeHelper_Package_References.DomNodeHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomNodeHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References."=";
   function Java_Box (Value : DomNodeHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References.Java_Box;
   function Java_Unbox_DomNodeHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return DomNodeHelper_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.DomNodeHelper_Package_References.Java_Unbox_DomNodeHelper_Access_Array_Access_Array;

   type DomNodeHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomNodeHelper'Class);
   function Create return DomNodeHelper_Access;
   function getFirstChildElement (parentNode_Param : access Node_Package.Node'Class) return Node_Access;
   procedure getFirstChildElement (parentNode_Param : access Node_Package.Node'Class);
   function getTextNodeValue (node_Param : access Node_Package.Node'Class) return Unbounded_String;
   procedure getTextNodeValue (node_Param : access Node_Package.Node'Class);
   function getTextNodeValue (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return Unbounded_String;
   procedure getTextNodeValue (nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);
   function getTextNodesValue (node_Param : access Node_Package.Node'Class) return Unbounded_String;
   procedure getTextNodesValue (node_Param : access Node_Package.Node'Class);

end org.allbinary.data.tree.dom.DomNodeHelper_Package;


