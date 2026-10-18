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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.BufferedLineReader_Package; use org.allbinary.logic.io.BufferedLineReader_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;

package body org.allbinary.logic.communication.sql.AbSqlTableUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package BufferedLineReader_Package renames Standard.org.allbinary.logic.io.BufferedLineReader_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   procedure Initialize_Fields (This : in out AbSqlTableUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.EXTENSION := To_Unbounded_String (".adb");
      This.END_Id := To_Unbounded_String ("')" & ASCII.LF & "");
      This.SAVING_BACKUP_PATH := To_Unbounded_String ("Saving Backup: Path: ");
      This.FILE_LABEL := To_Unbounded_String (" File: ");
      This.METHOD_RESTORE_TABLE := To_Unbounded_String ("restoreTable()");
      This.METHOD_BACKUP_TABLE := To_Unbounded_String ("backupTable()");
      This.METHOD_BACKUP_FILE := To_Unbounded_String ("backupFile()");
      This.METHOD_GET_OUTPUT_STREAM := To_Unbounded_String ("getOutputStream()");
      This.TABLE_CREATION_SUCCESS := To_Unbounded_String ("Table Creation Successful: ");
      This.DROPPED_SUCCESS := To_Unbounded_String (" Dropped Successfully");
      This.SAVING := To_Unbounded_String ("Saving: ");
      This.APPENDING := To_Unbounded_String ("Appending: ");
      This.TABLE_LABEL := To_Unbounded_String ("Table: ");
      This.BACKUP_SUCCESS := To_Unbounded_String (" Backup Success");
      This.ERROR_CREATING := To_Unbounded_String ("Error Creating: ");
      This.TOTAL_LABEL := To_Unbounded_String (" Total: ");
      This.SECTION_LABEL := To_Unbounded_String (" Section: ");
      This.DASH := To_Unbounded_String (" - ");
      This.PORTION_RESTORED := To_Unbounded_String (" Portion Restored");
      This.specialCharArray := new Character_Array'(ASCII.LF, '\f', ASCII.CR);
      This.NEW_LINE := To_Unbounded_String ("\" & ASCII.LF & "");
      This.stringUtil := StringUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.sqlStrings := SqlStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out AbSqlTableUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AbSqlTableUtil_Access is
      This : constant AbSqlTableUtil_Access := new AbSqlTableUtil;
   begin
      AbSqlTableUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbSqlTableUtil_Access is
   begin
        return AbSqlTableUtil_Package.instance;
   end getInstance;

   function getOutputStream (This : in out AbSqlTableUtil; backupPath : Unbounded_String; tableName : Unbounded_String) return OutputStream_Access is
      fileName : Unbounded_String;
      backupFilePath : AbPath_Access;
      backupFile : AbFile_Access;
      outputStream : OutputStream_Access;
   begin
        begin
            fileName := tableName & This.EXTENSION;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.SAVING & tableName, AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_GET_OUTPUT_STREAM);
            end if;
            backupFilePath := AbPath_Package.Create (backupPath, fileName);
            backupFile := AbFile_Package.createAbFile (backupFilePath);
            if backupFile.exists then
                AbSqlTableUtil'Class (This).backupFile (backupFilePath, backupPath, tableName);
                backupFile.delete;
            end if;
            backupFile.createNewFile;
            outputStream := OutputStream_Access (AbFileOutputStream_Package.Create (backupFile));
            return outputStream;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (To_Unbounded_String ("Create File"), AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_GET_OUTPUT_STREAM, e);
            end if;
            return null;
                end;
        end;
   end getOutputStream;

   function backupFile (This : in out AbSqlTableUtil; path_Param : access AbPath_Package.AbPath'Class; backupPath : Unbounded_String; tableName : Unbounded_String) return Boolean is
      path : constant AbPath_Access := AbPath_Access (path_Param);
      calendar : Calendar_Access;
      timeLong : Long_Long_Integer;
      time : Unbounded_String;
      stringBuffer : StringMaker_Access;
      fileName : Unbounded_String;
      backupAbPath : AbPath_Access;
      backupFileBak : AbFile_Access;
   begin
        begin
            calendar := Calendar_Package.getInstance;
            timeLong := calendar.getTimeInMillis;
            time := To_Unbounded_String (Java_Image (timeLong));
            stringBuffer := StringMaker_Package.Create;
            fileName := tableName & This.EXTENSION;
            stringBuffer.append (backupPath);
            stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
            stringBuffer.append (time);
            backupAbPath := AbPath_Package.Create (stringBuffer.toString);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (This.SAVING_BACKUP_PATH);
                stringBuffer.append (backupAbPath.toFileSystemString);
                stringBuffer.append (This.FILE_LABEL);
                stringBuffer.append (fileName);
                This.logUtil.putF (stringBuffer.toString, AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_BACKUP_FILE);
            end if;
            Directory_Package.create (backupAbPath);
            backupFileBak := AbFile_Package.createAbFile (backupAbPath.toFileSystemString);
            backupFileBak.createNewFile;
            FileUtil_Package.getInstance.copy (path, backupAbPath);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_BACKUP_FILE, e);
            end if;
            return False;
                end;
        end;
   end backupFile;

   function convertNewLines (This : in out AbSqlTableUtil; value : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      index : Integer;
      lastIndex : Integer;
      nextLine : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        index := 0;
        lastIndex := 0;
        while (index) < (Length (value)) loop
            index := Java_Index_Of (value, Java_Image (This.specialCharArray (0)), lastIndex);
            if (index) /= (-(1)) then
                nextLine := Unbounded_Slice (value, (lastIndex) + 1, (index) - (1));
                stringBuffer.append (nextLine);
                stringBuffer.append (This.NEW_LINE);
                lastIndex := (index) + (1);
            else
                exit;
            end if;
        end loop;
        if (lastIndex) < (Length (value)) then
            stringBuffer.append (Unbounded_Slice (value, (lastIndex) + 1, Length (value)));
        end if;
        return stringBuffer.toString;
   end convertNewLines;

   function backupTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class) return Unbounded_String is
      abSqlTable : constant AbSqlTable_Access := AbSqlTable_Access (abSqlTable_Param);
      tableName : Unbounded_String;
      count : Integer;
      sqlStatement : Unbounded_String;
      path : Unbounded_String;
      rset : ResultSet_Access;
      rsmd : ResultSetMetaData_Access;
      colNum : Integer;
      QUERY_START : Unbounded_String;
      stringBuffer : StringMaker_Access;
      outputStream : OutputStream_Access;
      value : Unbounded_String;
      i : Integer;
      sqlStatementLine : Unbounded_String;
   begin
        tableName := abSqlTable.getTableName;
        begin
            count := 0;
            sqlStatement := Java_Image (This.sqlStrings.SELECT_ALL_FROM) & tableName;
            path := (org_Package.allbinary.globals.URLGLOBALS.getMainPath) + (PATH_GLOBALS_Package.getInstance.BACKUP_PATH);
            if not (Directory_Package.create (AbPath_Package.Create (path))) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.ERROR_CREATING & Java_Image (path), AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_BACKUP_TABLE);
                end if;
            end if;
            rset := abSqlTable.executeSQLStatement (sqlStatement);
            rsmd := rset.getMetaData;
            colNum := rsmd.getColumnCount;
            QUERY_START := StringBuilder_Package.Create.append (This.sqlStrings.INSERT_INTO).append (tableName).append (This.sqlStrings.VALUES).toString;
            stringBuffer := StringMaker_Package.Create;
            outputStream := AbSqlTableUtil'Class (This).getOutputStream (path, tableName);
            while rset.next loop
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (QUERY_START);
                for i in 1 .. (colNum) - 1 loop
                    value := rset.getString (i);
                    stringBuffer.append (AbSqlTableUtil'Class (This).convertNewLines (value));
                    stringBuffer.append (This.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
                end loop;
                stringBuffer.append (rset.getString (colNum));
                stringBuffer.append (This.END_Id);
                sqlStatementLine := stringBuffer.toString;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.APPENDING & sqlStatementLine, AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_BACKUP_TABLE);
                end if;
                outputStream.write (sqlStatementLine.getBytes);
            end loop;
            StreamUtil_Package.getInstance.close (outputStream);
            return This.TABLE_LABEL & tableName & This.BACKUP_SUCCESS;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (To_Unbounded_String ("Backup Table Failed" & ASCII.LF & "SQL Statement"), AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_BACKUP_TABLE, e);
            end if;
            return This.TABLE_LABEL & tableName & To_Unbounded_String (" Backup Failed");
                end;
        end;
   end backupTable;

   function restoreTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class; portion_Param : access Portion_Package.Portion'Class) return Unbounded_String is
      abSqlTable : constant AbSqlTable_Access := AbSqlTable_Access (abSqlTable_Param);
      portion : constant Portion_Access := Portion_Access (portion_Param);
      tableName : Unbounded_String;
      path : Unbounded_String;
      current : Integer;
      backupFile : AbFile_Access;
      bufferedLineReader : BufferedLineReader_Access;
      size : Long_Long_Integer;
      section : Long_Long_Integer;
      start : Long_Long_Integer;
      end_Id : Long_Long_Integer;
      stringBuffer : StringMaker_Access;
      line : Unbounded_String;
   begin
        tableName := abSqlTable.getTableName;
        begin
            path := (org_Package.allbinary.globals.URLGLOBALS.getMainPath) + (PATH_GLOBALS_Package.getInstance.BACKUP_PATH);
            current := portion.getCurrent.intValue;
            if (current) = (0) then
                if Directory_Package.create (AbPath_Package.Create (path)) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                        This.logUtil.putF (This.ERROR_CREATING & Java_Image (path), AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_RESTORE_TABLE);
                    end if;
                end if;
            end if;
            backupFile := AbFile_Package.createAbFile (path, tableName & This.EXTENSION);
            bufferedLineReader := BufferedLineReader_Package.Create (backupFile);
            size := bufferedLineReader.getSize;
            section := ((size) / (portion.getTotal.intValue)) + (1);
            start := (section) * (Long_Long_Integer (current));
            end_Id := (start) + (section);
            if (end_Id) > (size) then
                end_Id := size;
            end if;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.TOTAL_LABEL);
            stringBuffer.append (size);
            stringBuffer.append (This.SECTION_LABEL);
            stringBuffer.append (start);
            stringBuffer.append (This.DASH);
            stringBuffer.append (end_Id);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (stringBuffer.toString, AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_RESTORE_TABLE);
            end if;
            bufferedLineReader.readUpToLines (start);
            line := This.stringUtil.EMPTY_STRING;
            while ((bufferedLineReader.getCurrent) < (end_Id)) and then (((Java_Assign (line, bufferedLineReader.readLine))) /= (null)) loop
                if (Length (line)) > (1) then
                    abSqlTable.executeSQLStatement (line);
                end if;
            end loop;
            stringBuffer.append (This.commonSeps.SPACE);
            stringBuffer.append (This.TABLE_LABEL);
            stringBuffer.append (tableName);
            stringBuffer.append (This.PORTION_RESTORED);
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (To_Unbounded_String ("Restore Table Failed" & ASCII.LF & "SQL Statement"), AbSqlTableUtil_Access'(This'Unchecked_Access), This.METHOD_RESTORE_TABLE, e);
            end if;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.TABLE_LABEL);
            stringBuffer.append (tableName);
            stringBuffer.append (To_Unbounded_String (" Restoration Failed"));
            return stringBuffer.toString;
                end;
        end;
   end restoreTable;

   procedure getOutputStream (This : in out AbSqlTableUtil; backupPath : Unbounded_String; tableName : Unbounded_String) is
      Java_Result : constant OutputStream_Access := AbSqlTableUtil'Class (This).getOutputStream (backupPath, tableName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOutputStream;

   procedure backupFile (This : in out AbSqlTableUtil; path_Param : access AbPath_Package.AbPath'Class; backupPath : Unbounded_String; tableName : Unbounded_String) is
      Java_Result : constant Boolean := AbSqlTableUtil'Class (This).backupFile (path_Param, backupPath, tableName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backupFile;

   procedure convertNewLines (This : in out AbSqlTableUtil; value : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbSqlTableUtil'Class (This).convertNewLines (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convertNewLines;

   procedure backupTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class) is
      Java_Result : constant Unbounded_String := AbSqlTableUtil'Class (This).backupTable (abSqlTable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backupTable;

   procedure restoreTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class; portion_Param : access Portion_Package.Portion'Class) is
      Java_Result : constant Unbounded_String := AbSqlTableUtil'Class (This).restoreTable (abSqlTable_Param, portion_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restoreTable;

begin
   null;
   instance := AbSqlTableUtil_Package.Create;

end org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;


