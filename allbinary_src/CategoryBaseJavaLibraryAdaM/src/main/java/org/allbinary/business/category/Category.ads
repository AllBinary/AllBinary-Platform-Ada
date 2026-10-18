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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchy_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchy_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;

package org.allbinary.business.category.Category_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryHierarchy_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchy_Package;
   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package CategoryPropertiesFactoryInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface_Package;
   package CategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package RootCategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type Category is tagged;
   type Category_Access is access all Category'Class;
   type Category_Access_Array is array (Natural range <>) of Category_Access;
   type Category_Access_Array_Access is access all Category_Access_Array;

   type Category is new CategoryInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      categoryHierarchyInterface : CategoryHierarchyInterface_Access;
      categoryPropertiesInterface : CategoryPropertiesInterface_Access;
      childCategoryVector : BasicArrayList_Access;
      typeVector : BasicArrayList_Access;
      PROPERTIES : Integer;
      CATEGORY : Integer;
   end record;
   NOT_ROOT : Unbounded_String;

   procedure Initialize (This : in out Category'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class);
   function Create (categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return Category_Access;
   procedure Initialize (This : in out Category'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer);
   function Create (categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class; level : Integer) return Category_Access;
   procedure Initialize (This : in out Category'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class);
   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesFactoryInterface_Param : access CategoryPropertiesFactoryInterface_Package.CategoryPropertiesFactoryInterface'Class) return Category_Access;
   function getKey (This : in out Category) return Java_Object_Access;
   function getRootFilePath (This : in out Category) return AbPath_Access;
   function getFilePath (This : in out Category) return AbPath_Access;
   function getWebAppPath (This : in out Category) return AbPath_Access;
   function getPath (This : in out Category) return AbPath_Access;
   function addChildProperty (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) return Boolean;
   procedure addChildProperty (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class);
   function addChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean;
   procedure addChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function getChildNodes (This : in out Category) return BasicArrayList_Access;
   function removeChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean;
   procedure removeChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   procedure removal (This : in out Category; removalVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function removeDuplicateChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean;
   procedure removeDuplicateChild (This : in out Category; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function isLeaf (This : in out Category) return Boolean;
   function getProperties (This : in out Category) return CategoryPropertiesInterface_Access;
   procedure setProperties (This : in out Category; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class);
   function getHierarchy (This : in out Category) return CategoryHierarchyInterface_Access;
   procedure setHierarchy (This : in out Category; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class);
   function isValid (This : in out Category) return Boolean;
   function toValidationInfoDoc (This : in out Category) return Document_Access;
   function toValidationInfoNode (This : in out Category; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out Category; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out Category) return Unbounded_String;
   function toHashMap (This : in out Category) return HashMap_Access;
   function toVector (This : in out Category) return BasicArrayList_Access;
   procedure log (This : in out Category);

end org.allbinary.business.category.Category_Package;


