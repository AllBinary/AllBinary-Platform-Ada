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

limited with org.allbinary.data.tree.category.CategoryModifierTree_Package;
package org.allbinary.data.tree.category.CategoryModifierTree_Package_References is
   type CategoryModifierTree_Access is access all org.allbinary.data.tree.category.CategoryModifierTree_Package.CategoryModifierTree'Class;
   type CategoryModifierTree_Access_Array is array (Natural range <>) of CategoryModifierTree_Access;
   type CategoryModifierTree_Access_Array_Access is access all CategoryModifierTree_Access_Array;
   type CategoryModifierTree_Access_Array_Access_Array is array (Natural range <>) of CategoryModifierTree_Access_Array_Access;
   type CategoryModifierTree_Access_Array_Access_Array_Access is access all CategoryModifierTree_Access_Array_Access_Array;
end org.allbinary.data.tree.category.CategoryModifierTree_Package_References;

with org.allbinary.data.tree.category.CategoryModifierTree_Package_References;
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
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.data.tree.category.CategoryPrivateTree_Package; use org.allbinary.data.tree.category.CategoryPrivateTree_Package;
with org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package; use org.allbinary.data.tree.category.CategoryModifierTreeInterface_Package;

package org.allbinary.data.tree.category.CategoryModifierTree_Package is

   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   use type Directory_Access;
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   use type Directory_Access_Array;
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   use type Directory_Access_Array_Access;
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   use type Directory_Access_Array_Access_Array;
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   use type Directory_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CategoryModifierTree_Access is org.allbinary.data.tree.category.CategoryModifierTree_Package_References.CategoryModifierTree_Access;
   function "=" (Left, Right : CategoryModifierTree_Access) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTree_Package_References."=";
   subtype CategoryModifierTree_Access_Array is org.allbinary.data.tree.category.CategoryModifierTree_Package_References.CategoryModifierTree_Access_Array;
   function "=" (Left, Right : CategoryModifierTree_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTree_Package_References."=";
   subtype CategoryModifierTree_Access_Array_Access is org.allbinary.data.tree.category.CategoryModifierTree_Package_References.CategoryModifierTree_Access_Array_Access;
   function "=" (Left, Right : CategoryModifierTree_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTree_Package_References."=";
   subtype CategoryModifierTree_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryModifierTree_Package_References.CategoryModifierTree_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryModifierTree_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTree_Package_References."=";
   subtype CategoryModifierTree_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryModifierTree_Package_References.CategoryModifierTree_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryModifierTree_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.category.CategoryModifierTree_Package_References."=";

   type CategoryModifierTree is new CategoryPrivateTree and CategoryModifierTreeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      directory : Directory_Access;
   end record;

   procedure Initialize (This : in out CategoryModifierTree'Class; categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class);
   function Create (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryModifierTree_Access;
   procedure insert (This : in out CategoryModifierTree; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; newChildCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   procedure delete (This : in out CategoryModifierTree; parentCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class; existingChildCategoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);

end org.allbinary.data.tree.category.CategoryModifierTree_Package;


