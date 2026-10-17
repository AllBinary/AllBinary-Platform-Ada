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

package org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package is

   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type ExcludeFileExtensionsBooleanFileVisitor is tagged;
   type ExcludeFileExtensionsBooleanFileVisitor_Access is access all ExcludeFileExtensionsBooleanFileVisitor'Class;
   type ExcludeFileExtensionsBooleanFileVisitor_Access_Array is array (Natural range <>) of ExcludeFileExtensionsBooleanFileVisitor_Access;
   type ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access is access all ExcludeFileExtensionsBooleanFileVisitor_Access_Array;

   type ExcludeFileExtensionsBooleanFileVisitor is new BooleanFileVisitor with null record;

   procedure Initialize (This : in out ExcludeFileExtensionsBooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access);
   function Create (filterStringBasicArrayList : BasicArrayList_Access) return ExcludeFileExtensionsBooleanFileVisitor_Access;
   function visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file : AbFile_Access) return Boolean;
   procedure visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file : AbFile_Access);
   function visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String) return Boolean;
   procedure visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String);

end org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package;


