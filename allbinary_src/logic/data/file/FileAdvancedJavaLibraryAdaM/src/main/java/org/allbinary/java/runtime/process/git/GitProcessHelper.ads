-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
limited with org.allbinary.java.runtime.process.git.GitProcessHelper_Package;
package org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References is
   type GitProcessHelper_Access is access all org.allbinary.java.runtime.process.git.GitProcessHelper_Package.GitProcessHelper'Class;
   type GitProcessHelper_Access_Array is array (Natural range <>) of GitProcessHelper_Access;
   type GitProcessHelper_Access_Array_Access is access all GitProcessHelper_Access_Array;
   type GitProcessHelper_Access_Array_Access_Array is array (Natural range <>) of GitProcessHelper_Access_Array_Access;
   type GitProcessHelper_Access_Array_Access_Array_Access is access all GitProcessHelper_Access_Array_Access_Array;
   type GitProcessHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GitProcessHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : GitProcessHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GitProcessHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GitProcessHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GitProcessHelper_Access_Array_Access is (if Value /= null and then Value.all in GitProcessHelper_Access_Array_Object'Class then GitProcessHelper_Access_Array_Object'Class (Value.all).Value else null);
   type GitProcessHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GitProcessHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GitProcessHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GitProcessHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GitProcessHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GitProcessHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GitProcessHelper_Access_Array_Access_Array_Object'Class then GitProcessHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References;

with org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.nio.charset.StandardCharsets_Package; use java.nio.charset.StandardCharsets_Package;
--  with java.util.List_Package; use java.util.List_Package;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.io.file.directory.TrackedStrings_Package;
with org.allbinary.logic.io.file.directory.TrackedStrings_Package_References;

package org.allbinary.java.runtime.process.git.GitProcessHelper_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package TrackedStrings_Package renames Standard.org.allbinary.logic.io.file.directory.TrackedStrings_Package;
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


   subtype GitProcessHelper_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access;
   function "=" (Left, Right : GitProcessHelper_Access) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   subtype GitProcessHelper_Access_Array is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array;
   function "=" (Left, Right : GitProcessHelper_Access_Array) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   subtype GitProcessHelper_Access_Array_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access;
   function "=" (Left, Right : GitProcessHelper_Access_Array_Access) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   function Java_Box (Value : GitProcessHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.Java_Box;
   function Java_Unbox_GitProcessHelper_Access_Array (Value : access Java_Object'Class) return GitProcessHelper_Access_Array_Access renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.Java_Unbox_GitProcessHelper_Access_Array;
   subtype GitProcessHelper_Access_Array_Access_Array is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GitProcessHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   subtype GitProcessHelper_Access_Array_Access_Array_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GitProcessHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   function Java_Box (Value : GitProcessHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.Java_Box;
   function Java_Unbox_GitProcessHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return GitProcessHelper_Access_Array_Access_Array_Access renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.Java_Unbox_GitProcessHelper_Access_Array_Access_Array;

   type GitProcessHelper is new Java_Object with record
      trackedStrings : TrackedStrings_Access;
   end record;
   instance : GitProcessHelper_Access;

   procedure Initialize (This : in out GitProcessHelper'Class);
   function Create return GitProcessHelper_Access;
   function getInstance return GitProcessHelper_Access;
   function trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String) return List_Access;
   procedure trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String);
   function trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String; suffix : Unbounded_String) return List_Access;
   procedure trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String; suffix : Unbounded_String);
   function isTracked (This : in out GitProcessHelper; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure isTracked (This : in out GitProcessHelper; file_Param : access AbFile_Package.AbFile'Class);

end org.allbinary.java.runtime.process.git.GitProcessHelper_Package;


