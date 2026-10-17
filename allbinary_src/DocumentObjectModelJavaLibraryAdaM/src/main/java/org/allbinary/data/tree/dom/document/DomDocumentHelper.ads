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
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.StringBufferInputStream_Package; use java.io.StringBufferInputStream_Package;
--  with javax.xml.parsers.DocumentBuilder_Package; use javax.xml.parsers.DocumentBuilder_Package;
--  with javax.xml.parsers.DocumentBuilderFactory_Package; use javax.xml.parsers.DocumentBuilderFactory_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.data.tree.dom.document.DomDocumentHelper_Package is

   package Document_Package renames org.w3c.dom.Document_Package;

   type DomDocumentHelper is tagged;
   type DomDocumentHelper_Access is access all DomDocumentHelper'Class;
   type DomDocumentHelper_Access_Array is array (Natural range <>) of DomDocumentHelper_Access;
   type DomDocumentHelper_Access_Array_Access is access all DomDocumentHelper_Access_Array;

   type DomDocumentHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomDocumentHelper'Class);
   function Create return DomDocumentHelper_Access;
   procedure init;
   function create return Document_Access;
   procedure create;
   function create (inputStream : InputStream_Access) return Document_Access;
   procedure create (inputStream : InputStream_Access);
   function create (xmlString : Unbounded_String) return Document_Access;
   procedure create (xmlString : Unbounded_String);

end org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;


