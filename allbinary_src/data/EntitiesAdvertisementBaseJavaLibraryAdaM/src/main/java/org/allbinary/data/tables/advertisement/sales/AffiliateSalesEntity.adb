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


with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.user.group.GroupData_Package; use org.allbinary.business.user.group.GroupData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package is

   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package GroupData_Package renames Standard.org.allbinary.business.user.group.GroupData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out AffiliateSalesEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("affiliate");
   end Initialize_Fields;


   procedure Initialize (This : in out AffiliateSalesEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        AffiliateSalesEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return AffiliateSalesEntity_Access is
      This : constant AffiliateSalesEntity_Access := new AffiliateSalesEntity;
   begin
      AffiliateSalesEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure delete (This : in out AffiliateSalesEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (StoreFrontData_Package.getInstance.NAME, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, AffiliateSalesEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, AffiliateSalesEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   function createTableStatement (This : in out AffiliateSalesEntity) return Unbounded_String is
      entryData : EntryData_Access;
      stringBuffer : StringMaker_Access;
   begin
        entryData := EntryData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (AffiliateSalesEntity'Class (This).getTableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (entryData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (StoreFrontData_Package.getInstance.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (GroupData_Package.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (DynamicObjectData_Package.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (entryData.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (entryData.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (entryData.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out AffiliateSalesEntity) return Unbounded_String is
      returnStr : Unbounded_String;
   begin
        returnStr := AbSqlBean (This).createTable (AffiliateSalesEntity'Class (This).createTableStatement);
        return returnStr;
   end createTable;

   procedure update (This : in out AffiliateSalesEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (EntryData_Package.getInstance.ID, Java_Unbox (updatedValues.get (EntryData_Package.getInstance.ID)), updatedValues);
   end update;

   function dropTable (This : in out AffiliateSalesEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

end org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntity_Package;


