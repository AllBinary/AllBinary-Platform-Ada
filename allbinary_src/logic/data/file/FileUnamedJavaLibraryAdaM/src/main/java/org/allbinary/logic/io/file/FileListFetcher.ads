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

with AllBinary_Java;
limited with org.allbinary.logic.io.file.FileListFetcher_Package;
package org.allbinary.logic.io.file.FileListFetcher_Package_References is
   type FileListFetcher_Access is access all org.allbinary.logic.io.file.FileListFetcher_Package.FileListFetcher'Class;
   type FileListFetcher_Access_Array is array (Natural range <>) of FileListFetcher_Access;
   type FileListFetcher_Access_Array_Access is access all FileListFetcher_Access_Array;
   type FileListFetcher_Access_Array_Access_Array is array (Natural range <>) of FileListFetcher_Access_Array_Access;
   type FileListFetcher_Access_Array_Access_Array_Access is access all FileListFetcher_Access_Array_Access_Array;
   type FileListFetcher_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileListFetcher_Access_Array_Access;
   end record;
   function Java_Box (Value : FileListFetcher_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileListFetcher_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileListFetcher_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileListFetcher_Access_Array_Access is (if Value /= null and then Value.all in FileListFetcher_Access_Array_Object'Class then FileListFetcher_Access_Array_Object'Class (Value.all).Value else null);
   type FileListFetcher_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileListFetcher_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileListFetcher_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileListFetcher_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileListFetcher_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileListFetcher_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileListFetcher_Access_Array_Access_Array_Object'Class then FileListFetcher_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.FileListFetcher_Package_References;

with org.allbinary.logic.io.file.FileListFetcher_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.file.directory.SubDirectory_Package;
with org.allbinary.logic.io.file.directory.SubDirectory_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.io.file.FileListFetcher_Package is

   package SubDirectory_Package renames Standard.org.allbinary.logic.io.file.directory.SubDirectory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype SubDirectory_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access;
   use type SubDirectory_Access;
   subtype SubDirectory_Access_Array is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array;
   use type SubDirectory_Access_Array;
   subtype SubDirectory_Access_Array_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access;
   use type SubDirectory_Access_Array_Access;
   subtype SubDirectory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access_Array;
   use type SubDirectory_Access_Array_Access_Array;
   subtype SubDirectory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access_Array_Access;
   use type SubDirectory_Access_Array_Access_Array_Access;
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


   subtype FileListFetcher_Access is org.allbinary.logic.io.file.FileListFetcher_Package_References.FileListFetcher_Access;
   function "=" (Left, Right : FileListFetcher_Access) return Boolean renames org.allbinary.logic.io.file.FileListFetcher_Package_References."=";
   subtype FileListFetcher_Access_Array is org.allbinary.logic.io.file.FileListFetcher_Package_References.FileListFetcher_Access_Array;
   function "=" (Left, Right : FileListFetcher_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileListFetcher_Package_References."=";
   subtype FileListFetcher_Access_Array_Access is org.allbinary.logic.io.file.FileListFetcher_Package_References.FileListFetcher_Access_Array_Access;
   function "=" (Left, Right : FileListFetcher_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileListFetcher_Package_References."=";
   function Java_Box (Value : FileListFetcher_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileListFetcher_Package_References.Java_Box;
   function Java_Unbox_FileListFetcher_Access_Array (Value : access Java_Object'Class) return FileListFetcher_Access_Array_Access renames org.allbinary.logic.io.file.FileListFetcher_Package_References.Java_Unbox_FileListFetcher_Access_Array;
   subtype FileListFetcher_Access_Array_Access_Array is org.allbinary.logic.io.file.FileListFetcher_Package_References.FileListFetcher_Access_Array_Access_Array;
   function "=" (Left, Right : FileListFetcher_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileListFetcher_Package_References."=";
   subtype FileListFetcher_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FileListFetcher_Package_References.FileListFetcher_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileListFetcher_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileListFetcher_Package_References."=";
   function Java_Box (Value : FileListFetcher_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileListFetcher_Package_References.Java_Box;
   function Java_Unbox_FileListFetcher_Access_Array_Access_Array (Value : access Java_Object'Class) return FileListFetcher_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.FileListFetcher_Package_References.Java_Unbox_FileListFetcher_Access_Array_Access_Array;

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


