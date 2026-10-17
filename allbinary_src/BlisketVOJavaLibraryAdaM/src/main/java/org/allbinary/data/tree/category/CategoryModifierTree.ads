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
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tree.category.CategoryPrivateTree_Package; use org.allbinary.data.tree.category.CategoryPrivateTree_Package;
with org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package; use org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package;

package org.allbinary.data.tree.category.CategoryModifierTree_Package is

   package CategoryFactoryInterface_Package renames org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames org.allbinary.business.category.CategoryInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package Directory_Package renames org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type CategoryModifierTree is tagged;
   type CategoryModifierTree_Access is access all CategoryModifierTree'Class;
   type CategoryModifierTree_Access_Array is array (Natural range <>) of CategoryModifierTree_Access;
   type CategoryModifierTree_Access_Array_Access is access all CategoryModifierTree_Access_Array;

   type CategoryModifierTree is new CategoryPrivateTree and CategoryModifierTreeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      directory : Directory_Access;
   end record;

   procedure Initialize (This : in out CategoryModifierTree'Class; categoryFactoryInterface : CategoryFactoryInterface_Access);
   function Create (categoryFactoryInterface : CategoryFactoryInterface_Access) return CategoryModifierTree_Access;
   procedure insert (This : in out CategoryModifierTree; parentCategoryInterface : CategoryInterface_Access; newChildCategoryInterface : CategoryInterface_Access);
   procedure delete (This : in out CategoryModifierTree; parentCategoryInterface : CategoryInterface_Access; existingChildCategoryInterface : CategoryInterface_Access);

end org.allbinary.data.tree.category.CategoryModifierTree_Package;


