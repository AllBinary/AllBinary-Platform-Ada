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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package; use org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package;

package org.allbinary.data.tree.category.CategoryLoaderInterface_Package is

   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type CategoryLoaderInterface is interface and CategoryModifierTreeInterface;
   type CategoryLoaderInterface_Access is access all CategoryLoaderInterface'Class;
   type CategoryLoaderInterface_Access_Array is array (Natural range <>) of CategoryLoaderInterface_Access;
   type CategoryLoaderInterface_Access_Array_Access is access all CategoryLoaderInterface_Access_Array;
   function getDoc (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Document_Access is abstract;
   function get (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryInterface_Access is abstract;
   function getAll (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryInterface_Access is abstract;

end org.allbinary.data.tree.category.CategoryLoaderInterface_Package;


