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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
--  with java.io.FileWriter_Package; use java.io.FileWriter_Package;
--  with java.io.RandomAccessFile_Package; use java.io.RandomAccessFile_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package; use org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.log.FileLog_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LogFormatUtil_Package renames Standard.org.allbinary.logic.communication.log.LogFormatUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type FileLog is tagged;
   type FileLog_Access is access all FileLog'Class;
   type FileLog_Access_Array is array (Natural range <>) of FileLog_Access;
   type FileLog_Access_Array_Access is access all FileLog_Access_Array;

   type FileLog is new Java_Object with null record;
   stringUtil : StringUtil_Access;
   logLength : Long_Long_Integer;
   logPath : Unbounded_String;
   extension : Unbounded_String;
   fileName : Unbounded_String;
   backupFileName : Unbounded_String;
   ORG_ALLBINARY : Unbounded_String;
   firstTime : Boolean;
   logFile : File_Access;
   logFileBak : File_Access;
   fileOut : BufferedWriter_Access;
   backupIndex : Integer;

   procedure Initialize (This : in out FileLog'Class);
   function Create return FileLog_Access;
   function createLogFile return Boolean;
   function createLogFileBackup return Boolean;
   function put (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String) return Unbounded_String;
   procedure put (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String);
   function put (specialMessage_Param : Unbounded_String; anyType : Java_Object_Access; functionName_Param : Unbounded_String; exception_Id : Java_Throwable) return Unbounded_String;
   procedure put (specialMessage_Param : Unbounded_String; anyType : Java_Object_Access; functionName_Param : Unbounded_String; exception_Id : Java_Throwable);
   function put (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) return Unbounded_String;
   procedure put (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String);
   function put (specialMessage_Param : Unbounded_String; className : Unbounded_String; functionName_Param : Unbounded_String; exception_Id : Java_Throwable) return Unbounded_String;
   procedure put (specialMessage_Param : Unbounded_String; className : Unbounded_String; functionName_Param : Unbounded_String; exception_Id : Java_Throwable);
   function getFilePath return Unbounded_String;

end org.allbinary.log.FileLog_Package;


