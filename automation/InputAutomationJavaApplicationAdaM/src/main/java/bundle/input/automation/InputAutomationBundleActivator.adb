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


with org.osgi.framework.BundleActivator_Package; use org.osgi.framework.BundleActivator_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
with bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package; use bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package;
with bundle.input.automation.robot.InputAutomationRobotChangeListener_Package; use bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
with org.allbinary.input.automation.InputAutomationJFrame_Package; use org.allbinary.input.automation.InputAutomationJFrame_Package;
with org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package; use org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package;
with org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package; use org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package;
with org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package; use org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.osgi.OSGIActivatorUtil_Package; use org.allbinary.osgi.OSGIActivatorUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.automation.InputAutomationJFrame_Package_References;

package body bundle.input.automation.InputAutomationBundleActivator_Package is

   package InputAutomationConfigurationModuleChangeListener_Package renames Standard.bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package;
   package InputAutomationRobotChangeListener_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
   package InputAutomationJFrame_Package renames Standard.org.allbinary.input.automation.InputAutomationJFrame_Package;
   package InputAutomationModuleServiceConsumer_Package renames Standard.org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package;
   package InputAutomationNewBundleRunnable_Package renames Standard.org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package;
   package InputAutomationServiceFactory_Package renames Standard.org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package;
   package InputAutomationRobotServiceConsumer_Package renames Standard.org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package;
   package OSGIActivatorUtil_Package renames Standard.org.allbinary.osgi.OSGIActivatorUtil_Package;
   subtype BundleContext_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access;
   function "=" (Left, Right : BundleContext_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array;
   function "=" (Left, Right : BundleContext_Access_Array) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access;
   function "=" (Left, Right : BundleContext_Access_Array_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array;
   function "=" (Left, Right : BundleContext_Access_Array_Access_Array) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BundleContext_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
      InputAutomationBundleActivator_Package.Initialize (This.all);
      return This;
   end Create;


   function getBundleContext return BundleContext_Access is
   begin
        return InputAutomationBundleActivator_Package.bundleContext;
   end getBundleContext;

   --  throws Exception
   procedure start (This : in out InputAutomationBundleActivator; bundleContext_Param : access BundleContext_Package.BundleContext'Class) is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationBundleActivator_Access'(This'Unchecked_Access), This.commonStrings.START);
            bundleContext := bundleContext;
            InputAutomationBundleActivator_Package.moduleManagementThread := Thread_Package.Create (InputAutomationNewBundleRunnable_Package.Create (InputAutomationBundleActivator_Access'(This'Unchecked_Access)));
            InputAutomationBundleActivator_Package.moduleManagementThread.start;
            InputAutomationJFrame_Package.create (InputAutomationBundleActivator_Access'(This'Unchecked_Access));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationBundleActivator_Access'(This'Unchecked_Access), This.commonStrings.START, e);
            Java_Throw (e);
                end;
        end;
   end start;

   --  throws Exception
   procedure registerAsService (This : in out InputAutomationBundleActivator) is
   begin
        OSGIActivatorUtil_Package.registerAsService (InputAutomationBundleActivator'Class (This).getBundleContext, InputAutomationServiceFactory_Package.getInstance, InputAutomationConfigurationModuleChangeListener_Package.InputAutomationConfigurationModuleChangeListener'Tag.getName);
        OSGIActivatorUtil_Package.registerAsService (InputAutomationBundleActivator'Class (This).getBundleContext, InputAutomationServiceFactory_Package.getInstance, InputAutomationRobotChangeListener_Package.InputAutomationRobotChangeListener'Tag.getName);
   end registerAsService;

   --  throws Exception
   procedure useServices (This : in out InputAutomationBundleActivator) is
   begin
        InputAutomationRobotServiceConsumer_Package.Create (InputAutomationBundleActivator'Class (This).getBundleContext).process;
        InputAutomationModuleServiceConsumer_Package.Create (InputAutomationBundleActivator'Class (This).getBundleContext).process;
   end useServices;

   --  throws Exception
   procedure stop (This : in out InputAutomationBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) is
      context : constant BundleContext_Access := BundleContext_Access (context_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("stop"));
        if (not org.allbinary.input.automation.InputAutomationJFrame_Package_References."=" (InputAutomationJFrame_Package.getInstance, null)) then
            InputAutomationJFrame_Package.destroy;
        else
            This.logUtil.putF (To_Unbounded_String ("Nothing to stop"), InputAutomationBundleActivator_Access'(This'Unchecked_Access), To_Unbounded_String ("stop"));
        end if;
   end stop;

begin
   null;
   moduleManagementThread := null;
   bundleContext := null;

end bundle.input.automation.InputAutomationBundleActivator_Package;


