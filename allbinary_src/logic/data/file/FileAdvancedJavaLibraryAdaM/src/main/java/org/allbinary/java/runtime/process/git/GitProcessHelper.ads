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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.nio.charset.StandardCharsets_Package; use java.nio.charset.StandardCharsets_Package;
--  with java.util.ArrayList_Package; use java.util.ArrayList_Package;
--  with java.util.List_Package; use java.util.List_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.io.file.directory.TrackedStrings_Package; use org.allbinary.logic.io.file.directory.TrackedStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.java.runtime.process.git.GitProcessHelper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;
   package TrackedStrings_Package renames Standard.org.allbinary.logic.io.file.directory.TrackedStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GitProcessHelper is tagged;
   type GitProcessHelper_Access is access all GitProcessHelper'Class;
   type GitProcessHelper_Access_Array is array (Natural range <>) of GitProcessHelper_Access;
   type GitProcessHelper_Access_Array_Access is access all GitProcessHelper_Access_Array;

   type GitProcessHelper is new Java_Object with record
      trackedStrings : TrackedStrings_Access;
   end record;
   instance : GitProcessHelper_Access;

   procedure Initialize (This : in out GitProcessHelper'Class);
   function Create return GitProcessHelper_Access;
   function getInstance return GitProcessHelper_Access;
   procedure getInstance;
   function trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String) return List_Access;
   procedure trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String);
   function trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String; suffix : Unbounded_String) return List_Access;
   procedure trackedFiles (This : in out GitProcessHelper; rootAsString : Unbounded_String; pathspec : Unbounded_String; suffix : Unbounded_String);
   function isTracked (This : in out GitProcessHelper; file : AbFile_Access) return Boolean;
   procedure isTracked (This : in out GitProcessHelper; file : AbFile_Access);

end org.allbinary.java.runtime.process.git.GitProcessHelper_Package;


