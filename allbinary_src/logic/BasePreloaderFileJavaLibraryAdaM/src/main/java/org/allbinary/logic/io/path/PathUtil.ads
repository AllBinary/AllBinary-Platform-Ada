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
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.AbFilePath_Package; use org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.logic.io.path.PathUtil_Package is

   package FilePathData_Package renames Standard.org.allbinary.logic.io.file.FilePathData_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;

   type PathUtil is tagged;
   type PathUtil_Access is access all PathUtil'Class;
   type PathUtil_Access_Array is array (Natural range <>) of PathUtil_Access;
   type PathUtil_Access_Array_Access is access all PathUtil_Access_Array;

   type PathUtil is new Java_Object with record
      abPathData : AbPathData_Access;
      filePathData : FilePathData_Access;
   end record;
   instance : PathUtil_Access;

   procedure Initialize (This : in out PathUtil'Class);
   function Create return PathUtil_Access;
   function getInstance return PathUtil_Access;
   function getExtensionWithAbFilePath (This : in out PathUtil; abFilePath : AbFilePath_Access) return Unbounded_String;
   procedure getExtensionWithAbFilePath (This : in out PathUtil; abFilePath : AbFilePath_Access);
   function getExtensionWithAbPath (This : in out PathUtil; abPath : AbPath_Access) return Unbounded_String;
   procedure getExtensionWithAbPath (This : in out PathUtil; abPath : AbPath_Access);
   function getWithoutExtensionWithAbFilePath (This : in out PathUtil; abFilePath : AbFilePath_Access) return Unbounded_String;
   procedure getWithoutExtensionWithAbFilePath (This : in out PathUtil; abFilePath : AbFilePath_Access);
   function getWithoutExtensionWithAbPath (This : in out PathUtil; abPath : AbPath_Access) return Unbounded_String;
   procedure getWithoutExtensionWithAbPath (This : in out PathUtil; abPath : AbPath_Access);
   function getWithoutExtension (This : in out PathUtil; filePath : Unbounded_String) return Unbounded_String;
   procedure getWithoutExtension (This : in out PathUtil; filePath : Unbounded_String);
   function isValid (This : in out PathUtil; path : Unbounded_String) return Boolean;
   procedure isValid (This : in out PathUtil; path : Unbounded_String);
   function isValidStart (This : in out PathUtil; path : Unbounded_String) return Boolean;
   procedure isValidStart (This : in out PathUtil; path : Unbounded_String);
   function isValidEnd (This : in out PathUtil; path : Unbounded_String) return Boolean;
   procedure isValidEnd (This : in out PathUtil; path : Unbounded_String);
   function adjustStart (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjustStart (This : in out PathUtil; path_Param : Unbounded_String);
   function adjustEnd (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjustEnd (This : in out PathUtil; path_Param : Unbounded_String);
   function adjust (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String;
   procedure adjust (This : in out PathUtil; path_Param : Unbounded_String);
   function removeNameFromPath (This : in out PathUtil; path : Unbounded_String) return AbPath_Access;
   procedure removeNameFromPath (This : in out PathUtil; path : Unbounded_String);

end org.allbinary.logic.io.path.PathUtil_Package;


