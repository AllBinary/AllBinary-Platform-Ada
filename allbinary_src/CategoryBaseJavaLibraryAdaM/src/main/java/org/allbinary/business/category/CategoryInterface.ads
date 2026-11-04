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

limited with org.allbinary.business.category.CategoryInterface_Package;
package org.allbinary.business.category.CategoryInterface_Package_References is
   type CategoryInterface_Access is access all org.allbinary.business.category.CategoryInterface_Package.CategoryInterface'Class;
   type CategoryInterface_Access_Array is array (Natural range <>) of CategoryInterface_Access;
   type CategoryInterface_Access_Array_Access is access all CategoryInterface_Access_Array;
   type CategoryInterface_Access_Array_Access_Array is array (Natural range <>) of CategoryInterface_Access_Array_Access;
   type CategoryInterface_Access_Array_Access_Array_Access is access all CategoryInterface_Access_Array_Access_Array;
end org.allbinary.business.category.CategoryInterface_Package_References;

with org.allbinary.business.category.CategoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References;
limited with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.business.category.CategoryInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CategoryHierarchyInterface_Package renames Standard.org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package CategoryPropertiesInterface_Package renames Standard.org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
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
   subtype CategoryHierarchyInterface_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access;
   use type CategoryHierarchyInterface_Access;
   subtype CategoryHierarchyInterface_Access_Array is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array;
   use type CategoryHierarchyInterface_Access_Array;
   subtype CategoryHierarchyInterface_Access_Array_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access;
   use type CategoryHierarchyInterface_Access_Array_Access;
   subtype CategoryHierarchyInterface_Access_Array_Access_Array is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access_Array;
   use type CategoryHierarchyInterface_Access_Array_Access_Array;
   subtype CategoryHierarchyInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package_References.CategoryHierarchyInterface_Access_Array_Access_Array_Access;
   use type CategoryHierarchyInterface_Access_Array_Access_Array_Access;
   subtype CategoryPropertiesInterface_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access;
   use type CategoryPropertiesInterface_Access;
   subtype CategoryPropertiesInterface_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array;
   use type CategoryPropertiesInterface_Access_Array;
   subtype CategoryPropertiesInterface_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access;
   use type CategoryPropertiesInterface_Access_Array_Access;
   subtype CategoryPropertiesInterface_Access_Array_Access_Array is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array;
   use type CategoryPropertiesInterface_Access_Array_Access_Array;
   subtype CategoryPropertiesInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.properties.CategoryPropertiesInterface_Package_References.CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   use type CategoryPropertiesInterface_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type CategoryInterface is interface and TableMappingInterface and ValidationInterface;
   subtype CategoryInterface_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access;
   function "=" (Left, Right : CategoryInterface_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array;
   function "=" (Left, Right : CategoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   subtype CategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryInterface_Package_References."=";
   function Java_Object_Access_From_CategoryInterface (Value : CategoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getChildNodes (This : in out CategoryInterface) return BasicArrayList_Access is abstract;
   function addChildProperty (This : in out CategoryInterface; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) return Boolean is abstract;
   function addChild (This : in out CategoryInterface; categoryInterface_Var_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean is abstract;
   function removeChild (This : in out CategoryInterface; categoryInterface_Var_Param : access CategoryInterface_Package.CategoryInterface'Class) return Boolean is abstract;
   function isLeaf (This : in out CategoryInterface) return Boolean is abstract;
   function getProperties (This : in out CategoryInterface) return CategoryPropertiesInterface_Access is abstract;
   procedure setProperties (This : in out CategoryInterface; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) is abstract;
   function getHierarchy (This : in out CategoryInterface) return CategoryHierarchyInterface_Access is abstract;
   procedure setHierarchy (This : in out CategoryInterface; categoryHierarchyInterface_Param : access CategoryHierarchyInterface_Package.CategoryHierarchyInterface'Class) is abstract;
   function getPath (This : in out CategoryInterface) return AbPath_Access is abstract;
   function getFilePath (This : in out CategoryInterface) return AbPath_Access is abstract;
   function getWebAppPath (This : in out CategoryInterface) return AbPath_Access is abstract;
   function getRootFilePath (This : in out CategoryInterface) return AbPath_Access is abstract;
   procedure log (This : in out CategoryInterface) is abstract;

end org.allbinary.business.category.CategoryInterface_Package;


