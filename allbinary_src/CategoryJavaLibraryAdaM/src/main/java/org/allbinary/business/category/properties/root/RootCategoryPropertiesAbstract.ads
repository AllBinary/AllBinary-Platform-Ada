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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;

package org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type RootCategoryPropertiesAbstract is tagged;
   type RootCategoryPropertiesAbstract_Access is access all RootCategoryPropertiesAbstract'Class;
   type RootCategoryPropertiesAbstract_Access_Array is array (Natural range <>) of RootCategoryPropertiesAbstract_Access;
   type RootCategoryPropertiesAbstract_Access_Array_Access is access all RootCategoryPropertiesAbstract_Access_Array;

   type RootCategoryPropertiesAbstract is new RootCategoryPropertiesInterface with record
      category : Unbounded_String;
      fileName : Unbounded_String;
   end record;

   procedure Initialize (This : in out RootCategoryPropertiesAbstract'Class);
   function Create return RootCategoryPropertiesAbstract_Access;
   function getKey (This : in out RootCategoryPropertiesAbstract) return Java_Object_Access;
   procedure getKey (This : in out RootCategoryPropertiesAbstract);
   function getValue (This : in out RootCategoryPropertiesAbstract) return Unbounded_String;
   procedure getValue (This : in out RootCategoryPropertiesAbstract);
   procedure setValue (This : in out RootCategoryPropertiesAbstract; value : Unbounded_String);
   procedure setRootFilePath (This : in out RootCategoryPropertiesAbstract; value : AbPath_Access);
   procedure setRootFilePath (This : in out RootCategoryPropertiesAbstract; value : Unbounded_String);
   function getRootFilePath (This : in out RootCategoryPropertiesAbstract) return AbPath_Access;
   procedure getRootFilePath (This : in out RootCategoryPropertiesAbstract);
   function isRealRoot (This : in out RootCategoryPropertiesAbstract) return Boolean;
   procedure isRealRoot (This : in out RootCategoryPropertiesAbstract);
   function isRoot (This : in out RootCategoryPropertiesAbstract) return Boolean;
   procedure isRoot (This : in out RootCategoryPropertiesAbstract);
   function getWebAppPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface : CategoryHierarchyInterface_Access) return Unbounded_String;
   procedure getWebAppPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface : CategoryHierarchyInterface_Access);
   function getPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface : CategoryHierarchyInterface_Access) return AbPath_Access;
   procedure getPath (This : in out RootCategoryPropertiesAbstract; categoryHierarchyInterface : CategoryHierarchyInterface_Access);
   function getFileName (This : in out RootCategoryPropertiesAbstract) return Unbounded_String;
   procedure getFileName (This : in out RootCategoryPropertiesAbstract);
   function isValid (This : in out RootCategoryPropertiesAbstract) return Boolean;
   procedure isValid (This : in out RootCategoryPropertiesAbstract);
   function toHashMap (This : in out RootCategoryPropertiesAbstract) return HashMap_Access;
   procedure toHashMap (This : in out RootCategoryPropertiesAbstract);
   function toVector (This : in out RootCategoryPropertiesAbstract) return BasicArrayList_Access;
   procedure toVector (This : in out RootCategoryPropertiesAbstract);
   function toValidationInfoDoc (This : in out RootCategoryPropertiesAbstract) return Document_Access;
   procedure toValidationInfoDoc (This : in out RootCategoryPropertiesAbstract);
   function toValidationInfoNode (This : in out RootCategoryPropertiesAbstract; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out RootCategoryPropertiesAbstract; document : Document_Access);
   function validationInfo (This : in out RootCategoryPropertiesAbstract) return Unbounded_String;
   procedure validationInfo (This : in out RootCategoryPropertiesAbstract);

end org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract_Package;


