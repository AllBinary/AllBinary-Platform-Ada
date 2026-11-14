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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.quoterequest.QuoteRequestData_Package; use org.allbinary.business.quoterequest.QuoteRequestData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.quoterequest.QuoteRequest_Package; use org.allbinary.business.user.quoterequest.QuoteRequest_Package;
with org.allbinary.business.user.quoterequest.QuoteRequest_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package QuoteRequestData_Package renames Standard.org.allbinary.business.quoterequest.QuoteRequestData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
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
   subtype QuoteRequest_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access;
   function "=" (Left, Right : QuoteRequest_Access) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   subtype QuoteRequest_Access_Array is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array;
   function "=" (Left, Right : QuoteRequest_Access_Array) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   subtype QuoteRequest_Access_Array_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access;
   function "=" (Left, Right : QuoteRequest_Access_Array_Access) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   subtype QuoteRequest_Access_Array_Access_Array is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access_Array;
   function "=" (Left, Right : QuoteRequest_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   subtype QuoteRequest_Access_Array_Access_Array_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QuoteRequest_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
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
   procedure Initialize_Fields (This : in out QuoteRequestEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("quoterequest");
   end Initialize_Fields;


   procedure Initialize (This : in out QuoteRequestEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        QuoteRequestEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return QuoteRequestEntity_Access is
      This : constant QuoteRequestEntity_Access := new QuoteRequestEntity;
   begin
      QuoteRequestEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out QuoteRequestEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean_Package.AbSqlBean (This).insert (values);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, QuoteRequestEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, QuoteRequestEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   --  throws Exception
   function get (This : in out QuoteRequestEntity; userName : Unbounded_String; id : Integer) return QuoteRequest_Access is
      row : HashMap_Access;
      quoteRequestHashMap : HashMap_Access;
   begin
        row := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
        row.put (UserData_Package.USERNAME, Java_Box (userName));
        row.put (QuoteRequestData_Package.getInstance.ID, Java_Box (To_Unbounded_String (Java_Image (id))));
        quoteRequestHashMap := AbSqlBean_Package.AbSqlBean (This).getRow (row);
        if (quoteRequestHashMap) /= (null) then
            return QuoteRequest_Package.Create (quoteRequestHashMap);
        else
            return null;
        end if;
   end get;

   function getIds (This : in out QuoteRequestEntity; userName : Unbounded_String) return BasicArrayList_Access is
   begin
        return AbSqlBean_Package.AbSqlBean (This).getColumnWhere (QuoteRequestData_Package.getInstance.ID, UserData_Package.USERNAME, userName);
   end getIds;

   procedure deleteWhere (This : in out QuoteRequestEntity; key : Unbounded_String; value : Unbounded_String) is
   begin
        begin
            AbSqlBean_Package.AbSqlBean (This).deleteWhere (key, value);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, QuoteRequestEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("deleteWhere"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, QuoteRequestEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("deleteWhere"), e);
            end if;
                end;
        end;
   end deleteWhere;

   function createTableStatement (This : in out QuoteRequestEntity) return Unbounded_String is
      quoteRequestData : QuoteRequestData_Access;
      stringBuffer : StringMaker_Access;
   begin
        quoteRequestData := QuoteRequestData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START);
        stringBuffer.append (quoteRequestData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (UserData_Package.USERNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (quoteRequestData.PROJECT_INFO);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (quoteRequestData.CUSTOMER_COMMENTS);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (quoteRequestData.BUDGET);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (quoteRequestData.TIMEFRAME);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (quoteRequestData.COMMENTS);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.TIMECREATED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.LASTMODIFIED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.sqlStrings.PRIMARY_KEY);
        stringBuffer.append (quoteRequestData.ID);
        stringBuffer.append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out QuoteRequestEntity) return Unbounded_String is
   begin
        return AbSqlBean_Package.AbSqlBean (This).createTable (QuoteRequestEntity'Class (This).createTableStatement);
   end createTable;

   function dropTable (This : in out QuoteRequestEntity) return Unbounded_String is
      result : Unbounded_String;
   begin
        result := Java_New_String (AbSqlBean_Package.AbSqlBean (This).dropTable);
        return result;
   end dropTable;

   procedure update (This : in out QuoteRequestEntity; userName : Unbounded_String; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean_Package.AbSqlBean (This).updateWhere (UserData_Package.USERNAME, userName, updatedValues);
   end update;

   procedure get (This : in out QuoteRequestEntity; userName : Unbounded_String; id : Integer) is
      Java_Result : constant QuoteRequest_Access := QuoteRequestEntity'Class (This).get (userName => userName, id => id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getIds (This : in out QuoteRequestEntity; userName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := QuoteRequestEntity'Class (This).getIds (userName => userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIds;

end org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package;


