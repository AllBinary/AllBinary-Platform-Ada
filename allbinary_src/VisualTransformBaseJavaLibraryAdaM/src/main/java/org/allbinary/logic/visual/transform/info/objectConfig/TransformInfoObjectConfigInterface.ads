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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type TransformInfoObjectConfigInterface is interface and DomDocumentMappingInterface;
   type TransformInfoObjectConfigInterface_Access is access all TransformInfoObjectConfigInterface'Class;
   type TransformInfoObjectConfigInterface_Access_Array is array (Natural range <>) of TransformInfoObjectConfigInterface_Access;
   type TransformInfoObjectConfigInterface_Access_Array_Access is access all TransformInfoObjectConfigInterface_Access_Array;
   function containsView (This : in out TransformInfoObjectConfigInterface; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Boolean is abstract;
   function getName (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   function getTransformsGroup (This : in out TransformInfoObjectConfigInterface; group : Unbounded_String) return BasicArrayList_Access is abstract;
   function getTransforms (This : in out TransformInfoObjectConfigInterface) return BasicArrayList_Access is abstract;
   function getParentTransforms (This : in out TransformInfoObjectConfigInterface) return BasicArrayList_Access is abstract;
   function getGroupTransforms (This : in out TransformInfoObjectConfigInterface) return BasicArrayList_Access is abstract;
   function getOutputTypeName (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   procedure setOutputTypeName (This : in out TransformInfoObjectConfigInterface; value : Unbounded_String) is abstract;
   function getInputOutputTypeName (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   function getInputOutputTypeFile (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   function getImportUriPath (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;
   function toString (This : in out TransformInfoObjectConfigInterface) return Unbounded_String is abstract;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;


