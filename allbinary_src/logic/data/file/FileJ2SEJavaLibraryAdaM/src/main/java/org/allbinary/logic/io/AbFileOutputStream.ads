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
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;

package org.allbinary.logic.io.AbFileOutputStream_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;

   type AbFileOutputStream is tagged;
   type AbFileOutputStream_Access is access all AbFileOutputStream'Class;
   type AbFileOutputStream_Access_Array is array (Natural range <>) of AbFileOutputStream_Access;
   type AbFileOutputStream_Access_Array_Access is access all AbFileOutputStream_Access_Array;
   type AbFileOutputStream_Access_Array_Access_Array is array (Natural range <>) of AbFileOutputStream_Access_Array_Access;
   type AbFileOutputStream_Access_Array_Access_Array_Access is access all AbFileOutputStream_Access_Array_Access_Array;

   type AbFileOutputStream is new Java_Object with null record;

   procedure Initialize (This : in out AbFileOutputStream'Class; name : Unbounded_String; append : Boolean);
   function Create (name : Unbounded_String; append : Boolean) return AbFileOutputStream_Access;
   function createFromAbFile (file_Param : access AbFile_Package.AbFile'Class) return AbFileOutputStream_Access;
   procedure createFromAbFile (file_Param : access AbFile_Package.AbFile'Class);
   function createFromAbFileAppend (file_Param : access AbFile_Package.AbFile'Class; append : Boolean) return AbFileOutputStream_Access;
   procedure createFromAbFileAppend (file_Param : access AbFile_Package.AbFile'Class; append : Boolean);
   function createFromFilePath (name : Unbounded_String) return AbFileOutputStream_Access;
   procedure createFromFilePath (name : Unbounded_String);
   function createFromFilePathAppend (name : Unbounded_String; append : Boolean) return AbFileOutputStream_Access;
   procedure createFromFilePathAppend (name : Unbounded_String; append : Boolean);

end org.allbinary.logic.io.AbFileOutputStream_Package;


