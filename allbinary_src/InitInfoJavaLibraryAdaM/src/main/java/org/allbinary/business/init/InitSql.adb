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


package body org.allbinary.business.init.InitSql_Package is

   procedure Initialize_Fields (This : in out InitSql'Class) is
   begin
      null;
      This.stringUtil := StringUtil_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.sqlTypeStrings := SqlTypeStrings_Package.getInstance;
      This.sqlStrings := SqlStrings_Package.getInstance;
      This.stdUtil := StdUtil_Package.getInstance;
      This.INSERT := To_Unbounded_String ("insert");
      This.UPDATE := To_Unbounded_String ("update");
      This.databaseConnectionInfoInterface := null;
      This.userid := Null_Unbounded_String;
      This.password := Null_Unbounded_String;
      This.tableName := Null_Unbounded_String;
      This.conn := null;
      This.useridAndPassword := False;
      This.SUCCESS_SQL_STATEMENT := To_Unbounded_String ("Success" & ASCII.LF & "SQL Statement: ");
      This.FAILED_SQL_STATEMENT := To_Unbounded_String ("Failed" & ASCII.LF & "SQL Statement: ");
      This.INIT_SQL := To_Unbounded_String ("InitSql");
      This.commonStrings := CommonStrings_Package.getInstance;
      This.EQUAL_QUOTE := To_Unbounded_String ("=""");
      This.METHOD_GET_ROW := To_Unbounded_String ("getRow()");
      This.METHOD_UPDATE_WHERE := To_Unbounded_String ("updateWhere()");
      This.ROW_VALUE_LABEL := To_Unbounded_String ("Row Value: ");
      This.NO_RESULTS_IN_RESULT_SET := To_Unbounded_String ("No Results in ResultSet");
      This.INSERT_END := To_Unbounded_String ("')");
   end Initialize_Fields;


   procedure Initialize (This : in out InitSql'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : constant DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.setDatabaseConnectionInfoInterface (databaseConnectionInfoInterface);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return InitSql_Access is
      This : constant InitSql_Access := new InitSql;
   begin
      InitSql_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

   procedure setTable (This : in out InitSql; tableName : Unbounded_String) is
   begin
        This.tableName := tableName;
   end setTable;

   procedure setDatabaseConnectionInfoInterface (This : in out InitSql; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : constant DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
        This.databaseConnectionInfoInterface := databaseConnectionInfoInterface;
   end setDatabaseConnectionInfoInterface;

   function createTable (This : in out InitSql; tableData : Unbounded_String) return Boolean is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Creating Table: "));
            stringBuffer.append (tableData);
            PreLogUtil_Package.put (stringBuffer.toString, This.INIT_SQL, To_Unbounded_String ("createTable()"));
            This.executeSQLStatement (tableData);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGINGERROR) then
                PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This.INIT_SQL, To_Unbounded_String ("createTable()"), e);
            end if;
            return False;
                end;
        end;
   end createTable;

   function dropTable (This : in out InitSql) return Boolean is
      sqlStatement : Unbounded_String;
   begin
        sqlStatement := Java_Image (This.sqlStrings.DROP_TABLE) & This.tableName;
        begin
            This.executeSQLStatement (sqlStatement);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGINGERROR) then
                PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This.INIT_SQL, To_Unbounded_String ("dropTables()"), e);
            end if;
            return False;
                end;
        end;
   end dropTable;

   function getRow (This : in out InitSql; keysAndValues_Param : access HashMap_Package.HashMap'Class) return HashMap_Access is
      keysAndValues : constant HashMap_Access := HashMap_Access (keysAndValues_Param);
      stringBuffer : StringMaker_Access;
      result : HashMap_Access;
      set : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
      resultSetMetaData : ResultSetMetaData_Access;
      columnCount : Integer;
      columnName : Unbounded_String;
      field : Unbounded_String;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        begin
            result := null;
            set := keysAndValues.keySet;
            keyArray := set.toArray;
            size := keyArray'Length;
            for i in 0 .. (size) - 1 loop
                key := Unbounded_String (keyArray (i));
                value := Java_New_String (Unbounded_String (keysAndValues.get (key)));
                stringBuffer.append (key);
                stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append (This.getValue (value));
                stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then
                    stringBuffer.append (This.sqlStrings.AND_Id);
                end if;
            end loop;
            sqlStatement := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                PreLogUtil_Package.put (Java_Image (This.sqlStrings.SQL_STATEMENT_LABEL) & sqlStatement, This.INIT_SQL, This.METHOD_GET_ROW);
            end if;
            rset := This.executeSQLStatement (sqlStatement);
            resultSetMetaData := rset.getMetaData;
            while rset.next loop
                result := This.stdUtil.createHashMap;
                columnCount := resultSetMetaData.getColumnCount;
                for index in 1 .. columnCount loop
                    columnName := resultSetMetaData.getColumnName (index);
                    field := rset.getString (columnName);
                    result.put (columnName, field);
                end loop;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    PreLogUtil_Package.put (This.ROW_VALUE_LABEL & result.toString, This.INIT_SQL, This.METHOD_GET_ROW);
                end if;
                return result;
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                PreLogUtil_Package.put (This.NO_RESULTS_IN_RESULT_SET, This.INIT_SQL, This.METHOD_GET_ROW);
            end if;
            return null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                PreLogUtil_Package.putOE (This.FAILED_SQL_STATEMENT & Java_Image (stringBuffer), This.INIT_SQL, This.METHOD_GET_ROW, e);
            end if;
            return null;
                end;
        end;
   end getRow;

   procedure updateWhere (This : in out InitSql; key : Unbounded_String; value : Unbounded_String; updatedKeyValuePairs_Param : access HashMap_Package.HashMap'Class) is
      updatedKeyValuePairs : constant HashMap_Access := HashMap_Access (updatedKeyValuePairs_Param);
      stringBuffer : StringMaker_Access;
      columnArray : Java_Object_Access_Array_Access;
      size : Integer;
      columnName : Unbounded_String;
      columnValue : Unbounded_String;
      i : Integer;
      sqlStatement : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.UPDATE);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.SET);
        begin
            columnArray := updatedKeyValuePairs.keySet.toArray;
            size := columnArray'Length;
            for i in 0 .. (size) - 1 loop
                columnName := columnArray (i).toString;
                stringBuffer.append (This.commonSeps.SPACE);
                stringBuffer.append (columnName);
                stringBuffer.append (This.EQUAL_QUOTE);
                columnValue := Unbounded_String (updatedKeyValuePairs.get (columnName));
                if (columnValue) = (Null_Unbounded_String) then
                    columnValue := This.stringUtil.EMPTY_STRING;
                else
                    null;
                end if;
                stringBuffer.append (This.getValue (columnValue));
                stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then
                    stringBuffer.append (This.commonSeps.COMMA);
                end if;
            end loop;
            stringBuffer.append (This.sqlStrings.WHERE);
            stringBuffer.append (key);
            stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
            stringBuffer.append (This.getValue (value));
            stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString;
            This.executeSQLStatement (sqlStatement);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                PreLogUtil_Package.put (This.SUCCESS_SQL_STATEMENT & sqlStatement, This.INIT_SQL, This.METHOD_UPDATE_WHERE);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                PreLogUtil_Package.putOE (This.FAILED_SQL_STATEMENT & Java_Image (stringBuffer), This.INIT_SQL, This.METHOD_UPDATE_WHERE, e);
            end if;
                end;
        end;
   end updateWhere;

   procedure insert_Case (This : in out InitSql; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
      stringBuffer : StringMaker_Access;
      size : Integer;
      value : Unbounded_String;
      i : Integer;
      sqlStatement : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.INSERT_INTO);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.VALUES);
        begin
            size := values.size;
            for i in 0 .. ((size) - (1)) - 1 loop
                value := This.getValue (Unbounded_String (values.get (i)));
                stringBuffer.append (value);
                stringBuffer.append (This.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
            end loop;
            value := This.getValue (Unbounded_String (values.get ((values.size) - (1))));
            stringBuffer.append (value);
            stringBuffer.append (This.INSERT_END);
            sqlStatement := stringBuffer.toString;
            This.executeSQLStatement (sqlStatement);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                PreLogUtil_Package.put (This.SUCCESS_SQL_STATEMENT & sqlStatement, This.INIT_SQL, This.INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                PreLogUtil_Package.putOE (This.FAILED_SQL_STATEMENT & stringBuffer.toString, This.INIT_SQL, This.INSERT, e);
            end if;
                end;
        end;
   end insert_Case;

   function getValue (This : in out InitSql; value : Unbounded_String) return Unbounded_String is
   begin
        if StringValidationUtil_Package.getInstance.isEmpty (value) then
            return This.stringUtil.EMPTY_STRING;
        else
            return value;
        end if;
   end getValue;

   --  throws Exception, SQLException
   function executeSQLStatement (This : in out InitSql; statement : Unbounded_String) return ResultSet_Access is
      stmt : Statement_Access;
      rset : ResultSet_Access;
   begin
        begin
            if (This.conn) = (null) then
                This.initialize;
            end if;
            stmt := This.conn.createStatement;
            stmt.execute (statement);
            rset := stmt.getResultSet;
            stmt.close;
            return rset;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGINGERROR) then
                PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This.INIT_SQL, To_Unbounded_String ("executeSQLStatement()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end executeSQLStatement;

   --  throws SQLException
   procedure createConnection (This : in out InitSql) is
   begin
        begin
            if (This.useridAndPassword) = (True) then
                This.conn := DriverManager_Package.getConnection (This.databaseConnectionInfoInterface.getUrl, This.userid, This.password);
            else
                This.conn := DriverManager_Package.getConnection (This.databaseConnectionInfoInterface.getUrl);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    se : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This.INIT_SQL, To_Unbounded_String ("createConnection()"), se);
            Java_Throw (se);
                end;
        end;
   end createConnection;

   --  throws Exception
   procedure initialize (This : in out InitSql) is
      jdbcDriver : Unbounded_String;
   begin
        begin
            begin
                jdbcDriver := This.databaseConnectionInfoInterface.getJdbcDriver;
                PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Loading DbConnnectionInfo: ")).append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.databaseConnectionInfoInterface.all'Tag))).append (To_Unbounded_String (" Driver: ")).append (jdbcDriver).toString, This.INIT_SQL, To_Unbounded_String ("initialize()"));
                Class_Package.forName (jdbcDriver).newInstance;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGINGERROR) then
                    PreLogUtil_Package.putOE (To_Unbounded_String ("LoadDriver Failed: ") & Java_Image (This.databaseConnectionInfoInterface.getJdbcDriver), This.INIT_SQL, To_Unbounded_String ("initialize()"), e);
                end if;
                Java_Throw (e);
                    end;
            end;
            if ((This.userid) = (Null_Unbounded_String)) and then ((This.password) = (Null_Unbounded_String)) then
                This.useridAndPassword := True;
            end if;
            This.createConnection;
        exception
            when Java_Occurrence : others =>
                declare
                    se : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGINGERROR) then
                PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This.INIT_SQL, To_Unbounded_String ("initialize()"), se);
            end if;
            Java_Throw (se);
                end;
        end;
   end initialize;

   function getDatabaseConnectionInfoInterface (This : in out InitSql) return DatabaseConnectionInfoInterface_Access is
   begin
        return This.databaseConnectionInfoInterface;
   end getDatabaseConnectionInfoInterface;

   procedure createTable (This : in out InitSql; tableData : Unbounded_String) is
      Java_Result : constant Boolean := InitSql'Class (This).createTable (tableData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure getRow (This : in out InitSql; keysAndValues_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant HashMap_Access := InitSql'Class (This).getRow (keysAndValues_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRow;

   procedure getValue (This : in out InitSql; value : Unbounded_String) is
      Java_Result : constant Unbounded_String := InitSql'Class (This).getValue (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValue;

   procedure executeSQLStatement (This : in out InitSql; statement : Unbounded_String) is
      Java_Result : constant ResultSet_Access := InitSql'Class (This).executeSQLStatement (statement);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end executeSQLStatement;

end org.allbinary.business.init.InitSql_Package;


