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
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;

package org.allbinary.business.category.hierarchy.CategoryHierarchy_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type CategoryHierarchy is tagged;
   type CategoryHierarchy_Access is access all CategoryHierarchy'Class;
   type CategoryHierarchy_Access_Array is array (Natural range <>) of CategoryHierarchy_Access;
   type CategoryHierarchy_Access_Array_Access is access all CategoryHierarchy_Access_Array;

   type CategoryHierarchy is new CategoryHierarchyInterface with record
      rootCategoryInterface : CategoryInterface_Access;
      parentCategoryInterface : CategoryInterface_Access;
      level : Integer;
   end record;

   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryHierarchy_Access;
   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; level : Integer);
   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; level : Integer) return CategoryHierarchy_Access;
   procedure Initialize (This : in out CategoryHierarchy'Class; rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (rootCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; categoryPropertiesHashMap_Param : access HashMap_Package.HashMap'Class) return CategoryHierarchy_Access;
   function getLevel (This : in out CategoryHierarchy) return Integer;
   function getLevelString (This : in out CategoryHierarchy) return Unbounded_String;
   procedure setLevel (This : in out CategoryHierarchy; level : Integer);
   procedure setParent (This : in out CategoryHierarchy; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   procedure setRoot (This : in out CategoryHierarchy; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function getRoot (This : in out CategoryHierarchy) return CategoryInterface_Access;
   function getParent (This : in out CategoryHierarchy) return CategoryInterface_Access;

end org.allbinary.business.category.hierarchy.CategoryHierarchy_Package;


