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
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;

package org.allbinary.logic.io.file.directory.SubDirectory_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type SubDirectory is tagged;
   type SubDirectory_Access is access all SubDirectory'Class;
   type SubDirectory_Access_Array is array (Natural range <>) of SubDirectory_Access;
   type SubDirectory_Access_Array_Access is access all SubDirectory_Access_Array;

   type SubDirectory is new Java_Object with record
      directory : Directory_Access;
   end record;
   instance : SubDirectory_Access;

   procedure Initialize (This : in out SubDirectory'Class);
   function Create return SubDirectory_Access;
   function getInstance return SubDirectory_Access;
   function search (This : in out SubDirectory; fileFilter_Param : access FileFilter_Package.FileFilter'Class; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access;
   procedure search (This : in out SubDirectory; fileFilter_Param : access FileFilter_Package.FileFilter'Class; file_Param : access AbFile_Package.AbFile'Class);
   function search (This : in out SubDirectory; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access;
   procedure search (This : in out SubDirectory; file_Param : access AbFile_Package.AbFile'Class);
   function search (This : in out SubDirectory; searchValue : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access;
   procedure search (This : in out SubDirectory; searchValue : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class);
   function search (This : in out SubDirectory; level : Integer; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access;
   procedure search (This : in out SubDirectory; level : Integer; file_Param : access AbFile_Package.AbFile'Class);
   function toString (files_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String;
   procedure toString (files_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.logic.io.file.directory.SubDirectory_Package;


