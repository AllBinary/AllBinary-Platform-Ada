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
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;

package org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package is

   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;

   type CategoryHierarchyInterface is interface;
   type CategoryHierarchyInterface_Access is access all CategoryHierarchyInterface'Class;
   type CategoryHierarchyInterface_Access_Array is array (Natural range <>) of CategoryHierarchyInterface_Access;
   type CategoryHierarchyInterface_Access_Array_Access is access all CategoryHierarchyInterface_Access_Array;
   function getLevel (This : in out CategoryHierarchyInterface) return Integer is abstract;
   function getLevelString (This : in out CategoryHierarchyInterface) return Unbounded_String is abstract;
   function getRoot (This : in out CategoryHierarchyInterface) return CategoryInterface_Access is abstract;
   function getParent (This : in out CategoryHierarchyInterface) return CategoryInterface_Access is abstract;
   procedure setLevel (This : in out CategoryHierarchyInterface; level : Integer) is abstract;
   procedure setRoot (This : in out CategoryHierarchyInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is abstract;
   procedure setParent (This : in out CategoryHierarchyInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is abstract;

end org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;


