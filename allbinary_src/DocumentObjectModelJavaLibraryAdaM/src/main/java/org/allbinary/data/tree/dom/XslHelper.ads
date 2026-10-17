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
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
--  with java.io.StringBufferInputStream_Package; use java.io.StringBufferInputStream_Package;
--  with javax.xml.transform.Transformer_Package; use javax.xml.transform.Transformer_Package;
--  with javax.xml.transform.TransformerFactory_Package; use javax.xml.transform.TransformerFactory_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
--  with javax.xml.transform.stream.StreamResult_Package; use javax.xml.transform.stream.StreamResult_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.data.tree.dom.XslHelper_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type XslHelper is tagged;
   type XslHelper_Access is access all XslHelper'Class;
   type XslHelper_Access_Array is array (Natural range <>) of XslHelper_Access;
   type XslHelper_Access_Array_Access is access all XslHelper_Access_Array;

   type XslHelper is new Java_Object with null record;
   instance : XslHelper_Access;

   procedure Initialize (This : in out XslHelper'Class);
   function Create return XslHelper_Access;
   function getInstance return XslHelper_Access;
   procedure getInstance;
   function translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access; streamResult : StreamResult_Access) return OutputStream_Access;
   procedure translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access; streamResult : StreamResult_Access);
   function translate (This : in out XslHelper; resolver : URIResolver_Access; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access; streamResult : StreamResult_Access) return OutputStream_Access;
   procedure translate (This : in out XslHelper; resolver : URIResolver_Access; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access; streamResult : StreamResult_Access);
   function translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlDocument : Document_Access) return Unbounded_String;
   procedure translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlDocument : Document_Access);
   function translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access) return Unbounded_String;
   procedure translate (This : in out XslHelper; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access);
   function translate (This : in out XslHelper; resolver : URIResolver_Access; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access) return Unbounded_String;
   procedure translate (This : in out XslHelper; resolver : URIResolver_Access; xsltStreamSource : StreamSource_Access; xmlStreamSource : StreamSource_Access);
   procedure export (This : in out XslHelper; outputFile : File_Access; xsltFilePath : Unbounded_String; xmlDocument : Document_Access);

end org.allbinary.data.tree.dom.XslHelper_Package;


