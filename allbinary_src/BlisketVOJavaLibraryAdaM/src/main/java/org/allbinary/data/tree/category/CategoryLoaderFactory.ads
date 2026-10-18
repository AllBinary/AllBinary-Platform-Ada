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
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;

package org.allbinary.data.tree.category.CategoryLoaderFactory_Package is

   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;

   type CategoryLoaderFactory is tagged;
   type CategoryLoaderFactory_Access is access all CategoryLoaderFactory'Class;
   type CategoryLoaderFactory_Access_Array is array (Natural range <>) of CategoryLoaderFactory_Access;
   type CategoryLoaderFactory_Access_Array_Access is access all CategoryLoaderFactory_Access_Array;
   type CategoryLoaderFactory_Access_Array_Access_Array is array (Natural range <>) of CategoryLoaderFactory_Access_Array_Access;
   type CategoryLoaderFactory_Access_Array_Access_Array_Access is access all CategoryLoaderFactory_Access_Array_Access_Array;

   type CategoryLoaderFactory is new Java_Object with null record;

   procedure Initialize (This : in out CategoryLoaderFactory'Class);
   function Create return CategoryLoaderFactory_Access;
   function getInstance (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryLoaderInterface_Access;
   procedure getInstance (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class);

end org.allbinary.data.tree.category.CategoryLoaderFactory_Package;


