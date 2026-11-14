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
limited with org.allbinary.data.tree.dom.XslHelper_Package;
package org.allbinary.data.tree.dom.XslHelper_Package_References is
   type XslHelper_Access is access all org.allbinary.data.tree.dom.XslHelper_Package.XslHelper'Class;
   type XslHelper_Access_Array is array (Natural range <>) of XslHelper_Access;
   type XslHelper_Access_Array_Access is access all XslHelper_Access_Array;
   type XslHelper_Access_Array_Access_Array is array (Natural range <>) of XslHelper_Access_Array_Access;
   type XslHelper_Access_Array_Access_Array_Access is access all XslHelper_Access_Array_Access_Array;
   type XslHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XslHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : XslHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XslHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XslHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XslHelper_Access_Array_Access is (if Value /= null and then Value.all in XslHelper_Access_Array_Object'Class then XslHelper_Access_Array_Object'Class (Value.all).Value else null);
   type XslHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XslHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : XslHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XslHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XslHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XslHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in XslHelper_Access_Array_Access_Array_Object'Class then XslHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.XslHelper_Package_References;

with org.allbinary.data.tree.dom.XslHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;
--  with java.io.StringBufferInputStream_Package; use java.io.StringBufferInputStream_Package;
--  with javax.xml.transform.Templates_Package; use javax.xml.transform.Templates_Package;
--  with javax.xml.transform.Transformer_Package; use javax.xml.transform.Transformer_Package;
--  with javax.xml.transform.TransformerFactory_Package; use javax.xml.transform.TransformerFactory_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
--  with javax.xml.transform.stream.StreamResult_Package; use javax.xml.transform.stream.StreamResult_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.data.tree.dom.XslHelper_Package is

   package File_Package renames Standard.java.io.File_Package;
   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
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


   subtype XslHelper_Access is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access;
   function "=" (Left, Right : XslHelper_Access) return Boolean renames org.allbinary.data.tree.dom.XslHelper_Package_References."=";
   subtype XslHelper_Access_Array is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access_Array;
   function "=" (Left, Right : XslHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.XslHelper_Package_References."=";
   subtype XslHelper_Access_Array_Access is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access_Array_Access;
   function "=" (Left, Right : XslHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.XslHelper_Package_References."=";
   function Java_Box (Value : XslHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.XslHelper_Package_References.Java_Box;
   function Java_Unbox_XslHelper_Access_Array (Value : access Java_Object'Class) return XslHelper_Access_Array_Access renames org.allbinary.data.tree.dom.XslHelper_Package_References.Java_Unbox_XslHelper_Access_Array;
   subtype XslHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access_Array_Access_Array;
   function "=" (Left, Right : XslHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.XslHelper_Package_References."=";
   subtype XslHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XslHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.XslHelper_Package_References."=";
   function Java_Box (Value : XslHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.XslHelper_Package_References.Java_Box;
   function Java_Unbox_XslHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return XslHelper_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.XslHelper_Package_References.Java_Unbox_XslHelper_Access_Array_Access_Array;

   type XslHelper is new Java_Object with null record;
   instance : XslHelper_Access;

   procedure Initialize (This : in out XslHelper'Class);
   function Create return XslHelper_Access;
   function getInstance return XslHelper_Access;
   function translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class; streamResult_Param : access StreamResult_Package.StreamResult'Class) return OutputStream_Access;
   procedure translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class; streamResult_Param : access StreamResult_Package.StreamResult'Class);
   function translate (This : in out XslHelper; resolver_Param : access URIResolver_Package.URIResolver'Class; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class; streamResult_Param : access StreamResult_Package.StreamResult'Class) return OutputStream_Access;
   procedure translate (This : in out XslHelper; resolver_Param : access URIResolver_Package.URIResolver'Class; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class; streamResult_Param : access StreamResult_Package.StreamResult'Class);
   function translateTemplate (This : in out XslHelper; templates_Param : access Templates_Package.Templates'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class) return Unbounded_String;
   procedure translateTemplate (This : in out XslHelper; templates_Param : access Templates_Package.Templates'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class);
   function translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlDocument_Param : access Document_Package.Document'Class) return Unbounded_String;
   procedure translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlDocument_Param : access Document_Package.Document'Class);
   function translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class) return Unbounded_String;
   procedure translate (This : in out XslHelper; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class);
   function translate (This : in out XslHelper; resolver_Param : access URIResolver_Package.URIResolver'Class; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class) return Unbounded_String;
   procedure translate (This : in out XslHelper; resolver_Param : access URIResolver_Package.URIResolver'Class; xsltStreamSource_Param : access StreamSource_Package.StreamSource'Class; xmlStreamSource_Param : access StreamSource_Package.StreamSource'Class);
   procedure export (This : in out XslHelper; outputFile_Param : access File_Package.File'Class; xsltFilePath : Unbounded_String; xmlDocument_Param : access Document_Package.Document'Class);

end org.allbinary.data.tree.dom.XslHelper_Package;


