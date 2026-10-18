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


with org.allbinary.logic.control.workflow.WorkFlowData_Package; use org.allbinary.logic.control.workflow.WorkFlowData_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.TransformFactory_Package; use org.allbinary.logic.visual.transform.TransformFactory_Package;

package body workflows.template.data.BasicWorkFlow_Package is

   package WorkFlowData_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowData_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package TransformFactory_Package renames Standard.org.allbinary.logic.visual.transform.TransformFactory_Package;
   procedure Initialize_Fields (This : in out BasicWorkFlow'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.abeClientInformation := AbeClientInformationInterface_Access (ServiceClientInformationInterfaceFactory_Package.getInstance);
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicWorkFlow'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.WORKFLOW) then
            This.logUtil.putF (To_Unbounded_String ("Properties: ") & propertiesHashMap.toString, BasicWorkFlow_Access'(This'Unchecked_Access), To_Unbounded_String ("BasicWorkFlow()"));
        end if;
        This.propertiesHashMap := propertiesHashMap;
        This.pageContext := pageContext;
        This.validationDomNodeInterface := ValidationComponentInterface_Access (TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, propertiesHashMap, pageContext));
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicWorkFlow_Access is
      This : constant BasicWorkFlow_Access := new BasicWorkFlow;
   begin
      BasicWorkFlow_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   function getName (This : in out BasicWorkFlow) return Unbounded_String is
   begin
        return Java_Unbox (BasicWorkFlow'Class (This).getPropertiesHashMap.get (WorkFlowData_Package.getInstance.NAME));
   end getName;

   function getPropertiesHashMap (This : in out BasicWorkFlow) return HashMap_Access is
   begin
        return This.propertiesHashMap;
   end getPropertiesHashMap;

   function getPageContext (This : in out BasicWorkFlow) return PageContext_Access is
   begin
        return This.pageContext;
   end getPageContext;

   --  throws Exception
   function process (This : in out BasicWorkFlow) return Integer is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.WORKFLOW) then
            This.logUtil.putF (This.commonStrings.START, BasicWorkFlow_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        end if;
        if This.validationDomNodeInterface.isValid.booleanValue then
            This.pageContext.getOut.print (This.validationDomNodeInterface.view);
            return To_Unbounded_String (Java_Image (TagSupport_Package.EVAL_BODY_INCLUDE));
        else
            This.pageContext.getOut.print (This.validationDomNodeInterface.validationInfo);
            return To_Unbounded_String (Java_Image (TagSupport_Package.SKIP_BODY));
        end if;
   end process;

end workflows.template.data.BasicWorkFlow_Package;


