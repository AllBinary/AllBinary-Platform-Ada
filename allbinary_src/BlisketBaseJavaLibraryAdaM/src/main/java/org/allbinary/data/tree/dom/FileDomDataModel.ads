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

limited with org.allbinary.data.tree.dom.FileDomDataModel_Package;
package org.allbinary.data.tree.dom.FileDomDataModel_Package_References is
   type FileDomDataModel_Access is access all org.allbinary.data.tree.dom.FileDomDataModel_Package.FileDomDataModel'Class;
   type FileDomDataModel_Access_Array is array (Natural range <>) of FileDomDataModel_Access;
   type FileDomDataModel_Access_Array_Access is access all FileDomDataModel_Access_Array;
   type FileDomDataModel_Access_Array_Access_Array is array (Natural range <>) of FileDomDataModel_Access_Array_Access;
   type FileDomDataModel_Access_Array_Access_Array_Access is access all FileDomDataModel_Access_Array_Access_Array;
end org.allbinary.data.tree.dom.FileDomDataModel_Package_References;

with org.allbinary.data.tree.dom.FileDomDataModel_Package_References;
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
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.data.tree.dom.FileDomDataModel_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
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


   subtype FileDomDataModel_Access is org.allbinary.data.tree.dom.FileDomDataModel_Package_References.FileDomDataModel_Access;
   function "=" (Left, Right : FileDomDataModel_Access) return Boolean renames org.allbinary.data.tree.dom.FileDomDataModel_Package_References."=";
   subtype FileDomDataModel_Access_Array is org.allbinary.data.tree.dom.FileDomDataModel_Package_References.FileDomDataModel_Access_Array;
   function "=" (Left, Right : FileDomDataModel_Access_Array) return Boolean renames org.allbinary.data.tree.dom.FileDomDataModel_Package_References."=";
   subtype FileDomDataModel_Access_Array_Access is org.allbinary.data.tree.dom.FileDomDataModel_Package_References.FileDomDataModel_Access_Array_Access;
   function "=" (Left, Right : FileDomDataModel_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.FileDomDataModel_Package_References."=";
   subtype FileDomDataModel_Access_Array_Access_Array is org.allbinary.data.tree.dom.FileDomDataModel_Package_References.FileDomDataModel_Access_Array_Access_Array;
   function "=" (Left, Right : FileDomDataModel_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.FileDomDataModel_Package_References."=";
   subtype FileDomDataModel_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.FileDomDataModel_Package_References.FileDomDataModel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileDomDataModel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.FileDomDataModel_Package_References."=";

   type FileDomDataModel is new Java_Object and DomNodeInterface with record
      file : AbFile_Access;
   end record;

   procedure Initialize (This : in out FileDomDataModel'Class; file_Param : access AbFile_Package.AbFile'Class);
   function Create (file_Param : access AbFile_Package.AbFile'Class) return FileDomDataModel_Access;
   function toXmlNode (This : in out FileDomDataModel; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out FileDomDataModel; document_Param : access Document_Package.Document'Class);

end org.allbinary.data.tree.dom.FileDomDataModel_Package;


