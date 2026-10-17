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


package body org.allbinary.logic.communication.sql.AbSqlRow_Package is

   procedure Initialize_Fields (This : in out AbSqlRow'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.EQUAL_QUOTE := To_Unbounded_String ("=""");
      This.ESCAPE_QUOTES := To_Unbounded_String ("\""");
      This.GET_ROW := To_Unbounded_String ("Row Value: ");
      This.METHOD_GET_ROW := To_Unbounded_String ("getRow()");
      This.METHOD_GET_ROWS := To_Unbounded_String ("getRows()");
      This.METHOD_GET_ALL_ROWS := To_Unbounded_String ("getAllRows()");
      This.METHOD_UPDATE_WHERE := To_Unbounded_String ("updateWhere()");
      This.METHOD_GET_ROWS_WHERE_BETWEEN := To_Unbounded_String ("getRowsWhereBetween()");
      This.METHOD_DELETE_WHERE := To_Unbounded_String ("deleteWhere()");
      This.ROW_VALUE_LABEL := To_Unbounded_String ("Row Value: ");
      This.ROW_VALUES_LABEL := To_Unbounded_String ("Row Values: ");
      This.NO_RESULTS_IN_RESULT_SET := To_Unbounded_String ("No Results in ResultSet");
      This.COLUMN_NAME_LABEL := To_Unbounded_String ("columnName: ");
      This.INSERT_END := To_Unbounded_String ("')");
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlRow'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
        AbSqlColumn_Package.Initialize (This, databaseConnectionInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo'Class) return AbSqlRow_Access is
      This : constant AbSqlRow_Access := new AbSqlRow;
   begin
      AbSqlRow_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

   function getValue (This : in out AbSqlRow; value : Unbounded_String) return Unbounded_String is
   begin
        if StringValidationUtil_Package.getInstance.isEmpty (value) then
            return This.stringUtil.EMPTY_STRING;
        else
            return value;
        end if;
   end getValue;

   procedure updateWhere (This : in out AbSqlRow; key : Unbounded_String; value : Unbounded_String; updatedKeyValuePairs_Param : access HashMap'Class) is
      updatedKeyValuePairs : HashMap_Access := HashMap_Access (updatedKeyValuePairs_Param);
      stringBuffer : StringMaker_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      columnName : Unbounded_String;
      columnValue : Unbounded_String;
      i : Integer;
      sqlStatement : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.UPDATE);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.SET);
        begin
            keyArray := updatedKeyValuePairs.keySet.toArray;
            size := keyArray'Length;
            for i in 0 .. (size) - 1 loop
                columnName := keyArray (i).toString;
                stringBuffer.append (This.commonSeps.SPACE);
                stringBuffer.append (columnName);
                stringBuffer.append (This.EQUAL_QUOTE);
                columnValue := Unbounded_String (updatedKeyValuePairs.get (columnName));
                if (columnValue) = (Null_Unbounded_String) then
                    columnValue := This.stringUtil.EMPTY_STRING;
                else
                    columnValue := Replace_Package.Create (This.sqlStrings.CLOSE_QUOTE, This.ESCAPE_QUOTES).all_Id (columnValue);
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
                This.logUtil.putF (Java_Image (This.SUCCESS_SQL_STATEMENT) & sqlStatement, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_UPDATE_WHERE);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put ((This.FAILED_SQL_STATEMENT) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_UPDATE_WHERE, e);
            end if;
                end;
        end;
   end updateWhere;

   --  throws Exception
   procedure updateWhere (This : in out AbSqlRow; whereKeyValuePairs_Param : access HashMap'Class; updatedKeyValuePairs_Param : access HashMap'Class) is
      whereKeyValuePairs : HashMap_Access := HashMap_Access (whereKeyValuePairs_Param);
      updatedKeyValuePairs : HashMap_Access := HashMap_Access (updatedKeyValuePairs_Param);
      stringBuffer : StringMaker_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      columnName : Unbounded_String;
      columnValue : Unbounded_String;
      i : Integer;
      set : Set_Access;
      keyArray2 : Java_Object_Access_Array_Access;
      size2 : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      sqlStatement : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.UPDATE);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.SET);
        begin
            keyArray := updatedKeyValuePairs.keySet.toArray;
            size := keyArray'Length;
            for i in 0 .. (size) - 1 loop
                columnName := keyArray (i).toString;
                stringBuffer.append (This.commonSeps.SPACE);
                stringBuffer.append (columnName);
                stringBuffer.append (This.EQUAL_QUOTE);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.COLUMN_NAME_LABEL & columnName, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_UPDATE_WHERE);
                end if;
                columnValue := Unbounded_String (updatedKeyValuePairs.get (columnName));
                if (columnValue) = (Null_Unbounded_String) then
                    columnValue := This.stringUtil.EMPTY_STRING;
                else
                    columnValue := Replace_Package.Create (This.sqlStrings.CLOSE_QUOTE, This.ESCAPE_QUOTES).all_Id (columnValue);
                end if;
                stringBuffer.append (This.getValue (columnValue));
                stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then
                    stringBuffer.append (This.commonSeps.COMMA);
                end if;
            end loop;
            stringBuffer.append (This.sqlStrings.WHERE);
            set := whereKeyValuePairs.keySet;
            keyArray2 := set.toArray;
            size2 := keyArray2'Length;
            for i in 0 .. (size2) - 1 loop
                key := Unbounded_String (keyArray2 (i));
                value := Unbounded_String (whereKeyValuePairs.get (key));
                begin
                    stringBuffer.append (key);
                    stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
                    stringBuffer.append (This.getValue (value));
                    stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
                    if (i) < ((size2) - (1)) then
                        stringBuffer.append (This.sqlStrings.AND_Id);
                    end if;
                end;
            end loop;
            sqlStatement := stringBuffer.toString;
            This.executeSQLStatement (sqlStatement);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (Java_Image (This.SUCCESS_SQL_STATEMENT) & sqlStatement, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_UPDATE_WHERE);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put ((This.FAILED_SQL_STATEMENT) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_UPDATE_WHERE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end updateWhere;

   procedure deleteWhere (This : in out AbSqlRow; key : Unbounded_String; value : Unbounded_String) is
      stringBuffer : StringMaker_Access;
      sqlStatement : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.DELETE);
        stringBuffer.append (This.sqlStrings.FROM);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        stringBuffer.append (key);
        stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append (value);
        stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
        begin
            sqlStatement := stringBuffer.toString;
            This.executeSQLStatement (sqlStatement);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (Java_Image (This.SUCCESS_SQL_STATEMENT) & sqlStatement, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_DELETE_WHERE);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & stringBuffer.toString, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_DELETE_WHERE, e);
            end if;
                end;
        end;
   end deleteWhere;

   procedure deleteWhere (This : in out AbSqlRow; keysAndValues_Param : access HashMap'Class) is
      keysAndValues : HashMap_Access := HashMap_Access (keysAndValues_Param);
      stringBuffer : StringMaker_Access;
      set : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
      sqlStatement : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.DELETE);
        stringBuffer.append (This.sqlStrings.FROM);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        begin
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
            This.executeSQLStatement (sqlStatement);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (Java_Image (This.SUCCESS_SQL_STATEMENT) & sqlStatement, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_DELETE_WHERE);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & stringBuffer.toString, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_DELETE_WHERE, e);
            end if;
                end;
        end;
   end deleteWhere;

   procedure insert (This : in out AbSqlRow; values_Param : access BasicArrayList'Class) is
      values : BasicArrayList_Access := BasicArrayList_Access (values_Param);
      stringBuffer : StringMaker_Access;
      value : Unbounded_String;
      i : Integer;
      sqlStatement : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.INSERT_INTO);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.VALUES);
        begin
            for i in 0 .. ((values.size) - (1)) - 1 loop
                value := This.getValue (Unbounded_String (values.get (i)));
                value := Replace_Package.Create (This.sqlStrings.ESCAPE, This.sqlStrings.DOUBLE_ESCAPE).all_Id (value);
                stringBuffer.append (value);
                stringBuffer.append (This.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
            end loop;
            value := This.getValue (Unbounded_String (values.get ((values.size) - (1))));
            value := Replace_Package.Create (This.sqlStrings.ESCAPE, This.sqlStrings.DOUBLE_ESCAPE).all_Id (value);
            stringBuffer.append (value);
            stringBuffer.append (This.INSERT_END);
            sqlStatement := stringBuffer.toString;
            This.executeSQLStatement (sqlStatement);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (Java_Image (This.SUCCESS_SQL_STATEMENT) & sqlStatement, AbSqlRow_Access'(This'Unchecked_Access), This.INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & stringBuffer.toString, AbSqlRow_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   function getRow (This : in out AbSqlRow; keysAndValues_Param : access HashMap'Class) return HashMap_Access is
      keysAndValues : HashMap_Access := HashMap_Access (keysAndValues_Param);
      stringBuffer : StringMaker_Access;
      result : HashMap_Access;
      set : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      index : Integer;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
      resultSetMetaData : ResultSetMetaData_Access;
      columnCount : Integer;
      columnName : Unbounded_String;
      field : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        begin
            result := null;
            set := keysAndValues.keySet;
            keyArray := set.toArray;
            size := keyArray'Length;
            for index in 0 .. (size) - 1 loop
                key := Unbounded_String (keyArray (index));
                value := Java_New_String (Unbounded_String (keysAndValues.get (key)));
                stringBuffer.append (key);
                stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append (This.getValue (value));
                stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
                if (index) < ((size) - (1)) then
                    stringBuffer.append (This.sqlStrings.AND_Id);
                end if;
            end loop;
            sqlStatement := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (Java_Image (This.sqlStrings.SQL_STATEMENT_LABEL) & sqlStatement, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROW);
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
                    This.logUtil.putF (This.ROW_VALUE_LABEL & result.toString, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROW);
                end if;
                return result;
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.putF (This.NO_RESULTS_IN_RESULT_SET, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROW);
            end if;
            return null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put ((This.FAILED_SQL_STATEMENT) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROW, e);
            end if;
            return null;
                end;
        end;
   end getRow;

   function getRows (This : in out AbSqlRow; keysAndValues_Param : access HashMap'Class) return BasicArrayList_Access is
      keysAndValues : HashMap_Access := HashMap_Access (keysAndValues_Param);
   begin
        return This.getRows (keysAndValues, StringUtil_Package.getInstance.EMPTY_STRING);
   end getRows;

   function getRows (This : in out AbSqlRow; keysAndValues_Param : access HashMap'Class; more : Unbounded_String) return BasicArrayList_Access is
      keysAndValues : HashMap_Access := HashMap_Access (keysAndValues_Param);
      stringBuffer : StringMaker_Access;
      rows : BasicArrayList_Access;
      set : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
      index : Integer;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
      resultSetMetaData : ResultSetMetaData_Access;
      result : HashMap_Access;
      columnCount : Integer;
      columnName : Unbounded_String;
      field : Unbounded_String;
      resultAsString : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        begin
            rows := BasicArrayListD_Package.Create;
            set := keysAndValues.keySet;
            keyArray := set.toArray;
            size := keyArray'Length;
            for index in 0 .. (size) - 1 loop
                key := Unbounded_String (keyArray (index));
                value := Java_New_String (Unbounded_String (keysAndValues.get (key)));
                stringBuffer.append (key);
                stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append (This.getValue (value));
                stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
                if (index) < ((size) - (1)) then
                    stringBuffer.append (This.sqlStrings.AND_Id);
                end if;
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF ((This.sqlStrings.SQL_STATEMENT_LABEL) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS);
            end if;
            stringBuffer.append (more);
            sqlStatement := stringBuffer.toString;
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
                resultAsString := result.toString;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.GET_ROW & resultAsString, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS);
                end if;
                rows.add (result);
            end loop;
            return rows;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put ((This.FAILED_SQL_STATEMENT) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS, e);
            end if;
            return null;
                end;
        end;
   end getRows;

   function getAllRows (This : in out AbSqlRow) return BasicArrayList_Access is
      stringBuffer : StringMaker_Access;
      rows : BasicArrayList_Access;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
      resultSetMetaData : ResultSetMetaData_Access;
      result : HashMap_Access;
      columnCount : Integer;
      columnName : Unbounded_String;
      field : Unbounded_String;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append (This.getTableName);
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF ((This.sqlStrings.SQL_STATEMENT_LABEL) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ALL_ROWS);
            end if;
            rows := BasicArrayListD_Package.Create;
            sqlStatement := stringBuffer.toString;
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
                    This.logUtil.putF (This.ROW_VALUES_LABEL & result.toString, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ALL_ROWS);
                end if;
                rows.add (result);
            end loop;
            return rows;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put ((This.FAILED_SQL_STATEMENT) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ALL_ROWS, e);
            end if;
            return null;
                end;
        end;
   end getAllRows;

   function getRowsWhereBetween (This : in out AbSqlRow; whereKeyValuePairs_Param : access HashMap'Class; betweenColumn : Unbounded_String; smallest : Unbounded_String; largest : Unbounded_String) return BasicArrayList_Access is
      whereKeyValuePairs : HashMap_Access := HashMap_Access (whereKeyValuePairs_Param);
      stringBuffer : StringMaker_Access;
      rows : BasicArrayList_Access;
      set : Set_Access;
      key : Unbounded_String;
      value : Unbounded_String;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
      resultSetMetaData : ResultSetMetaData_Access;
      result : HashMap_Access;
      columnNames : BasicArrayList_Access;
      columnCount : Integer;
      columnName : Unbounded_String;
      field : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append (This.getTableName);
        begin
            rows := BasicArrayListD_Package.Create;
            stringBuffer.append (This.sqlStrings.WHERE);
            set := whereKeyValuePairs.keySet;
            key := Null_Unbounded_String;
            value := Null_Unbounded_String;
            keyArray := set.toArray;
            size := keyArray'Length;
            for index in 0 .. (size) - 1 loop
                key := Unbounded_String (keyArray (index));
                value := Unbounded_String (whereKeyValuePairs.get (key));
                stringBuffer.append (key);
                stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append (This.getValue (value));
                stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
                stringBuffer.append (This.sqlStrings.AND_Id);
            end loop;
            stringBuffer.append (betweenColumn);
            stringBuffer.append (This.sqlStrings.MORE_THAN_QUOTE);
            stringBuffer.append (smallest);
            stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
            stringBuffer.append (This.sqlStrings.AND_Id);
            stringBuffer.append (betweenColumn);
            stringBuffer.append (This.sqlStrings.LESS_THAN_QUOTE);
            stringBuffer.append (largest);
            stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (Java_Image (This.sqlStrings.SQL_STATEMENT_LABEL) & sqlStatement, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS_WHERE_BETWEEN);
            end if;
            rset := This.executeSQLStatement (sqlStatement);
            resultSetMetaData := rset.getMetaData;
            result := null;
            columnNames := null;
            columnCount := 0;
            columnName := Null_Unbounded_String;
            field := Null_Unbounded_String;
            while rset.next loop
                result := This.stdUtil.createHashMap;
                columnNames := BasicArrayListD_Package.Create;
                columnCount := resultSetMetaData.getColumnCount;
                for index in 1 .. columnCount loop
                    columnName := resultSetMetaData.getColumnName (index);
                    field := rset.getString (columnName);
                    result.put (columnName, field);
                end loop;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.ROW_VALUE_LABEL & result.toString, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS_WHERE_BETWEEN);
                end if;
                rows.add (result);
            end loop;
            return rows;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put ((This.FAILED_SQL_STATEMENT) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS_WHERE_BETWEEN, e);
            end if;
            return null;
                end;
        end;
   end getRowsWhereBetween;

   function getRowsWhereBetween (This : in out AbSqlRow; betweenColumn : Unbounded_String; smallest : Unbounded_String; largest : Unbounded_String) return BasicArrayList_Access is
      stringBuffer : StringMaker_Access;
      rows : BasicArrayList_Access;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
      resultSetMetaData : ResultSetMetaData_Access;
      columnName : Unbounded_String;
      field : Unbounded_String;
      result : HashMap_Access;
      columnNames : BasicArrayList_Access;
      columnCount : Integer;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append (This.getTableName);
        begin
            rows := BasicArrayListD_Package.Create;
            stringBuffer.append (This.sqlStrings.WHERE);
            stringBuffer.append (betweenColumn);
            stringBuffer.append (This.sqlStrings.MORE_THAN_QUOTE);
            stringBuffer.append (smallest);
            stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
            stringBuffer.append (This.sqlStrings.AND_Id);
            stringBuffer.append (betweenColumn);
            stringBuffer.append (This.sqlStrings.LESS_THAN_QUOTE);
            stringBuffer.append (largest);
            stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (Java_Image (This.sqlStrings.SQL_STATEMENT_LABEL) & sqlStatement, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS_WHERE_BETWEEN);
            end if;
            rset := This.executeSQLStatement (sqlStatement);
            resultSetMetaData := rset.getMetaData;
            columnName := Null_Unbounded_String;
            field := Null_Unbounded_String;
            result := null;
            columnNames := null;
            columnCount := 0;
            while rset.next loop
                result := This.stdUtil.createHashMap;
                columnNames := BasicArrayListD_Package.Create;
                columnCount := resultSetMetaData.getColumnCount;
                for index in 1 .. columnCount loop
                    columnName := resultSetMetaData.getColumnName (index);
                    field := rset.getString (columnName);
                    result.put (columnName, field);
                end loop;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (This.ROW_VALUE_LABEL & result.toString, AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS_WHERE_BETWEEN);
                end if;
                rows.add (result);
            end loop;
            return rows;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put ((This.FAILED_SQL_STATEMENT) + (stringBuffer), AbSqlRow_Access'(This'Unchecked_Access), This.METHOD_GET_ROWS_WHERE_BETWEEN, e);
            end if;
            return null;
                end;
        end;
   end getRowsWhereBetween;

   procedure getValue (This : in out AbSqlRow; value : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbSqlRow'Class (This).getValue (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValue;

   procedure getRow (This : in out AbSqlRow; keysAndValues_Param : access HashMap'Class) is
      Java_Result : constant HashMap_Access := AbSqlRow'Class (This).getRow (keysAndValues_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRow;

   procedure getRows (This : in out AbSqlRow; keysAndValues_Param : access HashMap'Class) is
      Java_Result : constant BasicArrayList_Access := AbSqlRow'Class (This).getRows (keysAndValues_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRows;

   procedure getRows (This : in out AbSqlRow; keysAndValues_Param : access HashMap'Class; more : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AbSqlRow'Class (This).getRows (keysAndValues_Param, more);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRows;

   procedure getRowsWhereBetween (This : in out AbSqlRow; whereKeyValuePairs_Param : access HashMap'Class; betweenColumn : Unbounded_String; smallest : Unbounded_String; largest : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AbSqlRow'Class (This).getRowsWhereBetween (whereKeyValuePairs_Param, betweenColumn, smallest, largest);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRowsWhereBetween;

   procedure getRowsWhereBetween (This : in out AbSqlRow; betweenColumn : Unbounded_String; smallest : Unbounded_String; largest : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AbSqlRow'Class (This).getRowsWhereBetween (betweenColumn, smallest, largest);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRowsWhereBetween;

end org.allbinary.logic.communication.sql.AbSqlRow_Package;


