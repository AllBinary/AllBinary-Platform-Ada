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
with org.allbinary.java.runtime.process.git.GitProcessHelper_Package; use org.allbinary.java.runtime.process.git.GitProcessHelper_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.CommonDataFileStrings_Package; use org.allbinary.logic.io.file.CommonDataFileStrings_Package;
with org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package; use org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.io.file.directory.TrackedStrings_Package; use org.allbinary.logic.io.file.directory.TrackedStrings_Package;

package org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package is

   package GitProcessHelper_Package renames Standard.org.allbinary.java.runtime.process.git.GitProcessHelper_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package CommonDataFileStrings_Package renames Standard.org.allbinary.logic.io.file.CommonDataFileStrings_Package;
   package IncludeFileExtensionsBooleanFileVisitor_Package renames Standard.org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor is tagged;
   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access is access all DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class;
   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array is array (Natural range <>) of DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access;
   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access is access all DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array;

   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor is new IncludeFileExtensionsBooleanFileVisitor with record
      trackedStrings : TrackedStrings_Access;
      gitProcessHelper : GitProcessHelper_Access;
      includesString : Unbounded_String;
   end record;

   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access);
   function Create (filterStringBasicArrayList : BasicArrayList_Access) return DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access;
   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file : AbFile_Access) return Boolean;
   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file : AbFile_Access);
   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String) return Boolean;
   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package;


