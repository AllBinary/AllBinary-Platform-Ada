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

limited with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
package org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References is
   type DomDocumentHelper_Access is access all org.allbinary.data.tree.dom.document.DomDocumentHelper_Package.DomDocumentHelper'Class;
   type DomDocumentHelper_Access_Array is array (Natural range <>) of DomDocumentHelper_Access;
   type DomDocumentHelper_Access_Array_Access is access all DomDocumentHelper_Access_Array;
   type DomDocumentHelper_Access_Array_Access_Array is array (Natural range <>) of DomDocumentHelper_Access_Array_Access;
   type DomDocumentHelper_Access_Array_Access_Array_Access is access all DomDocumentHelper_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References;

with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.StringBufferInputStream_Package; use java.io.StringBufferInputStream_Package;
--  with javax.xml.parsers.DocumentBuilder_Package; use javax.xml.parsers.DocumentBuilder_Package;
--  with javax.xml.parsers.DocumentBuilderFactory_Package; use javax.xml.parsers.DocumentBuilderFactory_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.data.tree.dom.document.DomDocumentHelper_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
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


   subtype DomDocumentHelper_Access is org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References.DomDocumentHelper_Access;
   function "=" (Left, Right : DomDocumentHelper_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References."=";
   subtype DomDocumentHelper_Access_Array is org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References.DomDocumentHelper_Access_Array;
   function "=" (Left, Right : DomDocumentHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References."=";
   subtype DomDocumentHelper_Access_Array_Access is org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References.DomDocumentHelper_Access_Array_Access;
   function "=" (Left, Right : DomDocumentHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References."=";
   subtype DomDocumentHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References.DomDocumentHelper_Access_Array_Access_Array;
   function "=" (Left, Right : DomDocumentHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References."=";
   subtype DomDocumentHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References.DomDocumentHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomDocumentHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package_References."=";

   type DomDocumentHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomDocumentHelper'Class);
   function Create return DomDocumentHelper_Access;
   procedure init;
   function create return Document_Access;
   function create (inputStream_Param : access InputStream_Package.InputStream'Class) return Document_Access;
   procedure create (inputStream_Param : access InputStream_Package.InputStream'Class);
   function create (xmlString : Unbounded_String) return Document_Access;
   procedure create (xmlString : Unbounded_String);

end org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;


