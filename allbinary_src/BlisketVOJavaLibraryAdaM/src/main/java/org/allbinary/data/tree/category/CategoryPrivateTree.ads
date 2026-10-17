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
with org.allbinary.business.category.CategoryComponent_Package; use org.allbinary.business.category.CategoryComponent_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.category.CategoryFactoryInterface_Package; use org.allbinary.business.category.CategoryFactoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.crypt.file.CryptFileWriter_Package; use org.allbinary.logic.control.crypt.file.CryptFileWriter_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.data.tree.category.CategoryPrivateTree_Package is

   package CategoryComponent_Package renames Standard.org.allbinary.business.category.CategoryComponent_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package CategoryFactoryInterface_Package renames Standard.org.allbinary.business.category.CategoryFactoryInterface_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CryptFileWriter_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileWriter_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type CategoryPrivateTree is tagged;
   type CategoryPrivateTree_Access is access all CategoryPrivateTree'Class;
   type CategoryPrivateTree_Access_Array is array (Natural range <>) of CategoryPrivateTree_Access;
   type CategoryPrivateTree_Access_Array_Access is access all CategoryPrivateTree_Access_Array;

   type CategoryPrivateTree is new Java_Object with record
      logUtil : LogUtil_Access;
      categoryFactoryInterface : CategoryFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out CategoryPrivateTree'Class; categoryFactoryInterface : CategoryFactoryInterface_Access);
   function Create (categoryFactoryInterface : CategoryFactoryInterface_Access) return CategoryPrivateTree_Access;
   procedure save (This : in out CategoryPrivateTree; categoryInterface : CategoryInterface_Access);
   procedure delete (This : in out CategoryPrivateTree; categoryInterface : CategoryInterface_Access);

end org.allbinary.data.tree.category.CategoryPrivateTree_Package;


