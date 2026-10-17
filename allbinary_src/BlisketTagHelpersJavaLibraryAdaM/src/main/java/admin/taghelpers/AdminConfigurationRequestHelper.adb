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


package body admin.taghelpers.AdminConfigurationRequestHelper_Package is

   procedure Initialize_Fields (This : in out AdminConfigurationRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdminConfigurationRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
        This.request := HttpServletRequest_Access (pageContext.getRequest);
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return AdminConfigurationRequestHelper_Access is
      This : constant AdminConfigurationRequestHelper_Access := new AdminConfigurationRequestHelper;
   begin
      AdminConfigurationRequestHelper_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   function insert (This : in out AdminConfigurationRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      adminConfigurationInterface : AdminConfigurationInterface_Access;
      error : Unbounded_String;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            success := To_Unbounded_String ("Successfully inserted AdminConfiguration");
            adminConfigurationInterface := AdminConfigurationInterface_Access (AdminConfiguration_Package.Create (This.request));
            adminConfigurationInterface.write;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to created AdminConfiguration");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("insert()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out AdminConfigurationRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully deleted AdminConfiguration");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   function update (This : in out AdminConfigurationRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      adminConfigurationInterface : AdminConfigurationInterface_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Updated AdminConfiguration Successful");
            adminConfigurationInterface := AdminConfigurationInterface_Access (AdminConfiguration_Package.Create (This.request));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

end admin.taghelpers.AdminConfigurationRequestHelper_Package;


