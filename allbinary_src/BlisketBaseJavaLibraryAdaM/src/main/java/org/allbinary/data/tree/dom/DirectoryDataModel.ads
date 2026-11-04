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

limited with org.allbinary.data.tree.dom.DirectoryDataModel_Package;
package org.allbinary.data.tree.dom.DirectoryDataModel_Package_References is
   type DirectoryDataModel_Access is access all org.allbinary.data.tree.dom.DirectoryDataModel_Package.DirectoryDataModel'Class;
   type DirectoryDataModel_Access_Array is array (Natural range <>) of DirectoryDataModel_Access;
   type DirectoryDataModel_Access_Array_Access is access all DirectoryDataModel_Access_Array;
   type DirectoryDataModel_Access_Array_Access_Array is array (Natural range <>) of DirectoryDataModel_Access_Array_Access;
   type DirectoryDataModel_Access_Array_Access_Array_Access is access all DirectoryDataModel_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.DirectoryDataModel_Package_References;

with org.allbinary.data.tree.dom.DirectoryDataModel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.data.tree.dom.DirectoryDataModel_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   use type TransformDocumentInterface_Access;
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   use type TransformDocumentInterface_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access;
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   use type TransformDocumentInterface_Access_Array_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DirectoryDataModel_Access is org.allbinary.data.tree.dom.DirectoryDataModel_Package_References.DirectoryDataModel_Access;
   function "=" (Left, Right : DirectoryDataModel_Access) return Boolean renames org.allbinary.data.tree.dom.DirectoryDataModel_Package_References."=";
   subtype DirectoryDataModel_Access_Array is org.allbinary.data.tree.dom.DirectoryDataModel_Package_References.DirectoryDataModel_Access_Array;
   function "=" (Left, Right : DirectoryDataModel_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DirectoryDataModel_Package_References."=";
   subtype DirectoryDataModel_Access_Array_Access is org.allbinary.data.tree.dom.DirectoryDataModel_Package_References.DirectoryDataModel_Access_Array_Access;
   function "=" (Left, Right : DirectoryDataModel_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DirectoryDataModel_Package_References."=";
   subtype DirectoryDataModel_Access_Array_Access_Array is org.allbinary.data.tree.dom.DirectoryDataModel_Package_References.DirectoryDataModel_Access_Array_Access_Array;
   function "=" (Left, Right : DirectoryDataModel_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DirectoryDataModel_Package_References."=";
   subtype DirectoryDataModel_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DirectoryDataModel_Package_References.DirectoryDataModel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectoryDataModel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DirectoryDataModel_Package_References."=";

   type DirectoryDataModel is new Java_Object and DomNodeInterface and TransformInterface with record
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


