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
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.business.category.properties.CategoryPropertiesInterface_Package is

   package CategoryHierarchyInterface_Package renames org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package TableMappingInterface_Package renames org.allbinary.data.tables.TableMappingInterface_Package;
   package ValidationInterface_Package renames org.allbinary.logic.control.validate.ValidationInterface_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;

   type CategoryPropertiesInterface is interface and TableMappingInterface and ValidationInterface;
   type CategoryPropertiesInterface_Access is access all CategoryPropertiesInterface'Class;
   type CategoryPropertiesInterface_Access_Array is array (Natural range <>) of CategoryPropertiesInterface_Access;
   type CategoryPropertiesInterface_Access_Array_Access is access all CategoryPropertiesInterface_Access_Array;
   procedure setValue (This : in out CategoryPropertiesInterface; value : Unbounded_String) is abstract;
   function getValue (This : in out CategoryPropertiesInterface) return Unbounded_String is abstract;
   function getWebAppPath (This : in out CategoryPropertiesInterface) return AbPath_Access is abstract;
   function getPath (This : in out CategoryPropertiesInterface; categoryHierarchyInterface : CategoryHierarchyInterface_Access) return AbPath_Access is abstract;
   function getFileName (This : in out CategoryPropertiesInterface) return Unbounded_String is abstract;
   function isRoot (This : in out CategoryPropertiesInterface) return Boolean is abstract;
   function isRealRoot (This : in out CategoryPropertiesInterface) return Boolean is abstract;

end org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;


