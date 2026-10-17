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


package body bundle.input.automation.InputAutomationBundleActivator_Package is

   procedure Initialize_Fields (This : in out InputAutomationBundleActivator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out InputAutomationBundleActivator'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InputAutomationBundleActivator_Access is
      This : constant InputAutomationBundleActivator_Access := new InputAutomationBundleActivator;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getBundleContext return BundleContext_Access is
   begin
        return InputAutomationBundleActivator_Package.bundleContext;
   end getBundleContext;

   --  throws Exception
   procedure start (This : in out InputAutomationBundleActivator; bundleContext : BundleContext_Access) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.START);
            bundleContext := bundleContext;
            InputAutomationBundleActivator_Package.moduleManagementThread := Thread_Package.Create (InputAutomationNewBundleRunnable_Package.Create (This'Unchecked_Access));
            InputAutomationBundleActivator_Package.moduleManagementThread.start;
            InputAutomationJFrame_Package.create (This'Unchecked_Access);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.START, e);
            Java_Throw (e);
        end;
   end start;

   --  throws Exception
   procedure registerAsService (This : in out InputAutomationBundleActivator) is
   begin
        OSGIActivatorUtil_Package.registerAsService (This.getBundleContext, InputAutomationServiceFactory_Package.getInstance, InputAutomationConfigurationModuleChangeListener_Package.InputAutomationConfigurationModuleChangeListener'Tag.getName);
        OSGIActivatorUtil_Package.registerAsService (This.getBundleContext, InputAutomationServiceFactory_Package.getInstance, InputAutomationRobotChangeListener_Package.InputAutomationRobotChangeListener'Tag.getName);
   end registerAsService;

   --  throws Exception
   procedure useServices (This : in out InputAutomationBundleActivator) is
   begin
        InputAutomationRobotServiceConsumer_Package.Create (This.getBundleContext).process;
        InputAutomationModuleServiceConsumer_Package.Create (This.getBundleContext).process;
   end useServices;

   --  throws Exception
   procedure stop (This : in out InputAutomationBundleActivator; context : BundleContext_Access) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("stop"));
        if (InputAutomationJFrame_Package.getInstance) /= (null) then
            InputAutomationJFrame_Package.destroy;
        else
            This.logUtil.putF (To_Unbounded_String ("Nothing to stop"), This'Unchecked_Access, To_Unbounded_String ("stop"));
        end if;
   end stop;

   procedure getBundleContext is
      Java_Result : constant BundleContext_Access := getBundleContext;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBundleContext;

begin
   null;
   moduleManagementThread := null;
   bundleContext := null;

end bundle.input.automation.InputAutomationBundleActivator_Package;


