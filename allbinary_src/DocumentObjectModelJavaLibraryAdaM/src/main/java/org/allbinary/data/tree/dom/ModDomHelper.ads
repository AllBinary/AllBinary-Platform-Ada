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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.java.anyType.clazz.ClassUtil_Package; use org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;

package org.allbinary.data.tree.dom.ModDomHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ClassUtil_Package renames Standard.org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ModDomHelper is tagged;
   type ModDomHelper_Access is access all ModDomHelper'Class;
   type ModDomHelper_Access_Array is array (Natural range <>) of ModDomHelper_Access;
   type ModDomHelper_Access_Array_Access is access all ModDomHelper_Access_Array;

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


