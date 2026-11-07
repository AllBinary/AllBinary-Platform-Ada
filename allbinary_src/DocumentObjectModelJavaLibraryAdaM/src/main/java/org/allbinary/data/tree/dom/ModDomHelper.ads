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

limited with org.allbinary.data.tree.dom.ModDomHelper_Package;
package org.allbinary.data.tree.dom.ModDomHelper_Package_References is
   type ModDomHelper_Access is access all org.allbinary.data.tree.dom.ModDomHelper_Package.ModDomHelper'Class;
   type ModDomHelper_Access_Array is array (Natural range <>) of ModDomHelper_Access;
   type ModDomHelper_Access_Array_Access is access all ModDomHelper_Access_Array;
   type ModDomHelper_Access_Array_Access_Array is array (Natural range <>) of ModDomHelper_Access_Array_Access;
   type ModDomHelper_Access_Array_Access_Array_Access is access all ModDomHelper_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.ModDomHelper_Package_References;

with org.allbinary.data.tree.dom.ModDomHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.data.tree.dom.ModDomHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ModDomHelper_Access is org.allbinary.data.tree.dom.ModDomHelper_Package_References.ModDomHelper_Access;
   function "=" (Left, Right : ModDomHelper_Access) return Boolean renames org.allbinary.data.tree.dom.ModDomHelper_Package_References."=";
   subtype ModDomHelper_Access_Array is org.allbinary.data.tree.dom.ModDomHelper_Package_References.ModDomHelper_Access_Array;
   function "=" (Left, Right : ModDomHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.ModDomHelper_Package_References."=";
   subtype ModDomHelper_Access_Array_Access is org.allbinary.data.tree.dom.ModDomHelper_Package_References.ModDomHelper_Access_Array_Access;
   function "=" (Left, Right : ModDomHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.ModDomHelper_Package_References."=";
   subtype ModDomHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.ModDomHelper_Package_References.ModDomHelper_Access_Array_Access_Array;
   function "=" (Left, Right : ModDomHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.ModDomHelper_Package_References."=";
   subtype ModDomHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.ModDomHelper_Package_References.ModDomHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ModDomHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.ModDomHelper_Package_References."=";

   type ModDomHelper is new Java_Object with null record;

   procedure Initialize (This : in out ModDomHelper'Class);
   function Create return ModDomHelper_Access;
   function createTextNode (document_Param : access Document_Package.Document'Class; name : Unbounded_String; text : Unbounded_String) return Node_Access;
   procedure createTextNode (document_Param : access Document_Package.Document'Class; name : Unbounded_String; text : Unbounded_String);
   function createValueNode (document_Param : access Document_Package.Document'Class; text : Unbounded_String) return Node_Access;
   procedure createValueNode (document_Param : access Document_Package.Document'Class; text : Unbounded_String);
   function createNameNode (document_Param : access Document_Package.Document'Class; text : Unbounded_String) return Node_Access;
   procedure createNameNode (document_Param : access Document_Package.Document'Class; text : Unbounded_String);
   function createIndexNode (document_Param : access Document_Package.Document'Class; index : Integer) return Node_Access;
   procedure createIndexNode (document_Param : access Document_Package.Document'Class; index : Integer);
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; elementName : Unbounded_String; nameText : Unbounded_String; valueText : Unbounded_String) return Node_Access;
   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; elementName : Unbounded_String; nameText : Unbounded_String; valueText : Unbounded_String);
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; elementNameAndNameText : Unbounded_String; valueText : Unbounded_String) return Node_Access;
   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; elementNameAndNameText : Unbounded_String; valueText : Unbounded_String);
   function createNameValueIndexNodes (document_Param : access Document_Package.Document'Class; elementNameAndNameText : Unbounded_String; index : Integer; valueText : Unbounded_String) return Node_Access;
   procedure createNameValueIndexNodes (document_Param : access Document_Package.Document'Class; elementNameAndNameText : Unbounded_String; index : Integer; valueText : Unbounded_String);
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; rootNode : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access;
   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; rootNode : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class);
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; hashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access;
   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function createNameValueNodes (document_Param : access Document_Package.Document'Class; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Node_Access;
   procedure createNameValueNodes (document_Param : access Document_Package.Document'Class; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function createNameValueIndexNodes (document_Param : access Document_Package.Document'Class; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Node_Access;
   procedure createNameValueIndexNodes (document_Param : access Document_Package.Document'Class; rootNodeName : Unbounded_String; duplicateNodeName : Unbounded_String; valueVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function createNodeWithValueNodes (document_Param : access Document_Package.Document'Class; rootNode : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access;
   procedure createNodeWithValueNodes (document_Param : access Document_Package.Document'Class; rootNode : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class);
   function createNodeWithValueNodes (document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; hashMap_Param : access HashMap_Package.HashMap'Class) return Node_Access;
   procedure createNodeWithValueNodes (document_Param : access Document_Package.Document'Class; node_Param : access Node_Package.Node'Class; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.data.tree.dom.ModDomHelper_Package;


