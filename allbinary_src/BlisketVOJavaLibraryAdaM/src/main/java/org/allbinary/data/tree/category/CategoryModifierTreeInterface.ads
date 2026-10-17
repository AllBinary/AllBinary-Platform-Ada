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

package org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package is

   package CategoryInterface_Package renames org.allbinary.business.category.CategoryInterface_Package;

   type CategoryModifierTreeInterface is interface;
   type CategoryModifierTreeInterface_Access is access all CategoryModifierTreeInterface'Class;
   type CategoryModifierTreeInterface_Access_Array is array (Natural range <>) of CategoryModifierTreeInterface_Access;
   type CategoryModifierTreeInterface_Access_Array_Access is access all CategoryModifierTreeInterface_Access_Array;
   procedure insert (This : in out CategoryModifierTreeInterface; parentCategoryInterface : CategoryInterface_Access; newChildCategoryInterface : CategoryInterface_Access) is abstract;
   procedure delete (This : in out CategoryModifierTreeInterface; parentCategoryInterface : CategoryInterface_Access; newChildCategoryInterface : CategoryInterface_Access) is abstract;

end org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package;


