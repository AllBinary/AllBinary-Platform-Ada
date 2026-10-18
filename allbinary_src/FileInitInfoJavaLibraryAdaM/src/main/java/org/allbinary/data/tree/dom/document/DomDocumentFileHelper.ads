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
--  with javax.xml.transform.Transformer_Package; use javax.xml.transform.Transformer_Package;
--  with javax.xml.transform.TransformerFactory_Package; use javax.xml.transform.TransformerFactory_Package;
--  with javax.xml.transform.dom.DOMSource_Package; use javax.xml.transform.dom.DOMSource_Package;
--  with javax.xml.transform.stream.StreamResult_Package; use javax.xml.transform.stream.StreamResult_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type DomDocumentFileHelper is tagged;
   type DomDocumentFileHelper_Access is access all DomDocumentFileHelper'Class;
   type DomDocumentFileHelper_Access_Array is array (Natural range <>) of DomDocumentFileHelper_Access;
   type DomDocumentFileHelper_Access_Array_Access is access all DomDocumentFileHelper_Access_Array;
   type DomDocumentFileHelper_Access_Array_Access_Array is array (Natural range <>) of DomDocumentFileHelper_Access_Array_Access;
   type DomDocumentFileHelper_Access_Array_Access_Array_Access is access all DomDocumentFileHelper_Access_Array_Access_Array;

   type DomDocumentFileHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomDocumentFileHelper'Class);
   function Create return DomDocumentFileHelper_Access;
   function createDocument (xmlFile_Param : access AbFile_Package.AbFile'Class) return Document_Access;
   procedure createDocument (xmlFile_Param : access AbFile_Package.AbFile'Class);
   procedure save (file_Param : access AbFile_Package.AbFile'Class; document_Param : access Document_Package.Document'Class);

end org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package;


