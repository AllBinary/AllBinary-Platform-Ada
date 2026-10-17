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


package body taghelpers.StoreTagWorkFlowHelper_Package is

   procedure Initialize_Fields (This : in out StoreTagWorkFlowHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreTagWorkFlowHelper'Class; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
            This.logUtil.putF (To_Unbounded_String ("Properties: ") & hashMap.toString, StoreTagWorkFlowHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("StoreTagWorkFlowHelper()"));
        end if;
        This.storeWorkFlowInterface := StoreTagWorkFlowFactory_Package.getInstance.getInstance (This.abeClientInformation, hashMap, pageContext);
   end Initialize;

   function Create (hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return StoreTagWorkFlowHelper_Access is
      This : constant StoreTagWorkFlowHelper_Access := new StoreTagWorkFlowHelper;
   begin
      StoreTagWorkFlowHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   function process (This : in out StoreTagWorkFlowHelper) return Integer is
      error : Unbounded_String;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Process"), StoreTagWorkFlowHelper_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
            end if;
            return This.storeWorkFlowInterface.process;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to process workflow: ");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreTagWorkFlowHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end process;

end taghelpers.StoreTagWorkFlowHelper_Package;


