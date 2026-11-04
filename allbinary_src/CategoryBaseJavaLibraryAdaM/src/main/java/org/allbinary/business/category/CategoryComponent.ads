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

limited with org.allbinary.business.category.CategoryComponent_Package;
package org.allbinary.business.category.CategoryComponent_Package_References is
   type CategoryComponent_Access is access all org.allbinary.business.category.CategoryComponent_Package.CategoryComponent'Class;
   type CategoryComponent_Access_Array is array (Natural range <>) of CategoryComponent_Access;
   type CategoryComponent_Access_Array_Access is access all CategoryComponent_Access_Array;
   type CategoryComponent_Access_Array_Access_Array is array (Natural range <>) of CategoryComponent_Access_Array_Access;
   type CategoryComponent_Access_Array_Access_Array_Access is access all CategoryComponent_Access_Array_Access_Array;
end org.allbinary.business.category.CategoryComponent_Package_References;

with org.allbinary.business.category.CategoryComponent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.allbinary.business.category.CategoryView_Package; use org.allbinary.business.category.CategoryView_Package;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;

package org.allbinary.business.category.CategoryComponent_Package is

   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
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
   subtype CategoryInterface_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access;
   use type CategoryInterface_Access;
   subtype CategoryInterface_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array;
   use type CategoryInterface_Access_Array;
   subtype CategoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access;
   subtype CategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array;
   use type CategoryInterface_Access_Array_Access_Array;
   subtype CategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CategoryComponent_Access is org.allbinary.business.category.CategoryComponent_Package_References.CategoryComponent_Access;
   function "=" (Left, Right : CategoryComponent_Access) return Boolean renames org.allbinary.business.category.CategoryComponent_Package_References."=";
   subtype CategoryComponent_Access_Array is org.allbinary.business.category.CategoryComponent_Package_References.CategoryComponent_Access_Array;
   function "=" (Left, Right : CategoryComponent_Access_Array) return Boolean renames org.allbinary.business.category.CategoryComponent_Package_References."=";
   subtype CategoryComponent_Access_Array_Access is org.allbinary.business.category.CategoryComponent_Package_References.CategoryComponent_Access_Array_Access;
   function "=" (Left, Right : CategoryComponent_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryComponent_Package_References."=";
   subtype CategoryComponent_Access_Array_Access_Array is org.allbinary.business.category.CategoryComponent_Package_References.CategoryComponent_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryComponent_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryComponent_Package_References."=";
   subtype CategoryComponent_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryComponent_Package_References.CategoryComponent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryComponent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryComponent_Package_References."=";

   type CategoryComponent is new CategoryView and TransformInterface with record
      NO_TYPE : Integer;
   end record;

   procedure Initialize (This : in out CategoryComponent'Class; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function Create (categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryComponent_Access;
   function getTypeId (This : in out CategoryComponent) return Integer;
   function getTransformDocumentInterface (This : in out CategoryComponent) return TransformDocumentInterface_Access;
   function getTransformInfoInterface (This : in out CategoryComponent) return TransformInfoInterface_Access;
   procedure setTransformDocumentInterface (This : in out CategoryComponent; viewDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class);
   function toXmlDoc (This : in out CategoryComponent) return Document_Access;
   function view (This : in out CategoryComponent) return Unbounded_String;

end org.allbinary.business.category.CategoryComponent_Package;


