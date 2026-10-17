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


package body org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package is

   procedure Initialize_Fields (This : in out InputAutomationModuleBundleActivator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.inputAutomationModuleInterface := null;
      This.serviceFactory := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleBundleActivator'Class) is
   begin
      Initialize_Fields (This);
        This.init;
   end Initialize;

   function Create return InputAutomationModuleBundleActivator_Access is
      This : constant InputAutomationModuleBundleActivator_Access := new InputAutomationModuleBundleActivator;
   begin
      InputAutomationModuleBundleActivator_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out InputAutomationModuleBundleActivator) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end init;

   --  throws Exception
   function getInputAutomationConfigurationModuleChangeListener (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) return InputAutomationConfigurationModuleChangeListener_Access is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
      serviceReference : ServiceReference_Access;
      inputAutomationConfigurationModuleChangeListener : InputAutomationConfigurationModuleChangeListener_Access;
   begin
        serviceReference := context.getServiceReference (InputAutomationConfigurationModuleChangeListener_Package.InputAutomationConfigurationModuleChangeListener'Tag.getName);
        if (serviceReference) /= (null) then
            inputAutomationConfigurationModuleChangeListener := InputAutomationConfigurationModuleChangeListener_Access (context.getService (serviceReference));
            if (inputAutomationConfigurationModuleChangeListener) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Service For ServiceReference")));
            end if;
            return inputAutomationConfigurationModuleChangeListener;
        else
            This.logUtil.putF (To_Unbounded_String ("No ServiceReference: ") & InputAutomationConfigurationModuleChangeListener_Package.InputAutomationConfigurationModuleChangeListener'Tag.getName, InputAutomationModuleBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("addModules"));
            return null;
        end if;
   end getInputAutomationConfigurationModuleChangeListener;

   procedure addModules (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
      inputAutomationConfigurationModuleChangeListener : InputAutomationConfigurationModuleChangeListener_Access;
      inputAutomationConfigurationModuleChangeEvent : InputAutomationConfigurationModuleChangeEvent_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationModuleBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("addModules"));
            inputAutomationConfigurationModuleChangeListener := This.getInputAutomationConfigurationModuleChangeListener (context);
            if (inputAutomationConfigurationModuleChangeListener) /= (null) then
                for index in 0 .. (This.getInputAutomationModuleInterface'Length) - 1 loop
                    inputAutomationConfigurationModuleChangeEvent := InputAutomationConfigurationUtil_Package.getChangeEvent (This.getInputAutomationModuleInterface (index));
                    inputAutomationConfigurationModuleChangeListener.onAdd (inputAutomationConfigurationModuleChangeEvent);
                end loop;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (This.commonStrings.EXCEPTION_Id, InputAutomationModuleBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("addModules"));
                end;
        end;
   end addModules;

   --  throws Exception
   procedure registerAsService (This : in out InputAutomationModuleBundleActivator; bundleContext_Param : access BundleContext_Package.BundleContext'Class) is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
   begin
        OSGIActivatorUtil_Package.registerAsService (bundleContext, This.getServiceFactory, InputAutomationModuleServiceInterface_Package.InputAutomationModuleServiceInterface'Tag.getName);
   end registerAsService;

   procedure removeModules (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
      inputAutomationConfigurationModuleChangeListener : InputAutomationConfigurationModuleChangeListener_Access;
      inputAutomationConfigurationModuleChangeEvent : InputAutomationConfigurationModuleChangeEvent_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationModuleBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("removeModules"));
            inputAutomationConfigurationModuleChangeListener := This.getInputAutomationConfigurationModuleChangeListener (context);
            if (inputAutomationConfigurationModuleChangeListener) /= (null) then
                for index in 0 .. (This.getInputAutomationModuleInterface'Length) - 1 loop
                    inputAutomationConfigurationModuleChangeEvent := InputAutomationConfigurationUtil_Package.getChangeEvent (This.getInputAutomationModuleInterface (index));
                    inputAutomationConfigurationModuleChangeListener.onRemove (inputAutomationConfigurationModuleChangeEvent);
                end loop;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (This.commonStrings.EXCEPTION_Id, InputAutomationModuleBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("removeModules"));
                end;
        end;
   end removeModules;

   --  throws Exception
   procedure start (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationModuleBundleActivator_Access'(This'Unchecked_Access), This.commonStrings.START);
        This.addModules (context);
        This.registerAsService (context);
   end start;

   --  throws Exception
   procedure stop (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationModuleBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("stop"));
        This.removeModules (context);
   end stop;

   function getInputAutomationModuleInterface (This : in out InputAutomationModuleBundleActivator) return InputAutomationModuleFactoryInterface_Access_Array_Access is
   begin
        return This.inputAutomationModuleInterface;
   end getInputAutomationModuleInterface;

   procedure setInputAutomationModuleInterface (This : in out InputAutomationModuleBundleActivator; inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access_Array_Access) is
   begin
        This.inputAutomationModuleInterface := inputAutomationModuleInterface;
   end setInputAutomationModuleInterface;

   function getServiceFactory (This : in out InputAutomationModuleBundleActivator) return Java_Object_Access is
   begin
        return This.serviceFactory;
   end getServiceFactory;

   procedure setServiceFactory (This : in out InputAutomationModuleBundleActivator; serviceObject_Param : access ServiceFactory_Package.ServiceFactory'Class) is
      serviceObject : constant ServiceFactory_Access := ServiceFactory_Access (serviceObject_Param);
   begin
        This.serviceFactory := serviceObject;
   end setServiceFactory;

   procedure getInputAutomationConfigurationModuleChangeListener (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      Java_Result : constant InputAutomationConfigurationModuleChangeListener_Access := InputAutomationModuleBundleActivator'Class (This).getInputAutomationConfigurationModuleChangeListener (context_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputAutomationConfigurationModuleChangeListener;

end org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package;


