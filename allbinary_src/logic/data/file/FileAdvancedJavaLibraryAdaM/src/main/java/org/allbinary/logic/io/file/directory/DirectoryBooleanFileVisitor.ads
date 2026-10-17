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
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;

package org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package VisitorInterface_Package renames Standard.org.allbinary.logic.util.visitor.VisitorInterface_Package;

   type DirectoryBooleanFileVisitor is tagged;
   type DirectoryBooleanFileVisitor_Access is access all DirectoryBooleanFileVisitor'Class;
   type DirectoryBooleanFileVisitor_Access_Array is array (Natural range <>) of DirectoryBooleanFileVisitor_Access;
   type DirectoryBooleanFileVisitor_Access_Array_Access is access all DirectoryBooleanFileVisitor_Access_Array;

   type DirectoryBooleanFileVisitor is new VisitorInterface with null record;

   procedure Initialize (This : in out DirectoryBooleanFileVisitor'Class);
   function Create return DirectoryBooleanFileVisitor_Access;
   function visit (This : in out DirectoryBooleanFileVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out DirectoryBooleanFileVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out DirectoryBooleanFileVisitor; file_Param : access AbFile'Class) return Boolean;
   procedure visit (This : in out DirectoryBooleanFileVisitor; file_Param : access AbFile'Class);

end org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package;


