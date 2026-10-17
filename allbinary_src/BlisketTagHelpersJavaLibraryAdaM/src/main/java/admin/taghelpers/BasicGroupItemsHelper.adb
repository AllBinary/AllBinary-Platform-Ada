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


package body admin.taghelpers.BasicGroupItemsHelper_Package is

   procedure Initialize_Fields (This : in out BasicGroupItemsHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGroupItemsHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      BasicTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.portion := Portion_Package.Create (hashMap);
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return BasicGroupItemsHelper_Access is
      This : constant BasicGroupItemsHelper_Access := new BasicGroupItemsHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   function create (This : in out BasicGroupItemsHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := BasicGroupItemsEntityFactory_Package.getInstance.getBasicGroupItemsEntityInstance.createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function drop (This : in out BasicGroupItemsHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := BasicGroupItemsEntityFactory_Package.getInstance.getBasicGroupItemsEntityInstance.dropTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, This.commonStrings.DROP);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop pricing tables");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function restore (This : in out BasicGroupItemsHelper) return Unbounded_String is
      success : Unbounded_String;
      basicGroupItemsEntity : BasicGroupItemsEntity_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            basicGroupItemsEntity := BasicGroupItemsEntityFactory_Package.getInstance.getBasicGroupItemsEntityInstance;
            result := AbSqlTableUtil_Package.getInstance.restoreTable (basicGroupItemsEntity, This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   function backup (This : in out BasicGroupItemsHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Backup Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (BasicGroupItemsEntityFactory_Package.getInstance.getBasicGroupItemsEntityInstance);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

   procedure create (This : in out BasicGroupItemsHelper) is
      Java_Result : constant Unbounded_String := BasicGroupItemsHelper'Class (This).create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure drop (This : in out BasicGroupItemsHelper) is
      Java_Result : constant Unbounded_String := BasicGroupItemsHelper'Class (This).drop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drop;

   procedure restore (This : in out BasicGroupItemsHelper) is
      Java_Result : constant Unbounded_String := BasicGroupItemsHelper'Class (This).restore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restore;

   procedure backup (This : in out BasicGroupItemsHelper) is
      Java_Result : constant Unbounded_String := BasicGroupItemsHelper'Class (This).backup;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backup;

end admin.taghelpers.BasicGroupItemsHelper_Package;


