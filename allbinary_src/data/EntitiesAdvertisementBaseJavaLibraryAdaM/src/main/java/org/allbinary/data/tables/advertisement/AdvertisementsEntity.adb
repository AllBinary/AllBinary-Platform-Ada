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


package body org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package is

   procedure Initialize_Fields (This : in out AdvertisementsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("advertisements");
      This.U_INDEX := To_Unbounded_String ("_index");
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        This.setTableName (This.tableName);
   end Initialize;

   function Create return AdvertisementsEntity_Access is
      This : constant AdvertisementsEntity_Access := new AdvertisementsEntity;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure delete (This : in out AdvertisementsEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (EntryData_Package.getInstance.ID, value);
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

   function get (This : in out AdvertisementsEntity; storeName : Unbounded_String) return BasicArrayList_Access is
      keysAndValues : HashMap_Access;
      hashMapVector : BasicArrayList_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      hashMap : HashMap_Access;
      index : Integer;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, storeName);
        hashMapVector := AbSqlBean (This).getRows (keysAndValues);
        vector := BasicArrayListD_Package.Create;
        size := hashMapVector.size;
        for index in 0 .. (size) - 1 loop
            hashMap := HashMap_Access (hashMapVector.get (index));
        end loop;
        return vector;
   end get;

   function get (This : in out AdvertisementsEntity; storeName : Unbounded_String; advertismentName : Unbounded_String) return AdvertisementInterface_Access is
      keysAndValues : HashMap_Access;
      hashMap : HashMap_Access;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, storeName);
        keysAndValues.put (AdvertisementData_Package.getInstance.NAME, advertismentName);
        hashMap := AbSqlBean (This).getRow (keysAndValues);
        return null;
   end get;

   function createTableStatement (This : in out AdvertisementsEntity) return Unbounded_String is
      advertisementData : AdvertisementData_Access;
      stringBuffer : StringMaker_Access;
   begin
        advertisementData := AdvertisementData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (This.getTableName).append (This.sqlStrings.START).append (advertisementData.NAME).append (This.U_INDEX).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (advertisementData.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (StoreFrontData_Package.getInstance.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementData.DESCRIPTION).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (DynamicObjectData_Package.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (advertisementData.NAME).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out AdvertisementsEntity) return Unbounded_String is
      returnStr : Unbounded_String;
   begin
        returnStr := AbSqlBean (This).createTable (This.createTableStatement);
        return returnStr;
   end createTable;

   procedure update (This : in out AdvertisementsEntity; updatedValues : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (EntryData_Package.getInstance.ID, Unbounded_String (updatedValues.get (EntryData_Package.getInstance.ID)), updatedValues);
   end update;

   function dropTable (This : in out AdvertisementsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure get (This : in out AdvertisementsEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AdvertisementsEntity'Class (This).get (storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure get (This : in out AdvertisementsEntity; storeName : Unbounded_String; advertismentName : Unbounded_String) is
      Java_Result : constant AdvertisementInterface_Access := AdvertisementsEntity'Class (This).get (storeName, advertismentName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure createTableStatement (This : in out AdvertisementsEntity) is
      Java_Result : constant Unbounded_String := AdvertisementsEntity'Class (This).createTableStatement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTableStatement;

   procedure createTable (This : in out AdvertisementsEntity) is
      Java_Result : constant Unbounded_String := AdvertisementsEntity'Class (This).createTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure dropTable (This : in out AdvertisementsEntity) is
      Java_Result : constant Unbounded_String := AdvertisementsEntity'Class (This).dropTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end dropTable;

end org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package;


