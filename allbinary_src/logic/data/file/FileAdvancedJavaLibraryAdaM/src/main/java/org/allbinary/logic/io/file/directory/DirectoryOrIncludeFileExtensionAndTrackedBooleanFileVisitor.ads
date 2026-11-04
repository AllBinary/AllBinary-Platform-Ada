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

limited with org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package;
package org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References is
   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access is access all org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class;
   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array is array (Natural range <>) of DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access;
   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access is access all DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array;
   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array is array (Natural range <>) of DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access;
   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array_Access is access all DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array;
end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References;

with org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.java.runtime.process.git.GitProcessHelper_Package;
with org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package; use org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.io.file.directory.TrackedStrings_Package;
with org.allbinary.logic.io.file.directory.TrackedStrings_Package_References;

package org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package is

   package GitProcessHelper_Package renames Standard.org.allbinary.java.runtime.process.git.GitProcessHelper_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package IncludeFileExtensionsBooleanFileVisitor_Package renames Standard.org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GitProcessHelper_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access;
   use type GitProcessHelper_Access;
   subtype GitProcessHelper_Access_Array is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array;
   use type GitProcessHelper_Access_Array;
   subtype GitProcessHelper_Access_Array_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access;
   use type GitProcessHelper_Access_Array_Access;
   subtype GitProcessHelper_Access_Array_Access_Array is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access_Array;
   use type GitProcessHelper_Access_Array_Access_Array;
   subtype GitProcessHelper_Access_Array_Access_Array_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access_Array_Access;
   use type GitProcessHelper_Access_Array_Access_Array_Access;
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype TrackedStrings_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access;
   use type TrackedStrings_Access;
   subtype TrackedStrings_Access_Array is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array;
   use type TrackedStrings_Access_Array;
   subtype TrackedStrings_Access_Array_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access;
   use type TrackedStrings_Access_Array_Access;
   subtype TrackedStrings_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access_Array;
   use type TrackedStrings_Access_Array_Access_Array;
   subtype TrackedStrings_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access_Array_Access;
   use type TrackedStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References."=";
   subtype DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References."=";
   subtype DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References."=";
   subtype DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References."=";
   subtype DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package_References."=";

   type DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor is new IncludeFileExtensionsBooleanFileVisitor with record
      trackedStrings : TrackedStrings_Access;
      gitProcessHelper : GitProcessHelper_Access;
      includesString : Unbounded_String;
   end record;

   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access;
   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; includesString : Unbounded_String);
   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; includesString : Unbounded_String) return DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access;
   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class);
   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean;
   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package;


