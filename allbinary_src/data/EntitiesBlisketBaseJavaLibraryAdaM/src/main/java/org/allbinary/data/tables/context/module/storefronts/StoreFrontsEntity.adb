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


package body org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package is

   procedure Initialize_Fields (This : in out StoreFrontsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("storefronts");
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        This.setTableName (This.tableName);
   end Initialize;

   function Create return StoreFrontsEntity_Access is
      This : constant StoreFrontsEntity_Access := new StoreFrontsEntity;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out StoreFrontsEntity; values : BasicArrayList_Access) is
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out StoreFrontsEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (StoreFrontData_Package.getInstance.NAME, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   --  throws Exception
   function getStoreFrontInterface (This : in out StoreFrontsEntity; name : Unbounded_String) return StoreFront_Access is
      keysAndValues : HashMap_Access;
      storeHashMap : HashMap_Access;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, name);
        storeHashMap := AbSqlBean (This).getRow (keysAndValues);
        if (storeHashMap) /= (null) then
            return StoreFront_Package.Create (storeHashMap);
        else
            return StoreFront_Package.Create;
        end if;
   end getStoreFrontInterface;

   function getStoreFrontNames (This : in out StoreFrontsEntity) return BasicArrayList_Access is
      storeFrontNames : BasicArrayList_Access;
   begin
        storeFrontNames := AbSqlBean (This).getColumn (StoreFrontData_Package.getInstance.NAME);
        return storeFrontNames;
   end getStoreFrontNames;

   procedure update (This : in out StoreFrontsEntity; updatedValues : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (StoreFrontData_Package.getInstance.NAME, Unbounded_String (updatedValues.get (StoreFrontData_Package.getInstance.NAME)), updatedValues);
   end update;

   function createTableStatement (This : in out StoreFrontsEntity) return Unbounded_String is
      storeFrontData : StoreFrontData_Access;
      stringBuffer : StringMaker_Access;
   begin
        storeFrontData := StoreFrontData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (storeFrontData.NAME);
        stringBuffer.append (This.sqlTypeStrings.SIXTY_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.HOMEHOSTNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.HOMEHOSTNAMEPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.HOSTNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.HOSTNAMEPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TESTHOMEHOSTNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TESTHOMEHOSTNAMEPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TESTHOSTNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TESTHOSTNAMEPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.IMAGEPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.STATICPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.CATEGORYPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.INVENTORYCONTROL);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.CONFIGURATION);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (storeFrontData.SUBSTORES);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TAGLOCATION);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.PACKAGELOCATION);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.FTP);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.FTPPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.FTPUSERNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.FTPPASSWORD);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TESTFTP);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TESTFTPPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TESTFTPUSERNAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (storeFrontData.TESTFTPPASSWORD);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.TIMECREATED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.getInstance.LASTMODIFIED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.sqlStrings.PRIMARY_KEY);
        stringBuffer.append (storeFrontData.NAME);
        stringBuffer.append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out StoreFrontsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   function dropTable (This : in out StoreFrontsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure getStoreFrontInterface (This : in out StoreFrontsEntity; name : Unbounded_String) is
      Java_Result : constant StoreFront_Access := StoreFrontsEntity'Class (This).getStoreFrontInterface (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreFrontInterface;

   procedure getStoreFrontNames (This : in out StoreFrontsEntity) is
      Java_Result : constant BasicArrayList_Access := StoreFrontsEntity'Class (This).getStoreFrontNames;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreFrontNames;

   procedure createTableStatement (This : in out StoreFrontsEntity) is
      Java_Result : constant Unbounded_String := StoreFrontsEntity'Class (This).createTableStatement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTableStatement;

   procedure createTable (This : in out StoreFrontsEntity) is
      Java_Result : constant Unbounded_String := StoreFrontsEntity'Class (This).createTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure dropTable (This : in out StoreFrontsEntity) is
      Java_Result : constant Unbounded_String := StoreFrontsEntity'Class (This).dropTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end dropTable;

end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;


