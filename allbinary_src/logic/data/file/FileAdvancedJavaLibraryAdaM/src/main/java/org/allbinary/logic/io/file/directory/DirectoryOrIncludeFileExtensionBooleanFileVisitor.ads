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
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package; use org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package is

   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package IncludeFileExtensionsBooleanFileVisitor_Package renames org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type DirectoryOrIncludeFileExtensionBooleanFileVisitor is tagged;
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access is access all DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class;
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array is array (Natural range <>) of DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access;
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access is access all DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array;

   type DirectoryOrIncludeFileExtensionBooleanFileVisitor is new IncludeFileExtensionsBooleanFileVisitor with record
      includesString : Unbounded_String;
   end record;

   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access);
   function Create (filterStringBasicArrayList : BasicArrayList_Access) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access;
   function visit (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor; file : AbFile_Access) return Boolean;
   procedure visit (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor; file : AbFile_Access);

end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package;


