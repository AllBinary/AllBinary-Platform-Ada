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

limited with org.allbinary.log.FileLog_Package;
package org.allbinary.log.FileLog_Package_References is
   type FileLog_Access is access all org.allbinary.log.FileLog_Package.FileLog'Class;
   type FileLog_Access_Array is array (Natural range <>) of FileLog_Access;
   type FileLog_Access_Array_Access is access all FileLog_Access_Array;
   type FileLog_Access_Array_Access_Array is array (Natural range <>) of FileLog_Access_Array_Access;
   type FileLog_Access_Array_Access_Array_Access is access all FileLog_Access_Array_Access_Array;
end org.allbinary.log.FileLog_Package_References;

with org.allbinary.log.FileLog_Package_References;
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
with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
--  with java.io.FileWriter_Package; use java.io.FileWriter_Package;
--  with java.io.RandomAccessFile_Package; use java.io.RandomAccessFile_Package;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;

package org.allbinary.log.FileLog_Package is

   package File_Package renames Standard.java.io.File_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Reference_Types is
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FileLog_Access is org.allbinary.log.FileLog_Package_References.FileLog_Access;
   function "=" (Left, Right : FileLog_Access) return Boolean renames org.allbinary.log.FileLog_Package_References."=";
   subtype FileLog_Access_Array is org.allbinary.log.FileLog_Package_References.FileLog_Access_Array;
   function "=" (Left, Right : FileLog_Access_Array) return Boolean renames org.allbinary.log.FileLog_Package_References."=";
   subtype FileLog_Access_Array_Access is org.allbinary.log.FileLog_Package_References.FileLog_Access_Array_Access;
   function "=" (Left, Right : FileLog_Access_Array_Access) return Boolean renames org.allbinary.log.FileLog_Package_References."=";
   subtype FileLog_Access_Array_Access_Array is org.allbinary.log.FileLog_Package_References.FileLog_Access_Array_Access_Array;
   function "=" (Left, Right : FileLog_Access_Array_Access_Array) return Boolean renames org.allbinary.log.FileLog_Package_References."=";
   subtype FileLog_Access_Array_Access_Array_Access is org.allbinary.log.FileLog_Package_References.FileLog_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileLog_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.log.FileLog_Package_References."=";

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
   function put (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) return Unbounded_String;
   procedure put (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String);
   function put (specialMessage_Param : Unbounded_String; anyType_Param : access Java_Object'Class; functionName_Param : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class) return Unbounded_String;
   procedure put (specialMessage_Param : Unbounded_String; anyType_Param : access Java_Object'Class; functionName_Param : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class);
   function put (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String) return Unbounded_String;
   procedure put (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String);
   function put (specialMessage_Param : Unbounded_String; className : Unbounded_String; functionName_Param : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class) return Unbounded_String;
   procedure put (specialMessage_Param : Unbounded_String; className : Unbounded_String; functionName_Param : Unbounded_String; exception_Id_Param : access Java_Throwable_Object'Class);
   function getFilePath return Unbounded_String;

end org.allbinary.log.FileLog_Package;


