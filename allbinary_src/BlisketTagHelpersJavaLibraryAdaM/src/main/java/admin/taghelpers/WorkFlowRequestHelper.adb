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


package body admin.taghelpers.WorkFlowRequestHelper_Package is

   procedure Initialize_Fields (This : in out WorkFlowRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.workFlowInterface := NewWorkFlowFactory_Package.getInstance.getInstance (This.abeClientInformation, hashMap, pageContext);
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return WorkFlowRequestHelper_Access is
      This : constant WorkFlowRequestHelper_Access := new WorkFlowRequestHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   --  throws Exception
   function delete (This : in out WorkFlowRequestHelper) return Unbounded_String is
      stringUtil : StringUtil_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            stringUtil := StringUtil_Package.getInstance;
            WorkFlowEntityFactory_Package.getInstance.create2.delete (This.workFlowInterface.getName, stringUtil.EMPTY_STRING);
            success := To_Unbounded_String ("Successfully Removed the workflow with ") & Java_Image (WorkFlowData_Package.getInstance.NAME) & To_Unbounded_String ("= ") & This.workFlowInterface.getName & To_Unbounded_String (" from ");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            begin
                error := To_Unbounded_String ("Failed to remove workflow with ") & Java_Image (WorkFlowData_Package.getInstance.NAME) & To_Unbounded_String ("= ") & This.workFlowInterface.getName & To_Unbounded_String (" from ");
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                    This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
                end if;
                Java_Throw (Java_New_Exception ("Exception", e));
            exception
                when Java_Occurrence : others =>
                    declare
                        e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                error := To_Unbounded_String ("Failed to get data from workflowinterface to set error string");
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                    This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e2);
                end if;
                return error;
                    end;
            end;
                end;
        end;
   end delete;

   function insert (This : in out WorkFlowRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("New User Successfully added to the Users Table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("add()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add User");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("add()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function update (This : in out WorkFlowRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Updated WorkFlow Successfully");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update WorkFlow");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   procedure delete (This : in out WorkFlowRequestHelper) is
      Java_Result : constant Unbounded_String := WorkFlowRequestHelper'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

   procedure insert (This : in out WorkFlowRequestHelper) is
      Java_Result : constant Unbounded_String := WorkFlowRequestHelper'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure update (This : in out WorkFlowRequestHelper) is
      Java_Result : constant Unbounded_String := WorkFlowRequestHelper'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

end admin.taghelpers.WorkFlowRequestHelper_Package;


