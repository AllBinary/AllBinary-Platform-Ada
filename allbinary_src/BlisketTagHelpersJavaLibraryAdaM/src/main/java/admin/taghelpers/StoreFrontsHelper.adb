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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package; use org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
with org.allbinary.logic.communication.sql.AbSqlTableUtil_Package; use org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package; use org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body admin.taghelpers.StoreFrontsHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontsEntityFactory_Package renames Standard.org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
   package AbSqlTableUtil_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package HtmlSelect_Package renames Standard.org.allbinary.logic.visual.dhtml.html.select_Id.HtmlSelect_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out StoreFrontsHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontsHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      BasicTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.portion := Portion_Package.Create (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreFrontsHelper_Access is
      This : constant StoreFrontsHelper_Access := new StoreFrontsHelper;
   begin
      StoreFrontsHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   function drop (This : in out StoreFrontsHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance.dropTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsHelper_Access'(This'Unchecked_Access), This.commonStrings.DROP);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop storefronts table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsHelper_Access'(This'Unchecked_Access), This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function create (This : in out StoreFrontsHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance.createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create new storefronts table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function restore (This : in out StoreFrontsHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.restoreTable (StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance, This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   function backup (This : in out StoreFrontsHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

   function generateSelect (This : in out StoreFrontsHelper) return Unbounded_String is
      success : Unbounded_String;
      storeNamesVector : BasicArrayList_Access;
      storeSelect : HtmlSelect_Access;
      size : Integer;
      storeName : Unbounded_String;
      index : Integer;
      error : Unbounded_String;
   begin
        begin
            success := CommonSeps_Package.getInstance.SPACE;
            storeNamesVector := StoreFrontsEntityFactory_Package.getInstance.getStoreFrontsEntityInstance.getStoreFrontNames;
            storeSelect := HtmlSelect_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, This.commonPhoneStrings.ONE, StoreFrontData_Package.getInstance.SELECTSTORENAME, StringUtil_Package.getInstance.EMPTY_STRING);
            storeSelect.addAttribute (StoreFrontsHelper_Package.CLASS, StoreFrontsHelper_Package.TEXT);
            size := storeNamesVector.size;
            for index in 0 .. (size) - 1 loop
                storeName := Java_Unbox (storeNamesVector.get (index));
                storeSelect.addOption (storeName);
            end loop;
            success := success & storeSelect;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, StoreFrontsHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("generateSelect()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to generate storefronts select");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontsHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("generateSelect()"), e);
            end if;
            return error;
                end;
        end;
   end generateSelect;

begin
   null;
   CLASS := To_Unbounded_String ("class");
   TEXT := To_Unbounded_String ("text");

end admin.taghelpers.StoreFrontsHelper_Package;


