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
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.File_Package; use java.io.File_Package;
--  with javax.xml.parsers.DocumentBuilder_Package; use javax.xml.parsers.DocumentBuilder_Package;
--  with javax.xml.parsers.DocumentBuilderFactory_Package; use javax.xml.parsers.DocumentBuilderFactory_Package;
--  with javax.xml.transform.Transformer_Package; use javax.xml.transform.Transformer_Package;
--  with javax.xml.transform.TransformerFactory_Package; use javax.xml.transform.TransformerFactory_Package;
--  with javax.xml.transform.dom.DOMSource_Package; use javax.xml.transform.dom.DOMSource_Package;
--  with javax.xml.transform.stream.StreamResult_Package; use javax.xml.transform.stream.StreamResult_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.dom.DomHelper_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type DomHelper is tagged;
   type DomHelper_Access is access all DomHelper'Class;
   type DomHelper_Access_Array is array (Natural range <>) of DomHelper_Access;
   type DomHelper_Access_Array_Access is access all DomHelper_Access_Array;

   type DomHelper is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : DomHelper_Access;

   procedure Initialize (This : in out DomHelper'Class);
   function Create return DomHelper_Access;
   function getInstance return DomHelper_Access;
   function createDocument (This : in out DomHelper) return Document_Access;
   function createDocument (This : in out DomHelper; xmlFile_Param : access File_Package.File'Class) return Document_Access;
   procedure createDocument (This : in out DomHelper; xmlFile_Param : access File_Package.File'Class);
   function toString (This : in out DomHelper; document_Param : access Document_Package.Document'Class) return Unbounded_String;
   procedure toString (This : in out DomHelper; document_Param : access Document_Package.Document'Class);
   procedure save (This : in out DomHelper; file_Param : access File_Package.File'Class; document_Param : access Document_Package.Document'Class);
   function getChildNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return NodeList_Access;
   procedure getChildNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);
   function getChildrenWithoutTextNodes (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access;
   procedure getChildrenWithoutTextNodes (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);
   function getWithoutTextNodes (This : in out DomHelper; nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access;
   procedure getWithoutTextNodes (This : in out DomHelper; nodeList_Param : access NodeList_Package.NodeList'Class);
   function searchNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class) return Node_Access;
   procedure searchNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access NodeList_Package.NodeList'Class);
   function searchNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) return Node_Access;
   procedure searchNodeList (This : in out DomHelper; nodeName : Unbounded_String; nodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.dom.DomHelper_Package;


