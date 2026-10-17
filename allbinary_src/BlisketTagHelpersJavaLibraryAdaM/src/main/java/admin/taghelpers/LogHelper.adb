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


package body admin.taghelpers.LogHelper_Package is

   procedure Initialize_Fields (This : in out LogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LogHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      BasicTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.portion := Portion_Package.Create (hashMap);
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return LogHelper_Access is
      This : constant LogHelper_Access := new LogHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   function drop (This : in out LogHelper) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            return LogTableEntityFactory_Package.getInstance.getLogTableEntityInstance.dropTable;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop log table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function create (This : in out LogHelper) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            return LogTableEntityFactory_Package.getInstance.getLogTableEntityInstance.createTable;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create new log table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function restore (This : in out LogHelper) return Unbounded_String is
      success : Unbounded_String;
      logTableEntity : LogTableEntity_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            logTableEntity := LogTableEntityFactory_Package.getInstance.getLogTableEntityInstance;
            result := AbSqlTableUtil_Package.getInstance.restoreTable (logTableEntity, This.portion);
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

   function backup (This : in out LogHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Backup Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (LogTableEntityFactory_Package.getInstance.getLogTableEntityInstance);
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

   procedure drop (This : in out LogHelper) is
      Java_Result : constant Unbounded_String := LogHelper'Class (This).drop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drop;

   procedure create (This : in out LogHelper) is
      Java_Result : constant Unbounded_String := LogHelper'Class (This).create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure restore (This : in out LogHelper) is
      Java_Result : constant Unbounded_String := LogHelper'Class (This).restore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restore;

   procedure backup (This : in out LogHelper) is
      Java_Result : constant Unbounded_String := LogHelper'Class (This).backup;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backup;

end admin.taghelpers.LogHelper_Package;


