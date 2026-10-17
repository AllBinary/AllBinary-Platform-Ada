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
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.business.category.CategoryInterface_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package CategoryHierarchyInterface_Package renames org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package CategoryPropertiesInterface_Package renames org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;
   package TableMappingInterface_Package renames org.allbinary.data.tables.TableMappingInterface_Package;
   package ValidationInterface_Package renames org.allbinary.logic.control.validate.ValidationInterface_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;

   type CategoryInterface is interface and TableMappingInterface and ValidationInterface;
   type CategoryInterface_Access is access all CategoryInterface'Class;
   type CategoryInterface_Access_Array is array (Natural range <>) of CategoryInterface_Access;
   type CategoryInterface_Access_Array_Access is access all CategoryInterface_Access_Array;
   function getChildNodes (This : in out CategoryInterface) return BasicArrayList_Access is abstract;
   function addChildProperty (This : in out CategoryInterface; categoryPropertiesInterface : CategoryPropertiesInterface_Access) return Boolean is abstract;
   function addChild (This : in out CategoryInterface; categoryInterface : CategoryInterface_Access) return Boolean is abstract;
   function removeChild (This : in out CategoryInterface; categoryInterface : CategoryInterface_Access) return Boolean is abstract;
   function isLeaf (This : in out CategoryInterface) return Boolean is abstract;
   function getProperties (This : in out CategoryInterface) return CategoryPropertiesInterface_Access is abstract;
   procedure setProperties (This : in out CategoryInterface; categoryPropertiesInterface : CategoryPropertiesInterface_Access) is abstract;
   function getHierarchy (This : in out CategoryInterface) return CategoryHierarchyInterface_Access is abstract;
   procedure setHierarchy (This : in out CategoryInterface; categoryHierarchyInterface : CategoryHierarchyInterface_Access) is abstract;
   function getPath (This : in out CategoryInterface) return AbPath_Access is abstract;
   function getFilePath (This : in out CategoryInterface) return AbPath_Access is abstract;
   function getWebAppPath (This : in out CategoryInterface) return AbPath_Access is abstract;
   function getRootFilePath (This : in out CategoryInterface) return AbPath_Access is abstract;
   procedure log (This : in out CategoryInterface) is abstract;

end org.allbinary.business.category.CategoryInterface_Package;


