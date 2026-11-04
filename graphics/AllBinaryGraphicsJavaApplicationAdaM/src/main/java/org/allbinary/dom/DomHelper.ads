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

limited with org.allbinary.dom.DomHelper_Package;
package org.allbinary.dom.DomHelper_Package_References is
   type DomHelper_Access is access all org.allbinary.dom.DomHelper_Package.DomHelper'Class;
   type DomHelper_Access_Array is array (Natural range <>) of DomHelper_Access;
   type DomHelper_Access_Array_Access is access all DomHelper_Access_Array;
   type DomHelper_Access_Array_Access_Array is array (Natural range <>) of DomHelper_Access_Array_Access;
   type DomHelper_Access_Array_Access_Array_Access is access all DomHelper_Access_Array_Access_Array;
end org.allbinary.dom.DomHelper_Package_References;

with org.allbinary.dom.DomHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
--  with javax.xml.parsers.DocumentBuilder_Package; use javax.xml.parsers.DocumentBuilder_Package;
--  with javax.xml.parsers.DocumentBuilderFactory_Package; use javax.xml.parsers.DocumentBuilderFactory_Package;
--  with javax.xml.transform.Transformer_Package; use javax.xml.transform.Transformer_Package;
--  with javax.xml.transform.TransformerFactory_Package; use javax.xml.transform.TransformerFactory_Package;
--  with javax.xml.transform.dom.DOMSource_Package; use javax.xml.transform.dom.DOMSource_Package;
--  with javax.xml.transform.stream.StreamResult_Package; use javax.xml.transform.stream.StreamResult_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.w3c.dom.NodeList_Package;
with org.w3c.dom.NodeList_Package_References;

package org.allbinary.dom.DomHelper_Package is

   package File_Package renames Standard.java.io.File_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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


   subtype DomHelper_Access is org.allbinary.dom.DomHelper_Package_References.DomHelper_Access;
   function "=" (Left, Right : DomHelper_Access) return Boolean renames org.allbinary.dom.DomHelper_Package_References."=";
   subtype DomHelper_Access_Array is org.allbinary.dom.DomHelper_Package_References.DomHelper_Access_Array;
   function "=" (Left, Right : DomHelper_Access_Array) return Boolean renames org.allbinary.dom.DomHelper_Package_References."=";
   subtype DomHelper_Access_Array_Access is org.allbinary.dom.DomHelper_Package_References.DomHelper_Access_Array_Access;
   function "=" (Left, Right : DomHelper_Access_Array_Access) return Boolean renames org.allbinary.dom.DomHelper_Package_References."=";
   subtype DomHelper_Access_Array_Access_Array is org.allbinary.dom.DomHelper_Package_References.DomHelper_Access_Array_Access_Array;
   function "=" (Left, Right : DomHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.dom.DomHelper_Package_References."=";
   subtype DomHelper_Access_Array_Access_Array_Access is org.allbinary.dom.DomHelper_Package_References.DomHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.dom.DomHelper_Package_References."=";

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


