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

limited with org.allbinary.business.category.hierarchy.CategoryHierarchy_Package;
package org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References is
   type CategoryHierarchy_Access is access all org.allbinary.business.category.hierarchy.CategoryHierarchy_Package.CategoryHierarchy'Class;
   type CategoryHierarchy_Access_Array is array (Natural range <>) of CategoryHierarchy_Access;
   type CategoryHierarchy_Access_Array_Access is access all CategoryHierarchy_Access_Array;
   type CategoryHierarchy_Access_Array_Access_Array is array (Natural range <>) of CategoryHierarchy_Access_Array_Access;
   type CategoryHierarchy_Access_Array_Access_Array_Access is access all CategoryHierarchy_Access_Array_Access_Array;
end org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References;

with org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;

package org.allbinary.business.category.hierarchy.CategoryHierarchy_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package Reference_Types is
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


   subtype CategoryHierarchy_Access is org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References.CategoryHierarchy_Access;
   function "=" (Left, Right : CategoryHierarchy_Access) return Boolean renames org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References."=";
   subtype CategoryHierarchy_Access_Array is org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References.CategoryHierarchy_Access_Array;
   function "=" (Left, Right : CategoryHierarchy_Access_Array) return Boolean renames org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References."=";
   subtype CategoryHierarchy_Access_Array_Access is org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References.CategoryHierarchy_Access_Array_Access;
   function "=" (Left, Right : CategoryHierarchy_Access_Array_Access) return Boolean renames org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References."=";
   subtype CategoryHierarchy_Access_Array_Access_Array is org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References.CategoryHierarchy_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryHierarchy_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References."=";
   subtype CategoryHierarchy_Access_Array_Access_Array_Access is org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References.CategoryHierarchy_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryHierarchy_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.hierarchy.CategoryHierarchy_Package_References."=";

   type CategoryHierarchy is new Java_Object and CategoryHierarchyInterface with record
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


