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


with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.communication.sql.AbSqlTable_Package is

   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
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
   procedure Initialize_Fields (This : in out AbSqlTable'Class) is
   begin
      null;
      This.AbSqlTable_Field_logUtil := LogUtil_Package.getInstance;
      This.tableName := Null_Unbounded_String;
      This.METHOD_CREATED_TABLE := To_Unbounded_String ("createTable()");
      This.METHOD_DROP_TABLE := To_Unbounded_String ("dropTable()");
      This.TABLE_CREATION_SUCCESS := To_Unbounded_String ("Table Creation Successful: ");
      This.DROPPED_SUCCESS := To_Unbounded_String (" Dropped Successfully");
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlTable'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : constant DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
        AbSqlBasic_Package.Initialize (This, databaseConnectionInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlTable_Access is
      This : constant AbSqlTable_Access := new AbSqlTable;
   begin
      AbSqlTable_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

   procedure setTableName (This : in out AbSqlTable; tableName : Unbounded_String) is
   begin
        This.tableName := tableName;
   end setTableName;

   function getTableName (This : in out AbSqlTable) return Unbounded_String is
   begin
        return This.tableName;
   end getTableName;

   function createTable (This : in out AbSqlTable; data : Unbounded_String) return Unbounded_String is
   begin
        begin
            AbSqlTable'Class (This).executeSQLStatement (data);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.AbSqlTable_Field_logUtil.putF (This.TABLE_CREATION_SUCCESS & This.tableName & To_Unbounded_String (" with statement: ") & data, AbSqlTable_Access'(This'Unchecked_Access), This.METHOD_CREATED_TABLE);
            end if;
            return This.tableName & Java_Image (This.sqlStrings.CREATE_RETURN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGINGERROR) then
                This.AbSqlTable_Field_logUtil.put (To_Unbounded_String ("Table Creation Failed: ") & This.tableName & To_Unbounded_String (" with statement: ") & data, AbSqlTable_Access'(This'Unchecked_Access), This.METHOD_CREATED_TABLE, e);
            end if;
            return To_Unbounded_String ("Failed to Create ") & This.tableName & To_Unbounded_String (" table.");
                end;
        end;
   end createTable;

   function dropTable (This : in out AbSqlTable) return Unbounded_String is
      sqlStatement : Unbounded_String;
   begin
        sqlStatement := Java_Image (This.sqlStrings.DROP_TABLE) & This.tableName;
        begin
            AbSqlTable'Class (This).executeSQLStatement (sqlStatement);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.AbSqlTable_Field_logUtil.putF (This.SUCCESS_SQL_STATEMENT & sqlStatement, AbSqlTable_Access'(This'Unchecked_Access), This.METHOD_DROP_TABLE);
            end if;
            return This.tableName & This.DROPPED_SUCCESS;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGINGERROR) then
                This.AbSqlTable_Field_logUtil.put (This.FAILED_SQL_STATEMENT & sqlStatement, AbSqlTable_Access'(This'Unchecked_Access), This.METHOD_DROP_TABLE, e);
            end if;
            return To_Unbounded_String ("Failed to Drop ") & This.tableName & To_Unbounded_String (" table.");
                end;
        end;
   end dropTable;

   procedure createTable (This : in out AbSqlTable; data : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbSqlTable'Class (This).createTable (data => data);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

end org.allbinary.logic.communication.sql.AbSqlTable_Package;


