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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package; use org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package;

package org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type IncludeFileExtensionsBooleanFileVisitor is tagged;
   type IncludeFileExtensionsBooleanFileVisitor_Access is access all IncludeFileExtensionsBooleanFileVisitor'Class;
   type IncludeFileExtensionsBooleanFileVisitor_Access_Array is array (Natural range <>) of IncludeFileExtensionsBooleanFileVisitor_Access;
   type IncludeFileExtensionsBooleanFileVisitor_Access_Array_Access is access all IncludeFileExtensionsBooleanFileVisitor_Access_Array;
   type IncludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array is array (Natural range <>) of IncludeFileExtensionsBooleanFileVisitor_Access_Array_Access;
   type IncludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access is access all IncludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array;

   type IncludeFileExtensionsBooleanFileVisitor is new BooleanFileVisitor with null record;

   procedure Initialize (This : in out IncludeFileExtensionsBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return IncludeFileExtensionsBooleanFileVisitor_Access;
   function visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class);
   function visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean;
   procedure visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String);

end org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;


