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

limited with org.allbinary.logic.io.file.directory.SubDirectory_Package;
package org.allbinary.logic.io.file.directory.SubDirectory_Package_References is
   type SubDirectory_Access is access all org.allbinary.logic.io.file.directory.SubDirectory_Package.SubDirectory'Class;
   type SubDirectory_Access_Array is array (Natural range <>) of SubDirectory_Access;
   type SubDirectory_Access_Array_Access is access all SubDirectory_Access_Array;
   type SubDirectory_Access_Array_Access_Array is array (Natural range <>) of SubDirectory_Access_Array_Access;
   type SubDirectory_Access_Array_Access_Array_Access is access all SubDirectory_Access_Array_Access_Array;
end org.allbinary.logic.io.file.directory.SubDirectory_Package_References;

with org.allbinary.logic.io.file.directory.SubDirectory_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;

package org.allbinary.logic.io.file.directory.SubDirectory_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
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
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   use type Directory_Access;
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   use type Directory_Access_Array;
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   use type Directory_Access_Array_Access;
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   use type Directory_Access_Array_Access_Array;
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   use type Directory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SubDirectory_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access;
   function "=" (Left, Right : SubDirectory_Access) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
   subtype SubDirectory_Access_Array is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array;
   function "=" (Left, Right : SubDirectory_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
   subtype SubDirectory_Access_Array_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access;
   function "=" (Left, Right : SubDirectory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
   subtype SubDirectory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access_Array;
   function "=" (Left, Right : SubDirectory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";
   subtype SubDirectory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SubDirectory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.SubDirectory_Package_References."=";

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


