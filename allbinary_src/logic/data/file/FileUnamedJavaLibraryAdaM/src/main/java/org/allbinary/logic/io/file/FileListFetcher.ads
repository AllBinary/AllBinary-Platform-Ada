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
with org.allbinary.logic.io.file.directory.SubDirectory_Package; use org.allbinary.logic.io.file.directory.SubDirectory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.io.file.FileListFetcher_Package is

   package SubDirectory_Package renames Standard.org.allbinary.logic.io.file.directory.SubDirectory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type FileListFetcher is tagged;
   type FileListFetcher_Access is access all FileListFetcher'Class;
   type FileListFetcher_Access_Array is array (Natural range <>) of FileListFetcher_Access;
   type FileListFetcher_Access_Array_Access is access all FileListFetcher_Access_Array;
   type FileListFetcher_Access_Array_Access_Array is array (Natural range <>) of FileListFetcher_Access_Array_Access;
   type FileListFetcher_Access_Array_Access_Array_Access is access all FileListFetcher_Access_Array_Access_Array;

   type FileListFetcher is new Java_Object with record
      subDirectory : SubDirectory_Access;
   end record;
   instance : FileListFetcher_Access;

   procedure Initialize (This : in out FileListFetcher'Class);
   function Create return FileListFetcher_Access;
   function getInstance return FileListFetcher_Access;
   function getFiles (This : in out FileListFetcher; path : Unbounded_String) return BasicArrayList_Access;
   procedure getFiles (This : in out FileListFetcher; path : Unbounded_String);
   function getFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtensions : Unbounded_String_Array_Access) return BasicArrayList_Access;
   procedure getFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtensions : Unbounded_String_Array_Access);
   function getFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtension : Unbounded_String) return BasicArrayList_Access;
   procedure getFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtension : Unbounded_String);
   function getFiles (This : in out FileListFetcher; path : Unbounded_String; pathIncludes : Unbounded_String; includeExtension : Unbounded_String) return BasicArrayList_Access;
   procedure getFiles (This : in out FileListFetcher; path : Unbounded_String; pathIncludes : Unbounded_String; includeExtension : Unbounded_String);
   function getTrackedFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtensions : Unbounded_String_Array_Access) return BasicArrayList_Access;
   procedure getTrackedFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtensions : Unbounded_String_Array_Access);
   function getTrackedFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtension : Unbounded_String) return BasicArrayList_Access;
   procedure getTrackedFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtension : Unbounded_String);
   function getDirectories (This : in out FileListFetcher; path : Unbounded_String) return BasicArrayList_Access;
   procedure getDirectories (This : in out FileListFetcher; path : Unbounded_String);

end org.allbinary.logic.io.file.FileListFetcher_Package;


