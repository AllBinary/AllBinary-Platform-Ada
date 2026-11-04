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

limited with org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package;
package org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References is
   type DomDocumentFileHelper_Access is access all org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package.DomDocumentFileHelper'Class;
   type DomDocumentFileHelper_Access_Array is array (Natural range <>) of DomDocumentFileHelper_Access;
   type DomDocumentFileHelper_Access_Array_Access is access all DomDocumentFileHelper_Access_Array;
   type DomDocumentFileHelper_Access_Array_Access_Array is array (Natural range <>) of DomDocumentFileHelper_Access_Array_Access;
   type DomDocumentFileHelper_Access_Array_Access_Array_Access is access all DomDocumentFileHelper_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References;

with org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References;
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
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
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


   subtype DomDocumentFileHelper_Access is org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References.DomDocumentFileHelper_Access;
   function "=" (Left, Right : DomDocumentFileHelper_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References."=";
   subtype DomDocumentFileHelper_Access_Array is org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References.DomDocumentFileHelper_Access_Array;
   function "=" (Left, Right : DomDocumentFileHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References."=";
   subtype DomDocumentFileHelper_Access_Array_Access is org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References.DomDocumentFileHelper_Access_Array_Access;
   function "=" (Left, Right : DomDocumentFileHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References."=";
   subtype DomDocumentFileHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References.DomDocumentFileHelper_Access_Array_Access_Array;
   function "=" (Left, Right : DomDocumentFileHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References."=";
   subtype DomDocumentFileHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References.DomDocumentFileHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomDocumentFileHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package_References."=";

   type DomDocumentFileHelper is new Java_Object with null record;

   procedure Initialize (This : in out DomDocumentFileHelper'Class);
   function Create return DomDocumentFileHelper_Access;
   function createDocument (xmlFile_Param : access AbFile_Package.AbFile'Class) return Document_Access;
   procedure createDocument (xmlFile_Param : access AbFile_Package.AbFile'Class);
   procedure save (file_Param : access AbFile_Package.AbFile'Class; document_Param : access Document_Package.Document'Class);

end org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package;


