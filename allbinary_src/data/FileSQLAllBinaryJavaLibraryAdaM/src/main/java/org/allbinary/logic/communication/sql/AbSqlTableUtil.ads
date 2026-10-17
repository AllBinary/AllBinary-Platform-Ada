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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
--  with java.sql.ResultSet_Package; use java.sql.ResultSet_Package;
--  with java.sql.ResultSetMetaData_Package; use java.sql.ResultSetMetaData_Package;
with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.BufferedLineReader_Package; use org.allbinary.logic.io.BufferedLineReader_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package; use org.allbinary.logic.communication.sql.SqlStrings_Package;
with org.allbinary.logic.communication.sql.AbSqlTable_Package; use org.allbinary.logic.communication.sql.AbSqlTable_Package;

package org.allbinary.logic.communication.sql.AbSqlTableUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package BufferedLineReader_Package renames Standard.org.allbinary.logic.io.BufferedLineReader_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type AbSqlTableUtil is tagged;
   type AbSqlTableUtil_Access is access all AbSqlTableUtil'Class;
   type AbSqlTableUtil_Access_Array is array (Natural range <>) of AbSqlTableUtil_Access;
   type AbSqlTableUtil_Access_Array_Access is access all AbSqlTableUtil_Access_Array;

   type AbSqlTableUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      EXTENSION : Unbounded_String;
      END_Id : Unbounded_String;
      SAVING_BACKUP_PATH : Unbounded_String;
      FILE_LABEL : Unbounded_String;
      METHOD_RESTORE_TABLE : Unbounded_String;
      METHOD_BACKUP_TABLE : Unbounded_String;
      METHOD_BACKUP_FILE : Unbounded_String;
      METHOD_GET_OUTPUT_STREAM : Unbounded_String;
      TABLE_CREATION_SUCCESS : Unbounded_String;
      DROPPED_SUCCESS : Unbounded_String;
      SAVING : Unbounded_String;
      APPENDING : Unbounded_String;
      TABLE_LABEL : Unbounded_String;
      BACKUP_SUCCESS : Unbounded_String;
      ERROR_CREATING : Unbounded_String;
      TOTAL_LABEL : Unbounded_String;
      SECTION_LABEL : Unbounded_String;
      DASH : Unbounded_String;
      PORTION_RESTORED : Unbounded_String;
      specialCharArray : Character_Array_Access;
      NEW_LINE : Unbounded_String;
      stringUtil : StringUtil_Access;
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      sqlStrings : SqlStrings_Access;
   end record;
   instance : AbSqlTableUtil_Access;

   procedure Initialize (This : in out AbSqlTableUtil'Class);
   function Create return AbSqlTableUtil_Access;
   function getInstance return AbSqlTableUtil_Access;
   function getOutputStream (This : in out AbSqlTableUtil; backupPath : Unbounded_String; tableName : Unbounded_String) return OutputStream_Access;
   procedure getOutputStream (This : in out AbSqlTableUtil; backupPath : Unbounded_String; tableName : Unbounded_String);
   function backupFile (This : in out AbSqlTableUtil; path : AbPath_Access; backupPath : Unbounded_String; tableName : Unbounded_String) return Boolean;
   procedure backupFile (This : in out AbSqlTableUtil; path : AbPath_Access; backupPath : Unbounded_String; tableName : Unbounded_String);
   function convertNewLines (This : in out AbSqlTableUtil; value : Unbounded_String) return Unbounded_String;
   procedure convertNewLines (This : in out AbSqlTableUtil; value : Unbounded_String);
   function backupTable (This : in out AbSqlTableUtil; abSqlTable : AbSqlTable_Access) return Unbounded_String;
   procedure backupTable (This : in out AbSqlTableUtil; abSqlTable : AbSqlTable_Access);
   function restoreTable (This : in out AbSqlTableUtil; abSqlTable : AbSqlTable_Access; portion : Portion_Access) return Unbounded_String;
   procedure restoreTable (This : in out AbSqlTableUtil; abSqlTable : AbSqlTable_Access; portion : Portion_Access);

end org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;


