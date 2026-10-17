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


   procedure Initialize (This : in out StoreTagWorkFlowHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
            This.logUtil.putF (To_Unbounded_String ("Properties: ") & hashMap.toString, This'Unchecked_Access, To_Unbounded_String ("StoreTagWorkFlowHelper()"));
        end if;
        This.storeWorkFlowInterface := StoreTagWorkFlowFactory_Package.getInstance.getInstance (This.abeClientInformation, hashMap, pageContext);
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return StoreTagWorkFlowHelper_Access is
      This : constant StoreTagWorkFlowHelper_Access := new StoreTagWorkFlowHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   --  throws Exception
   function process (This : in out StoreTagWorkFlowHelper) return Integer is
      error : Unbounded_String;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Process"), This'Unchecked_Access, This.commonStrings.PROCESS);
            end if;
            return This.storeWorkFlowInterface.process;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to process workflow: ");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
        end;
   end process;

   procedure process (This : in out StoreTagWorkFlowHelper) is
      Java_Result : constant Integer := StoreTagWorkFlowHelper'Class (This).process;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

end taghelpers.StoreTagWorkFlowHelper_Package;


