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
--  with java.io.BufferedReader_Package; use java.io.BufferedReader_Package;
--  with java.io.BufferedWriter_Package; use java.io.BufferedWriter_Package;
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
--  with java.io.FileWriter_Package; use java.io.FileWriter_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.logic.io.BufferedIOUtil_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type BufferedIOUtil is tagged;
   type BufferedIOUtil_Access is access all BufferedIOUtil'Class;
   type BufferedIOUtil_Access_Array is array (Natural range <>) of BufferedIOUtil_Access;
   type BufferedIOUtil_Access_Array_Access is access all BufferedIOUtil_Access_Array;

   type BufferedIOUtil is new Java_Object with null record;

   procedure Initialize (This : in out BufferedIOUtil'Class);
   function Create return BufferedIOUtil_Access;
   procedure copy (backupFile_Param : access AbFile_Package.AbFile'Class; backupFileBak_Param : access AbFile_Package.AbFile'Class);

end org.allbinary.logic.io.BufferedIOUtil_Package;


