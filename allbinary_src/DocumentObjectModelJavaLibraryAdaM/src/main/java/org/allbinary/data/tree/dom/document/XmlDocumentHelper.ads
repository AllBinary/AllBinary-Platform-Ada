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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.StringReader_Package; use java.io.StringReader_Package;
--  with java.io.StringWriter_Package; use java.io.StringWriter_Package;
--  with java.io.Writer_Package; use java.io.Writer_Package;
--  with javax.xml.parsers.DocumentBuilderFactory_Package; use javax.xml.parsers.DocumentBuilderFactory_Package;
--  with javax.xml.transform.OutputKeys_Package; use javax.xml.transform.OutputKeys_Package;
--  with javax.xml.transform.Transformer_Package; use javax.xml.transform.Transformer_Package;
--  with javax.xml.transform.TransformerFactory_Package; use javax.xml.transform.TransformerFactory_Package;
--  with javax.xml.transform.dom.DOMSource_Package; use javax.xml.transform.dom.DOMSource_Package;
--  with javax.xml.transform.stream.StreamResult_Package; use javax.xml.transform.stream.StreamResult_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.java.characters.CharacterSetData_Package; use org.allbinary.logic.java.characters.CharacterSetData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.xml.sax.InputSource_Package; use org.xml.sax.InputSource_Package;

package org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package CharacterSetData_Package renames Standard.org.allbinary.logic.java.characters.CharacterSetData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package InputSource_Package renames Standard.org.xml.sax.InputSource_Package;

   type XmlDocumentHelper is tagged;
   type XmlDocumentHelper_Access is access all XmlDocumentHelper'Class;
   type XmlDocumentHelper_Access_Array is array (Natural range <>) of XmlDocumentHelper_Access;
   type XmlDocumentHelper_Access_Array_Access is access all XmlDocumentHelper_Access_Array;

   type XmlDocumentHelper is new Java_Object with record
      logUtil : LogUtil_Access;
      INDENT_NUMBER : Unbounded_String;
      transformer : Transformer_Access;
   end record;
   instance : XmlDocumentHelper_Access;

   procedure Initialize (This : in out XmlDocumentHelper'Class);
   function Create return XmlDocumentHelper_Access;
   function getInstance return XmlDocumentHelper_Access;
   procedure init (This : in out XmlDocumentHelper; indent : Integer; ignoreDeclaration : Boolean);
   function format (This : in out XmlDocumentHelper; xmlString : Unbounded_String) return Unbounded_String;
   procedure format (This : in out XmlDocumentHelper; xmlString : Unbounded_String);
   function toString (document : Document_Access) return Unbounded_String;
   procedure toString (document : Document_Access);

end org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;


