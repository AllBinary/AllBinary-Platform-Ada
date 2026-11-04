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

limited with org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package;
package org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References is
   type CategoryModifierTreeInterface_Access is access all org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package.CategoryModifierTreeInterface'Class;
   type CategoryModifierTreeInterface_Access_Array is array (Natural range <>) of CategoryModifierTreeInterface_Access;
   type CategoryModifierTreeInterface_Access_Array_Access is access all CategoryModifierTreeInterface_Access_Array;
   type CategoryModifierTreeInterface_Access_Array_Access_Array is array (Natural range <>) of CategoryModifierTreeInterface_Access_Array_Access;
   type CategoryModifierTreeInterface_Access_Array_Access_Array_Access is access all CategoryModifierTreeInterface_Access_Array_Access_Array;
end org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References;

with org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References;
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

package org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package is

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


   type CategoryModifierTreeInterface is interface;
   subtype CategoryModifierTreeInterface_Access is org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References.CategoryModifierTreeInterface_Access;
   function "=" (Left, Right : CategoryModifierTreeInterface_Access) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References."=";
   subtype CategoryModifierTreeInterface_Access_Array is org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References.CategoryModifierTreeInterface_Access_Array;
   function "=" (Left, Right : CategoryModifierTreeInterface_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References."=";
   subtype CategoryModifierTreeInterface_Access_Array_Access is org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References.CategoryModifierTreeInterface_Access_Array_Access;
   function "=" (Left, Right : CategoryModifierTreeInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References."=";
   subtype CategoryModifierTreeInterface_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References.CategoryModifierTreeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryModifierTreeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References."=";
   subtype CategoryModifierTreeInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References.CategoryModifierTreeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryModifierTreeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package_References."=";
   function Java_Object_Access_From_CategoryModifierTreeInterface (Value : CategoryModifierTreeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure insert (This : in out CategoryModifierTreeInterface; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; newChildCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is abstract;
   procedure delete (This : in out CategoryModifierTreeInterface; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; newChildCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is abstract;

end org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package;


