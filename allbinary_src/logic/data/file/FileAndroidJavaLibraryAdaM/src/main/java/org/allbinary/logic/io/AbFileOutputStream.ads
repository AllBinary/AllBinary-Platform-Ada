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
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
--  with java.nio.channels.FileChannel_Package; use java.nio.channels.FileChannel_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;

package org.allbinary.logic.io.AbFileOutputStream_Package is

   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames org.allbinary.logic.io.file.AbFileNativeUtil_Package;

   type AbFileOutputStream is tagged;
   type AbFileOutputStream_Access is access all AbFileOutputStream'Class;
   type AbFileOutputStream_Access_Array is array (Natural range <>) of AbFileOutputStream_Access;
   type AbFileOutputStream_Access_Array_Access is access all AbFileOutputStream_Access_Array;

   type AbFileOutputStream is new OutputStream with record
      fileOutputStream : FileOutputStream_Access;
   end record;

   procedure Initialize (This : in out AbFileOutputStream'Class; fileOutputStream : FileOutputStream_Access);
   function Create (fileOutputStream : FileOutputStream_Access) return AbFileOutputStream_Access;
   function createFromAbFile (file : AbFile_Access) return AbFileOutputStream_Access;
   procedure createFromAbFile (file : AbFile_Access);
   function createFromAbFileAppend (file : AbFile_Access; append : Boolean) return AbFileOutputStream_Access;
   procedure createFromAbFileAppend (file : AbFile_Access; append : Boolean);
   function createFromFilePath (name : Unbounded_String) return AbFileOutputStream_Access;
   procedure createFromFilePath (name : Unbounded_String);
   function createFromFilePathAppend (name : Unbounded_String; append : Boolean) return AbFileOutputStream_Access;
   procedure createFromFilePathAppend (name : Unbounded_String; append : Boolean);
   procedure close (This : in out AbFileOutputStream);
   function getChannel (This : in out AbFileOutputStream) return FileChannel_Access;
   procedure getChannel (This : in out AbFileOutputStream);
   procedure write (This : in out AbFileOutputStream; buffer : Short_Short_Integer_Array_Access);
   procedure write (This : in out AbFileOutputStream; buffer : Short_Short_Integer_Array_Access; offset : Integer; count : Integer);
   procedure write (This : in out AbFileOutputStream; b : Integer);

end org.allbinary.logic.io.AbFileOutputStream_Package;


