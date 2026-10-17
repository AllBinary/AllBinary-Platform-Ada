-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;

package org.allbinary.logic.io.file.directory.DirectoryFileVisitor_Package is

   package VisitorInterface_Package renames Standard.org.allbinary.logic.util.visitor.VisitorInterface_Package;

   type DirectoryFileVisitor is tagged;
   type DirectoryFileVisitor_Access is access all DirectoryFileVisitor'Class;
   type DirectoryFileVisitor_Access_Array is array (Natural range <>) of DirectoryFileVisitor_Access;
   type DirectoryFileVisitor_Access_Array_Access is access all DirectoryFileVisitor_Access_Array;

   type DirectoryFileVisitor is new VisitorInterface and FileFilter with null record;

   procedure Initialize (This : in out DirectoryFileVisitor'Class);
   function Create return DirectoryFileVisitor_Access;
   function accept_Id (This : in out DirectoryFileVisitor; arg0_Param : access File'Class) return Boolean;
   procedure accept_Id (This : in out DirectoryFileVisitor; arg0_Param : access File'Class);
   function visit (This : in out DirectoryFileVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out DirectoryFileVisitor; anyType_Param : access Java_Object'Class);

end org.allbinary.logic.io.file.directory.DirectoryFileVisitor_Package;


