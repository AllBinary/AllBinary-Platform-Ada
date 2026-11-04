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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.sql.AbSqlBasic_Package;
with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;

package body org.allbinary.logic.communication.sql.AbSqlColumn_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype DbConnectionInfo_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access;
   function "=" (Left, Right : DbConnectionInfo_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array;
   function "=" (Left, Right : DbConnectionInfo_Access_Array) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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


   procedure Initialize (This : in out AbSqlColumn'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : constant DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
        AbSqlTable_Package.Initialize (This, databaseConnectionInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlColumn_Access is
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
        stringBuffer.append (AbSqlColumn'Class (This).getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        stringBuffer.append (key);
        stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append (value);
        stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
        sqlStatement := stringBuffer.toString;
        begin
            largest := 0;
            rset := AbSqlColumn'Class (This).executeSQLStatement (sqlStatement);
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
        column := BasicArrayList_Access (BasicArrayListD_Package.Create);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.SELECT_Id);
        stringBuffer.append (columnName);
        stringBuffer.append (This.sqlStrings.FROM);
        stringBuffer.append (AbSqlColumn'Class (This).getTableName);
        sqlStatement := stringBuffer.toString;
        begin
            rset := AbSqlColumn'Class (This).executeSQLStatement (sqlStatement);
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
        stringBuffer.append (AbSqlColumn'Class (This).getTableName);
        stringBuffer.append (This.sqlStrings.WHERE);
        stringBuffer.append (key);
        stringBuffer.append (This.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append (value);
        stringBuffer.append (This.sqlStrings.CLOSE_QUOTE);
        sqlStatement := stringBuffer.toString;
        column := BasicArrayList_Access (BasicArrayListD_Package.Create);
        rset := null;
        field := Null_Unbounded_String;
        begin
            rset := AbSqlColumn'Class (This).executeSQLStatement (sqlStatement);
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
      Java_Result : constant Unbounded_String := AbSqlColumn'Class (This).getLargestIntegerInColumnWhere (columnName => columnName, key => key, value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLargestIntegerInColumnWhere;

   procedure getColumn (This : in out AbSqlColumn; columnName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AbSqlColumn'Class (This).getColumn (columnName => columnName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumn;

   procedure getColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AbSqlColumn'Class (This).getColumnWhere (columnName => columnName, key => key, value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumnWhere;

end org.allbinary.logic.communication.sql.AbSqlColumn_Package;


