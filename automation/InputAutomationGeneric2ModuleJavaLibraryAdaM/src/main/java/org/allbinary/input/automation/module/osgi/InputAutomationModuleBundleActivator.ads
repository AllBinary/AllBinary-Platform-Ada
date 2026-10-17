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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.osgi.framework.BundleActivator_Package; use org.osgi.framework.BundleActivator_Package;
with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.ServiceFactory_Package; use org.osgi.framework.ServiceFactory_Package;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with bundle.input.automation.module.InputAutomationModuleServiceInterface_Package; use bundle.input.automation.module.InputAutomationModuleServiceInterface_Package;
with bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package; use bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.osgi.OSGIActivatorUtil_Package; use org.allbinary.osgi.OSGIActivatorUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package is

   package BundleActivator_Package renames Standard.org.osgi.framework.BundleActivator_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package InputAutomationModuleServiceInterface_Package renames Standard.bundle.input.automation.module.InputAutomationModuleServiceInterface_Package;
   package InputAutomationConfigurationModuleChangeListener_Package renames Standard.bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package;
   package InputAutomationConfigurationModuleChangeEvent_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;
   package InputAutomationConfigurationUtil_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package;
   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIActivatorUtil_Package renames Standard.org.allbinary.osgi.OSGIActivatorUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationModuleBundleActivator is tagged;
   type InputAutomationModuleBundleActivator_Access is access all InputAutomationModuleBundleActivator'Class;
   type InputAutomationModuleBundleActivator_Access_Array is array (Natural range <>) of InputAutomationModuleBundleActivator_Access;
   type InputAutomationModuleBundleActivator_Access_Array_Access is access all InputAutomationModuleBundleActivator_Access_Array;

   type InputAutomationModuleBundleActivator is new BundleActivator with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access_Array_Access;
      serviceFactory : ServiceFactory_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleBundleActivator'Class);
   function Create return InputAutomationModuleBundleActivator_Access;
   procedure init (This : in out InputAutomationModuleBundleActivator);
   function getInputAutomationConfigurationModuleChangeListener (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext'Class) return InputAutomationConfigurationModuleChangeListener_Access;
   procedure getInputAutomationConfigurationModuleChangeListener (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext'Class);
   procedure addModules (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext'Class);
   procedure registerAsService (This : in out InputAutomationModuleBundleActivator; bundleContext_Param : access BundleContext'Class);
   procedure removeModules (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext'Class);
   procedure start (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext'Class);
   procedure stop (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext'Class);
   function getInputAutomationModuleInterface (This : in out InputAutomationModuleBundleActivator) return InputAutomationModuleFactoryInterface_Access_Array_Access;
   procedure setInputAutomationModuleInterface (This : in out InputAutomationModuleBundleActivator; inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access_Array_Access);
   function getServiceFactory (This : in out InputAutomationModuleBundleActivator) return Java_Object_Access;
   procedure setServiceFactory (This : in out InputAutomationModuleBundleActivator; serviceObject_Param : access ServiceFactory'Class);

end org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package;


