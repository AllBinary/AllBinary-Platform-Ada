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
--  with java.io.StringBufferInputStream_Package; use java.io.StringBufferInputStream_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.data.tree.dom.SimpleTransform_Package is

   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package AbFileLocalInputStream_Package renames Standard.org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type SimpleTransform is tagged;
   type SimpleTransform_Access is access all SimpleTransform'Class;
   type SimpleTransform_Access_Array is array (Natural range <>) of SimpleTransform_Access;
   type SimpleTransform_Access_Array_Access is access all SimpleTransform_Access_Array;

   type SimpleTransform is new Java_Object with record
      xsltFilePath : AbPath_Access;
      dataFilePath : AbPath_Access;
   end record;

   procedure Initialize (This : in out SimpleTransform'Class; xsltFilePath : AbPath_Access; dataFilePath : AbPath_Access);
   function Create (xsltFilePath : AbPath_Access; dataFilePath : AbPath_Access) return SimpleTransform_Access;
   function transform (This : in out SimpleTransform) return Unbounded_String;
   procedure transform (This : in out SimpleTransform);

end org.allbinary.data.tree.dom.SimpleTransform_Package;


