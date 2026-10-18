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


with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.LogDbInitInfo_Package; use org.allbinary.business.init.db.LogDbInitInfo_Package;
with org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package; use org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.tables.log.LogTableEntity_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package LogDbInitInfo_Package renames Standard.org.allbinary.business.init.db.LogDbInitInfo_Package;
   package AbeHttpRequestInfoData_Package renames Standard.org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out LogTableEntity'Class) is
   begin
      null;
      This.tableName := To_Unbounded_String ("log");
   end Initialize_Fields;


   procedure Initialize (This : in out LogTableEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, LogDbInitInfo_Package.Create);
        Initialize_Fields (This);
        LogTableEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return LogTableEntity_Access is
      This : constant LogTableEntity_Access := new LogTableEntity;
   begin
      LogTableEntity_Package.Initialize (This.all);
      return This;
   end Create;

   function createTableStatement (This : in out LogTableEntity) return Unbounded_String is
      abeHttpRequestInfoData : AbeHttpRequestInfoData_Access;
      stringBuffer : StringMaker_Access;
   begin
        abeHttpRequestInfoData := AbeHttpRequestInfoData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (This.sqlStrings.ID).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (abeHttpRequestInfoData.HTTP_USER_AGENT).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (abeHttpRequestInfoData.REMOTE_HOST).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (abeHttpRequestInfoData.REMOTE_ADDRESS).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (abeHttpRequestInfoData.REQUEST_FILE_PATH).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (abeHttpRequestInfoData.REMOTE_PORT).append (This.sqlTypeStrings.MAX_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (This.sqlStrings.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out LogTableEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (LogTableEntity'Class (This).createTableStatement);
   end createTable;

end org.allbinary.data.tables.log.LogTableEntity_Package;


