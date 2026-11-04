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

limited with org.allbinary.data.tree.category.CategoryLoaderFactory_Package;
package org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References is
   type CategoryLoaderFactory_Access is access all org.allbinary.data.tree.category.CategoryLoaderFactory_Package.CategoryLoaderFactory'Class;
   type CategoryLoaderFactory_Access_Array is array (Natural range <>) of CategoryLoaderFactory_Access;
   type CategoryLoaderFactory_Access_Array_Access is access all CategoryLoaderFactory_Access_Array;
   type CategoryLoaderFactory_Access_Array_Access_Array is array (Natural range <>) of CategoryLoaderFactory_Access_Array_Access;
   type CategoryLoaderFactory_Access_Array_Access_Array_Access is access all CategoryLoaderFactory_Access_Array_Access_Array;
end org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References;

with org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package_References;
limited with org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References;

package org.allbinary.data.tree.category.CategoryLoaderFactory_Package is

   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package Reference_Types is
   subtype CategoryFactoryInterface_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access;
   use type CategoryFactoryInterface_Access;
   subtype CategoryFactoryInterface_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array;
   use type CategoryFactoryInterface_Access_Array;
   subtype CategoryFactoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access;
   use type CategoryFactoryInterface_Access_Array_Access;
   subtype CategoryFactoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array;
   use type CategoryFactoryInterface_Access_Array_Access_Array;
   subtype CategoryFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryFactoryInterface_Package_References.CategoryFactoryInterface_Access_Array_Access_Array_Access;
   use type CategoryFactoryInterface_Access_Array_Access_Array_Access;
   subtype CategoryLoaderInterface_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access;
   use type CategoryLoaderInterface_Access;
   subtype CategoryLoaderInterface_Access_Array is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array;
   use type CategoryLoaderInterface_Access_Array;
   subtype CategoryLoaderInterface_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access;
   use type CategoryLoaderInterface_Access_Array_Access;
   subtype CategoryLoaderInterface_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access_Array;
   use type CategoryLoaderInterface_Access_Array_Access_Array;
   subtype CategoryLoaderInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access_Array_Access;
   use type CategoryLoaderInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CategoryLoaderFactory_Access is org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References.CategoryLoaderFactory_Access;
   function "=" (Left, Right : CategoryLoaderFactory_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References."=";
   subtype CategoryLoaderFactory_Access_Array is org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References.CategoryLoaderFactory_Access_Array;
   function "=" (Left, Right : CategoryLoaderFactory_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References."=";
   subtype CategoryLoaderFactory_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References.CategoryLoaderFactory_Access_Array_Access;
   function "=" (Left, Right : CategoryLoaderFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References."=";
   subtype CategoryLoaderFactory_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References.CategoryLoaderFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryLoaderFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References."=";
   subtype CategoryLoaderFactory_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References.CategoryLoaderFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryLoaderFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderFactory_Package_References."=";

   type CategoryLoaderFactory is new Java_Object with null record;

   procedure Initialize (This : in out CategoryLoaderFactory'Class);
   function Create return CategoryLoaderFactory_Access;
   function getInstance (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryLoaderInterface_Access;
   procedure getInstance (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class);

end org.allbinary.data.tree.category.CategoryLoaderFactory_Package;


