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
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.FileDomDataModel_Package; use org.allbinary.data.tree.dom.FileDomDataModel_Package;

package org.allbinary.data.tree.dom.DirectoryDataModel_Package is

   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentFactory_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type DirectoryDataModel is tagged;
   type DirectoryDataModel_Access is access all DirectoryDataModel'Class;
   type DirectoryDataModel_Access_Array is array (Natural range <>) of DirectoryDataModel_Access;
   type DirectoryDataModel_Access_Array_Access is access all DirectoryDataModel_Access_Array;

   type DirectoryDataModel is new DomNodeInterface and TransformInterface with record
      fileBasicArrayList : BasicArrayList_Access;
      transformDocumentInterface : TransformDocumentInterface_Access;
      NO_TYPE : Integer;
   end record;

   procedure Initialize (This : in out DirectoryDataModel'Class; file_Param : access AbFile_Package.AbFile'Class);
   function Create (file_Param : access AbFile_Package.AbFile'Class) return DirectoryDataModel_Access;
   function getTypeId (This : in out DirectoryDataModel) return Integer;
   function getTransformInfoInterface (This : in out DirectoryDataModel) return TransformInfoInterface_Access;
   procedure setTransformDocumentInterface (This : in out DirectoryDataModel; transformDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class);
   function getTransformDocumentInterface (This : in out DirectoryDataModel) return TransformDocumentInterface_Access;
   function toXmlNode (This : in out DirectoryDataModel; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out DirectoryDataModel; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out DirectoryDataModel) return Document_Access;
   function view (This : in out DirectoryDataModel) return Unbounded_String;

end org.allbinary.data.tree.dom.DirectoryDataModel_Package;


