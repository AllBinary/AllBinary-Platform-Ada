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
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.category.CategoryView_Package; use org.allbinary.business.category.CategoryView_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;

package org.allbinary.business.category.CategoryComponent_Package is

   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type CategoryComponent is tagged;
   type CategoryComponent_Access is access all CategoryComponent'Class;
   type CategoryComponent_Access_Array is array (Natural range <>) of CategoryComponent_Access;
   type CategoryComponent_Access_Array_Access is access all CategoryComponent_Access_Array;

   type CategoryComponent is new CategoryView and TransformInterface with record
      NO_TYPE : Integer;
   end record;

   procedure Initialize (This : in out CategoryComponent'Class; categoryInterface : CategoryInterface_Access);
   function Create (categoryInterface : CategoryInterface_Access) return CategoryComponent_Access;
   function getTypeId (This : in out CategoryComponent) return Integer;
   function getTransformDocumentInterface (This : in out CategoryComponent) return TransformDocumentInterface_Access;
   function getTransformInfoInterface (This : in out CategoryComponent) return TransformInfoInterface_Access;
   procedure setTransformDocumentInterface (This : in out CategoryComponent; viewDocumentInterface : TransformDocumentInterface_Access);
   function toXmlDoc (This : in out CategoryComponent) return Document_Access;
   function view (This : in out CategoryComponent) return Unbounded_String;

end org.allbinary.business.category.CategoryComponent_Package;


