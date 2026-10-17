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


package body org.allbinary.logic.communication.sql.AbSqlColumn_Package is

   procedure Initialize_Fields (This : in out AbSqlColumn'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.LARGEST_INT_VALUE_IN_COLUMN := To_Unbounded_String ("" & ASCII.LF & "Largest Int Value in column: ");
      This.METHOD_GET_LARGETS_INTEGER_IN_COLUMN := To_Unbounded_String ("getLargestIntegerInColumn");
      This.METHOD_GET_COLUMN := To_Unbounded_String ("getColumn");
      This.METHOD_GET_COLUMN_WHERE := To_Unbounded_String ("getColumnWhere");
      This.INVALID_RESULT := To_Unbounded_String ("-1");
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlColumn'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
        AbSqlTable_Package.Initialize (This, databaseConnectionInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo'Class) return AbSqlColumn_Access is
      This : constant AbSqlColumn_Access := new AbSqlColumn;
   begin
      AbSqlColumn_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

   function getLargestIntegerInColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      sqlStatement : Unbounded_String;
      largest : Integer;
      rset : ResultSet_Access;
      intValue : Integer;
      largestAsString : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_Id);
        stringBuffer.append (columnName);
        stringBuffer.append (This.sqlStrings.FROM);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        stringBuffer.append (key);
        stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append (value);
        stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
        sqlStatement := stringBuffer.toString;
        begin
            largest := 0;
            rset := This.executeSQLStatement (sqlStatement);
            while rset.next loop
                intValue := rset.getInt (columnName);
                if (intValue) > (largest) then
                    largest := intValue;
                end if;
            end loop;
            largestAsString := largest.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (This.sqlStrings.SQL_STATEMENT_LABEL);
                stringBuffer.append (sqlStatement);
                stringBuffer.append (This.LARGEST_INT_VALUE_IN_COLUMN);
                stringBuffer.append (largestAsString);
                This.logUtil.putF (stringBuffer.toString, AbSqlColumn_Access'(This'Unchecked_Access), This.METHOD_GET_LARGETS_INTEGER_IN_COLUMN);
            end if;
            return largestAsString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement, AbSqlColumn_Access'(This'Unchecked_Access), This.METHOD_GET_LARGETS_INTEGER_IN_COLUMN, e);
            end if;
            return This.INVALID_RESULT;
                end;
        end;
   end getLargestIntegerInColumnWhere;

   function getColumn (This : in out AbSqlColumn; columnName : Unbounded_String) return BasicArrayList_Access is
      column : BasicArrayList_Access;
      stringBuffer : StringMaker_Access;
      sqlStatement : Unbounded_String;
      rset : ResultSet_Access;
      field : Unbounded_String;
   begin
        column := BasicArrayListD_Package.Create;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_Id);
        stringBuffer.append (columnName);
        stringBuffer.append (This.sqlStrings.FROM);
        stringBuffer.append (This.getTableName);
        sqlStatement := stringBuffer.toString;
        begin
            rset := This.executeSQLStatement (sqlStatement);
            while rset.next loop
                field := rset.getObject (columnName).toString;
                column.add (field);
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (This.sqlStrings.SQL_STATEMENT_LABEL);
                stringBuffer.append (sqlStatement);
                stringBuffer.append (This.sqlStrings.COLUMN_VALUE);
                stringBuffer.append (column.toString);
                This.logUtil.putF (stringBuffer.toString, AbSqlColumn_Access'(This'Unchecked_Access), This.METHOD_GET_COLUMN);
            end if;
            return column;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement, AbSqlColumn_Access'(This'Unchecked_Access), This.METHOD_GET_COLUMN, e);
            end if;
            return column;
                end;
        end;
   end getColumn;

   function getColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String) return BasicArrayList_Access is
      stringBuffer : StringMaker_Access;
      sqlStatement : Unbounded_String;
      column : BasicArrayList_Access;
      rset : ResultSet_Access;
      field : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_Id);
        stringBuffer.append (columnName);
        stringBuffer.append (This.sqlStrings.FROM);
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        stringBuffer.append (key);
        stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append (value);
        stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
        sqlStatement := stringBuffer.toString;
        column := BasicArrayListD_Package.Create;
        rset := null;
        field := Null_Unbounded_String;
        begin
            rset := This.executeSQLStatement (sqlStatement);
            while rset.next loop
                field := rset.getObject (columnName).toString;
                column.add (field);
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (This.sqlStrings.SQL_STATEMENT_LABEL);
                stringBuffer.append (sqlStatement);
                stringBuffer.append (This.sqlStrings.COLUMN_VALUE);
                stringBuffer.append (column.toString);
                This.logUtil.putF (stringBuffer.toString, AbSqlColumn_Access'(This'Unchecked_Access), This.METHOD_GET_COLUMN_WHERE);
            end if;
            return column;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement, AbSqlColumn_Access'(This'Unchecked_Access), This.METHOD_GET_COLUMN_WHERE, e);
            end if;
            return column;
                end;
        end;
   end getColumnWhere;

   procedure getLargestIntegerInColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbSqlColumn'Class (This).getLargestIntegerInColumnWhere (columnName, key, value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLargestIntegerInColumnWhere;

   procedure getColumn (This : in out AbSqlColumn; columnName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AbSqlColumn'Class (This).getColumn (columnName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumn;

   procedure getColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AbSqlColumn'Class (This).getColumnWhere (columnName, key, value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumnWhere;

end org.allbinary.logic.communication.sql.AbSqlColumn_Package;


