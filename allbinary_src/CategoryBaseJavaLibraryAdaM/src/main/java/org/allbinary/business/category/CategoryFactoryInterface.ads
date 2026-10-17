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
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.CategoryFactoryInterface_Package is

   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type CategoryFactoryInterface is interface;
   type CategoryFactoryInterface_Access is access all CategoryFactoryInterface'Class;
   type CategoryFactoryInterface_Access_Array is array (Natural range <>) of CategoryFactoryInterface_Access;
   type CategoryFactoryInterface_Access_Array_Access is access all CategoryFactoryInterface_Access_Array;
   function getRootInstance (This : in out CategoryFactoryInterface) return CategoryInterface_Access is abstract;
   function getRootInstance (This : in out CategoryFactoryInterface; categoryPath : AbPath_Access) return CategoryInterface_Access is abstract;
   function getRootInstanceFromNode (This : in out CategoryFactoryInterface; node : Node_Access) return CategoryInterface_Access is abstract;
   function getInstance (This : in out CategoryFactoryInterface; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; name : Unbounded_String) return CategoryInterface_Access is abstract;
   function getInstance (This : in out CategoryFactoryInterface; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; node : Node_Access) return CategoryInterface_Access is abstract;
   function getInstance (This : in out CategoryFactoryInterface; rootCategoryInterface : CategoryInterface_Access; parentCategoryInterface : CategoryInterface_Access; categoryPropertiesHashMap : HashMap_Access) return CategoryInterface_Access is abstract;

end org.allbinary.business.category.CategoryFactoryInterface_Package;


