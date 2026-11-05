-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
package org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References is
   type XmlDocumentHelper_Access is access all org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package.XmlDocumentHelper'Class;
   type XmlDocumentHelper_Access_Array is array (Natural range <>) of XmlDocumentHelper_Access;
   type XmlDocumentHelper_Access_Array_Access is access all XmlDocumentHelper_Access_Array;
   type XmlDocumentHelper_Access_Array_Access_Array is array (Natural range <>) of XmlDocumentHelper_Access_Array_Access;
   type XmlDocumentHelper_Access_Array_Access_Array_Access is access all XmlDocumentHelper_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References;

with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.StringReader_Package; use java.io.StringReader_Package;
--  with java.io.StringWriter_Package; use java.io.StringWriter_Package;
--  with java.io.Writer_Package; use java.io.Writer_Package;
--  with javax.xml.parsers.DocumentBuilderFactory_Package; use javax.xml.parsers.DocumentBuilderFactory_Package;
--  with javax.xml.transform.OutputKeys_Package; use javax.xml.transform.OutputKeys_Package;
--  with javax.xml.transform.Transformer_Package; use javax.xml.transform.Transformer_Package;
--  with javax.xml.transform.TransformerConfigurationException_Package; use javax.xml.transform.TransformerConfigurationException_Package;
--  with javax.xml.transform.TransformerFactory_Package; use javax.xml.transform.TransformerFactory_Package;
--  with javax.xml.transform.dom.DOMSource_Package; use javax.xml.transform.dom.DOMSource_Package;
--  with javax.xml.transform.stream.StreamResult_Package; use javax.xml.transform.stream.StreamResult_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype XmlDocumentHelper_Access is org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References.XmlDocumentHelper_Access;
   function "=" (Left, Right : XmlDocumentHelper_Access) return Boolean renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References."=";
   subtype XmlDocumentHelper_Access_Array is org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References.XmlDocumentHelper_Access_Array;
   function "=" (Left, Right : XmlDocumentHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References."=";
   subtype XmlDocumentHelper_Access_Array_Access is org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References.XmlDocumentHelper_Access_Array_Access;
   function "=" (Left, Right : XmlDocumentHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References."=";
   subtype XmlDocumentHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References.XmlDocumentHelper_Access_Array_Access_Array;
   function "=" (Left, Right : XmlDocumentHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References."=";
   subtype XmlDocumentHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References.XmlDocumentHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlDocumentHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package_References."=";

   type XmlDocumentHelper is new Java_Object with record
      logUtil : LogUtil_Access;
      INDENT_NUMBER : Unbounded_String;
      indent : Integer;
      ignoreDeclaration : Boolean;
   end record;
   instance : XmlDocumentHelper_Access;

   procedure Initialize (This : in out XmlDocumentHelper'Class);
   function Create return XmlDocumentHelper_Access;
   function getInstance return XmlDocumentHelper_Access;
   procedure init (This : in out XmlDocumentHelper; indent : Integer; ignoreDeclaration : Boolean);
   function createTransformer (This : in out XmlDocumentHelper; indent : Integer; ignoreDeclaration : Boolean) return Transformer_Access;
   procedure createTransformer (This : in out XmlDocumentHelper; indent : Integer; ignoreDeclaration : Boolean);
   function createTransformer (This : in out XmlDocumentHelper) return Transformer_Access;
   function format (This : in out XmlDocumentHelper; xmlString : Unbounded_String) return Unbounded_String;
   procedure format (This : in out XmlDocumentHelper; xmlString : Unbounded_String);
   function formatWithTransformer (This : in out XmlDocumentHelper; xmlString : Unbounded_String; transformer_Param : access Transformer_Package.Transformer'Class) return Unbounded_String;
   procedure formatWithTransformer (This : in out XmlDocumentHelper; xmlString : Unbounded_String; transformer_Param : access Transformer_Package.Transformer'Class);
   function toString (document_Param : access Document_Package.Document'Class) return Unbounded_String;
   procedure toString (document_Param : access Document_Package.Document'Class);

end org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;


