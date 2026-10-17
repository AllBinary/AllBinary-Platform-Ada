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

package org.allbinary.logic.io.file.FileFactory_Package is


   type FileFactory is tagged;
   type FileFactory_Access is access all FileFactory'Class;
   type FileFactory_Access_Array is array (Natural range <>) of FileFactory_Access;
   type FileFactory_Access_Array_Access is access all FileFactory_Access_Array;

   type FileFactory is new Java_Object with null record;
   instance : FileFactory_Access;

   procedure Initialize (This : in out FileFactory'Class);
   function Create return FileFactory_Access;
   function getInstance return FileFactory_Access;
   function getInstance (This : in out FileFactory; filePath : Unbounded_String) return AbFile_Access;
   procedure getInstance (This : in out FileFactory; filePath : Unbounded_String);
   function getInstance (This : in out FileFactory; file_Param : access AbFile'Class; childFilePath : Unbounded_String) return AbFile_Access;
   procedure getInstance (This : in out FileFactory; file_Param : access AbFile'Class; childFilePath : Unbounded_String);
   function isFile (This : in out FileFactory; path : Unbounded_String) return Boolean;
   procedure isFile (This : in out FileFactory; path : Unbounded_String);

end org.allbinary.logic.io.file.FileFactory_Package;


