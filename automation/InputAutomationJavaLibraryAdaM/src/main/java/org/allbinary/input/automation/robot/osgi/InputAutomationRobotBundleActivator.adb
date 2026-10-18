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


with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package; use bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
with org.allbinary.osgi.OSGIActivatorUtil_Package; use org.allbinary.osgi.OSGIActivatorUtil_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;

package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package is

   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package InputAutomationRobotServiceInterface_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
   package OSGIActivatorUtil_Package renames Standard.org.allbinary.osgi.OSGIActivatorUtil_Package;
   procedure Initialize_Fields (This : in out InputAutomationRobotBundleActivator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.inputRobotInterface := null;
      This.serviceFactory := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationRobotBundleActivator'Class) is
   begin
      Initialize_Fields (This);
        InputAutomationRobotBundleActivator'Class (This).init;
   end Initialize;

   function Create return InputAutomationRobotBundleActivator_Access is
      This : constant InputAutomationRobotBundleActivator_Access := new InputAutomationRobotBundleActivator;
   begin
      InputAutomationRobotBundleActivator_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out InputAutomationRobotBundleActivator) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end init;

   --  throws Exception
   procedure registerAsService (This : in out InputAutomationRobotBundleActivator; bundleContext_Param : access BundleContext_Package.BundleContext'Class) is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
   begin
        OSGIActivatorUtil_Package.registerAsService (bundleContext, InputAutomationRobotBundleActivator'Class (This).getServiceFactory, InputAutomationRobotServiceInterface_Package.InputAutomationRobotServiceInterface'Tag.getName);
   end registerAsService;

   --  throws Exception
   function getInputAutomationRobotChangeListener (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) return InputAutomationRobotChangeListener_Access is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
      serviceReference : ServiceReference_Access;
      inputAutomationRobotChangeListener : InputAutomationRobotChangeListener_Access;
   begin
        serviceReference := context.getServiceReference (InputAutomationRobotChangeListener_Package.InputAutomationRobotChangeListener'Tag.getName);
        if (serviceReference) /= (null) then
            inputAutomationRobotChangeListener := InputAutomationRobotChangeListener_Access (context.getService (serviceReference));
            if (inputAutomationRobotChangeListener) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Service For ServiceReference")));
            end if;
            return inputAutomationRobotChangeListener;
        else
            This.logUtil.putF (To_Unbounded_String ("No ServiceReference: ") & InputAutomationRobotChangeListener_Package.InputAutomationRobotChangeListener'Tag.getName, InputAutomationRobotBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("getInputAutomationRobotChangeListener"));
            return null;
        end if;
   end getInputAutomationRobotChangeListener;

   procedure addRobots (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
      inputAutomationRobotChangeListener : InputAutomationRobotChangeListener_Access;
      inputAutomationRobotChangeEvent : InputAutomationRobotChangeEvent_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationRobotBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("addRobots"));
            inputAutomationRobotChangeListener := InputAutomationRobotBundleActivator'Class (This).getInputAutomationRobotChangeListener (context);
            if (inputAutomationRobotChangeListener) /= (null) then
                for index in 0 .. (InputAutomationRobotBundleActivator'Class (This).getInputRobotInterface'Length) - 1 loop
                    inputAutomationRobotChangeEvent := InputAutomationRobotUtil_Package.getChangeEvent (InputAutomationRobotBundleActivator'Class (This).getInputRobotInterface (index));
                    inputAutomationRobotChangeListener.onAdd (inputAutomationRobotChangeEvent);
                end loop;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (This.commonStrings.EXCEPTION_Id, InputAutomationRobotBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("addModules"));
                end;
        end;
   end addRobots;

   procedure removeRobots (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
      inputAutomationRobotChangeListener : InputAutomationRobotChangeListener_Access;
      inputAutomationRobotChangeEvent : InputAutomationRobotChangeEvent_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationRobotBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("removeRobots"));
            inputAutomationRobotChangeListener := InputAutomationRobotBundleActivator'Class (This).getInputAutomationRobotChangeListener (context);
            if (inputAutomationRobotChangeListener) /= (null) then
                for index in 0 .. (InputAutomationRobotBundleActivator'Class (This).getInputRobotInterface'Length) - 1 loop
                    inputAutomationRobotChangeEvent := InputAutomationRobotUtil_Package.getChangeEvent (InputAutomationRobotBundleActivator'Class (This).getInputRobotInterface (index));
                    inputAutomationRobotChangeListener.onRemove (inputAutomationRobotChangeEvent);
                end loop;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF (This.commonStrings.EXCEPTION_Id, InputAutomationRobotBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("removeRobots"));
                end;
        end;
   end removeRobots;

   --  throws Exception
   procedure start (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationRobotBundleActivator_Access'(This'Unchecked_Access), This.commonStrings.START);
        InputAutomationRobotBundleActivator'Class (This).addRobots (context);
        InputAutomationRobotBundleActivator'Class (This).registerAsService (context);
   end start;

   --  throws Exception
   procedure stop (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Stop"), InputAutomationRobotBundleActivator_Access'(This'Unchecked_Access), This.commonStrings.START);
        InputAutomationRobotBundleActivator'Class (This).removeRobots (context);
   end stop;

   function getServiceFactory (This : in out InputAutomationRobotBundleActivator) return Java_Object_Access is
   begin
        return Java_Object_Access (This.serviceFactory);
   end getServiceFactory;

   procedure setServiceFactory (This : in out InputAutomationRobotBundleActivator; serviceObject_Param : access ServiceFactory_Package.ServiceFactory'Class) is
      serviceObject : constant ServiceFactory_Access := ServiceFactory_Access (serviceObject_Param);
   begin
        This.serviceFactory := serviceObject;
   end setServiceFactory;

   function getInputRobotInterface (This : in out InputAutomationRobotBundleActivator) return InputRobotInterface_Access_Array_Access is
   begin
        return This.inputRobotInterface;
   end getInputRobotInterface;

   procedure setInputRobotInterface (This : in out InputAutomationRobotBundleActivator; inputRobotInterface : InputRobotInterface_Access_Array_Access) is
   begin
        This.inputRobotInterface := inputRobotInterface;
   end setInputRobotInterface;

   procedure getInputAutomationRobotChangeListener (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      Java_Result : constant InputAutomationRobotChangeListener_Access := InputAutomationRobotBundleActivator'Class (This).getInputAutomationRobotChangeListener (context_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputAutomationRobotChangeListener;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package;


