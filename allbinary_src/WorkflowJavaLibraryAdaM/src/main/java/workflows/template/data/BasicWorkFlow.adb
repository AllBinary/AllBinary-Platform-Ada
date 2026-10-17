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


package body workflows.template.data.BasicWorkFlow_Package is

   procedure Initialize_Fields (This : in out BasicWorkFlow'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicWorkFlow'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.WORKFLOW) then
            This.logUtil.putF (To_Unbounded_String ("Properties: ") & propertiesHashMap.toString, This'Unchecked_Access, To_Unbounded_String ("BasicWorkFlow()"));
        end if;
        This.propertiesHashMap := propertiesHashMap;
        This.pageContext := pageContext;
        This.validationDomNodeInterface := ValidationComponentInterface_Access (TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, propertiesHashMap, pageContext));
   end Initialize;

   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return BasicWorkFlow_Access is
      This : constant BasicWorkFlow_Access := new BasicWorkFlow;
   begin
      Initialize (This.all, propertiesHashMap, pageContext);
      return This;
   end Create;

   --  throws Exception
   function getName (This : in out BasicWorkFlow) return Unbounded_String is
   begin
        return Unbounded_String (This.getPropertiesHashMap.get (WorkFlowData_Package.getInstance.NAME));
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.PROCESS);
        end if;
        if This.validationDomNodeInterface.isValid.booleanValue then
            This.pageContext.getOut.print (This.validationDomNodeInterface.view);
            return To_Unbounded_String (Java_Image (TagSupport_Package.EVAL_BODY_INCLUDE));
        else
            This.pageContext.getOut.print (This.validationDomNodeInterface.validationInfo);
            return To_Unbounded_String (Java_Image (TagSupport_Package.SKIP_BODY));
        end if;
   end process;

   procedure getName (This : in out BasicWorkFlow) is
      Java_Result : constant Unbounded_String := BasicWorkFlow'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getPropertiesHashMap (This : in out BasicWorkFlow) is
      Java_Result : constant HashMap_Access := BasicWorkFlow'Class (This).getPropertiesHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPropertiesHashMap;

   procedure getPageContext (This : in out BasicWorkFlow) is
      Java_Result : constant PageContext_Access := BasicWorkFlow'Class (This).getPageContext;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPageContext;

   procedure process (This : in out BasicWorkFlow) is
      Java_Result : constant Integer := BasicWorkFlow'Class (This).process;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

end workflows.template.data.BasicWorkFlow_Package;


