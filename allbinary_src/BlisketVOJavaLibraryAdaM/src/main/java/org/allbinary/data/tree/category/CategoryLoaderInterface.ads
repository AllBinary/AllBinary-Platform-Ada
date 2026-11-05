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

limited with org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
package org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References is
   type CategoryLoaderInterface_Access is access all org.allbinary.data.tree.category.CategoryLoaderInterface_Package.CategoryLoaderInterface'Class;
   type CategoryLoaderInterface_Access_Array is array (Natural range <>) of CategoryLoaderInterface_Access;
   type CategoryLoaderInterface_Access_Array_Access is access all CategoryLoaderInterface_Access_Array;
   type CategoryLoaderInterface_Access_Array_Access_Array is array (Natural range <>) of CategoryLoaderInterface_Access_Array_Access;
   type CategoryLoaderInterface_Access_Array_Access_Array_Access is access all CategoryLoaderInterface_Access_Array_Access_Array;
end org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References;

with org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package; use org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package;

package org.allbinary.data.tree.category.CategoryLoaderInterface_Package is

   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type CategoryLoaderInterface is interface and CategoryModifierTreeInterface;
   subtype CategoryLoaderInterface_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access;
   function "=" (Left, Right : CategoryLoaderInterface_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   subtype CategoryLoaderInterface_Access_Array is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array;
   function "=" (Left, Right : CategoryLoaderInterface_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   subtype CategoryLoaderInterface_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryLoaderInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   subtype CategoryLoaderInterface_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryLoaderInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   subtype CategoryLoaderInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryLoaderInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References."=";
   function Java_Object_Access_From_CategoryLoaderInterface (Value : CategoryLoaderInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getDoc (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return Document_Access is abstract;
   procedure getDoc (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is abstract;
   function get (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryInterface_Access is abstract;
   procedure get (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is abstract;
   function getAll (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryInterface_Access is abstract;
   procedure getAll (This : in out CategoryLoaderInterface; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is abstract;

end org.allbinary.data.tree.category.CategoryLoaderInterface_Package;


