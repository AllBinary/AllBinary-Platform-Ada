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
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.TransformInterface_Package is

   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package CompositeTransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;

   type TransformInterface is interface and DomDocumentMappingInterface and CompositeTransformInfoInterface;
   type TransformInterface_Access is access all TransformInterface'Class;
   type TransformInterface_Access_Array is array (Natural range <>) of TransformInterface_Access;
   type TransformInterface_Access_Array_Access is access all TransformInterface_Access_Array;
   function getTypeId (This : in out TransformInterface) return Integer is abstract;
   procedure setTransformDocumentInterface (This : in out TransformInterface; viewDocumentInterface : TransformDocumentInterface_Access) is abstract;
   function getTransformDocumentInterface (This : in out TransformInterface) return TransformDocumentInterface_Access is abstract;
   function view (This : in out TransformInterface) return Unbounded_String is abstract;

end org.allbinary.logic.visual.transform.TransformInterface_Package;


