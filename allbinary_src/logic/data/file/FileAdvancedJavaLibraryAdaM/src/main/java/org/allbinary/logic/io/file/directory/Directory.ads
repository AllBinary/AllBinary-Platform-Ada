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

limited with org.allbinary.logic.io.file.directory.Directory_Package;
package org.allbinary.logic.io.file.directory.Directory_Package_References is
   type Directory_Access is access all org.allbinary.logic.io.file.directory.Directory_Package.Directory'Class;
   type Directory_Access_Array is array (Natural range <>) of Directory_Access;
   type Directory_Access_Array_Access is access all Directory_Access_Array;
   type Directory_Access_Array_Access_Array is array (Natural range <>) of Directory_Access_Array_Access;
   type Directory_Access_Array_Access_Array_Access is access all Directory_Access_Array_Access_Array;
end org.allbinary.logic.io.file.directory.Directory_Package_References;

with org.allbinary.logic.io.file.directory.Directory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.io.file.directory.Directory_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   function "=" (Left, Right : Directory_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   function "=" (Left, Right : Directory_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   function "=" (Left, Right : Directory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";

   type Directory is new Java_Object with null record;
   instance : Directory_Access;

   procedure Initialize (This : in out Directory'Class);
   function Create return Directory_Access;
   function getInstance return Directory_Access;
   function create (This : in out Directory; directoryAbPath_Param : access AbPath_Package.AbPath'Class) return Boolean;
   procedure create (This : in out Directory; directoryAbPath_Param : access AbPath_Package.AbPath'Class);
   procedure remove (This : in out Directory; existingDirectoryAbPath_Param : access AbPath_Package.AbPath'Class);
   function create (This : in out Directory; directory_Var : Unbounded_String) return Boolean;
   procedure create (This : in out Directory; directory_Var : Unbounded_String);
   procedure remove (This : in out Directory; existingDirectory : Unbounded_String);
   function search (This : in out Directory; fileFilter_Param : access FileFilter_Package.FileFilter'Class; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access;
   procedure search (This : in out Directory; fileFilter_Param : access FileFilter_Package.FileFilter'Class; file_Param : access AbFile_Package.AbFile'Class);
   function search (This : in out Directory; fileFilter_Param : access FileFilter_Package.FileFilter'Class; file_Param : access AbFile_Package.AbFile'Class; isRecursiveSearch : Boolean) return BasicArrayList_Access;
   procedure search (This : in out Directory; fileFilter_Param : access FileFilter_Package.FileFilter'Class; file_Param : access AbFile_Package.AbFile'Class; isRecursiveSearch : Boolean);
   function search (This : in out Directory; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access;
   procedure search (This : in out Directory; file_Param : access AbFile_Package.AbFile'Class);
   function search (This : in out Directory; file_Param : access AbFile_Package.AbFile'Class; isRecursiveSearch : Boolean) return BasicArrayList_Access;
   procedure search (This : in out Directory; file_Param : access AbFile_Package.AbFile'Class; isRecursiveSearch : Boolean);
   function search (This : in out Directory; searchValue : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access;
   procedure search (This : in out Directory; searchValue : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class);
   function search (This : in out Directory; searchValue : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class; isRecursiveSearch : Boolean) return BasicArrayList_Access;
   procedure search (This : in out Directory; searchValue : Unbounded_String; file_Param : access AbFile_Package.AbFile'Class; isRecursiveSearch : Boolean);
   function search (This : in out Directory; level : Integer; file_Param : access AbFile_Package.AbFile'Class) return BasicArrayList_Access;
   procedure search (This : in out Directory; level : Integer; file_Param : access AbFile_Package.AbFile'Class);
   function search (This : in out Directory; level : Integer; file_Param : access AbFile_Package.AbFile'Class; isRecursiveSearch : Boolean) return BasicArrayList_Access;
   procedure search (This : in out Directory; level : Integer; file_Param : access AbFile_Package.AbFile'Class; isRecursiveSearch : Boolean);

end org.allbinary.logic.io.file.directory.Directory_Package;


