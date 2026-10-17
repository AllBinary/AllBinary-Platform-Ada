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


package body admin.taghelpers.OrderHistoryHelper_Package is

   procedure Initialize_Fields (This : in out OrderHistoryHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistoryHelper'Class; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      BasicTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.portion := Portion_Package.Create (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return OrderHistoryHelper_Access is
      This : constant OrderHistoryHelper_Access := new OrderHistoryHelper;
   begin
      OrderHistoryHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   function drop (This : in out OrderHistoryHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := OrderHistoryEntityFactory_Package.getInstance.dropTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, OrderHistoryHelper_Access'(This'Unchecked_Access), This.commonStrings.DROP);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop order history table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OrderHistoryHelper_Access'(This'Unchecked_Access), This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function create (This : in out OrderHistoryHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := OrderHistoryEntityFactory_Package.getInstance.createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, OrderHistoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create new order history table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OrderHistoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function restore (This : in out OrderHistoryHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.restoreTable (OrderHistoryEntityFactory_Package.getInstance, This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, OrderHistoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OrderHistoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   function backup (This : in out OrderHistoryHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (OrderHistoryEntityFactory_Package.getInstance);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, OrderHistoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OrderHistoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

end admin.taghelpers.OrderHistoryHelper_Package;


