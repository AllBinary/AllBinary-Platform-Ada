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

limited with org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package;
package org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References is
   type InputAutomationModuleBundleActivator_Access is access all org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package.InputAutomationModuleBundleActivator'Class;
   type InputAutomationModuleBundleActivator_Access_Array is array (Natural range <>) of InputAutomationModuleBundleActivator_Access;
   type InputAutomationModuleBundleActivator_Access_Array_Access is access all InputAutomationModuleBundleActivator_Access_Array;
   type InputAutomationModuleBundleActivator_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleBundleActivator_Access_Array_Access;
   type InputAutomationModuleBundleActivator_Access_Array_Access_Array_Access is access all InputAutomationModuleBundleActivator_Access_Array_Access_Array;
end org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References;

with org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.osgi.framework.BundleActivator_Package; use org.osgi.framework.BundleActivator_Package;
limited with org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
limited with org.osgi.framework.ServiceFactory_Package;
with org.osgi.framework.ServiceFactory_Package_References;
limited with bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package;
with bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package_References;
limited with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package is

   package BundleActivator_Package renames Standard.org.osgi.framework.BundleActivator_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package InputAutomationConfigurationModuleChangeListener_Package renames Standard.bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package;
   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype BundleContext_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access;
   use type BundleContext_Access;
   subtype BundleContext_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array;
   use type BundleContext_Access_Array;
   subtype BundleContext_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access;
   use type BundleContext_Access_Array_Access;
   subtype BundleContext_Access_Array_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array;
   use type BundleContext_Access_Array_Access_Array;
   subtype BundleContext_Access_Array_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array_Access;
   use type BundleContext_Access_Array_Access_Array_Access;
   subtype ServiceFactory_Access is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access;
   use type ServiceFactory_Access;
   subtype ServiceFactory_Access_Array is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array;
   use type ServiceFactory_Access_Array;
   subtype ServiceFactory_Access_Array_Access is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array_Access;
   use type ServiceFactory_Access_Array_Access;
   subtype ServiceFactory_Access_Array_Access_Array is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array_Access_Array;
   use type ServiceFactory_Access_Array_Access_Array;
   subtype ServiceFactory_Access_Array_Access_Array_Access is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array_Access_Array_Access;
   use type ServiceFactory_Access_Array_Access_Array_Access;
   subtype InputAutomationConfigurationModuleChangeListener_Access is bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package_References.InputAutomationConfigurationModuleChangeListener_Access;
   use type InputAutomationConfigurationModuleChangeListener_Access;
   subtype InputAutomationConfigurationModuleChangeListener_Access_Array is bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package_References.InputAutomationConfigurationModuleChangeListener_Access_Array;
   use type InputAutomationConfigurationModuleChangeListener_Access_Array;
   subtype InputAutomationConfigurationModuleChangeListener_Access_Array_Access is bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package_References.InputAutomationConfigurationModuleChangeListener_Access_Array_Access;
   use type InputAutomationConfigurationModuleChangeListener_Access_Array_Access;
   subtype InputAutomationConfigurationModuleChangeListener_Access_Array_Access_Array is bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package_References.InputAutomationConfigurationModuleChangeListener_Access_Array_Access_Array;
   use type InputAutomationConfigurationModuleChangeListener_Access_Array_Access_Array;
   subtype InputAutomationConfigurationModuleChangeListener_Access_Array_Access_Array_Access is bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package_References.InputAutomationConfigurationModuleChangeListener_Access_Array_Access_Array_Access;
   use type InputAutomationConfigurationModuleChangeListener_Access_Array_Access_Array_Access;
   subtype InputAutomationModuleFactoryInterface_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access;
   use type InputAutomationModuleFactoryInterface_Access;
   subtype InputAutomationModuleFactoryInterface_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array;
   use type InputAutomationModuleFactoryInterface_Access_Array;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationModuleBundleActivator_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References.InputAutomationModuleBundleActivator_Access;
   function "=" (Left, Right : InputAutomationModuleBundleActivator_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References."=";
   subtype InputAutomationModuleBundleActivator_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References.InputAutomationModuleBundleActivator_Access_Array;
   function "=" (Left, Right : InputAutomationModuleBundleActivator_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References."=";
   subtype InputAutomationModuleBundleActivator_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References.InputAutomationModuleBundleActivator_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleBundleActivator_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References."=";
   subtype InputAutomationModuleBundleActivator_Access_Array_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References.InputAutomationModuleBundleActivator_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleBundleActivator_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References."=";
   subtype InputAutomationModuleBundleActivator_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References.InputAutomationModuleBundleActivator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleBundleActivator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package_References."=";

   type InputAutomationModuleBundleActivator is new Java_Object and BundleActivator with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access_Array_Access;
      serviceFactory : ServiceFactory_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleBundleActivator'Class);
   function Create return InputAutomationModuleBundleActivator_Access;
   procedure init (This : in out InputAutomationModuleBundleActivator);
   function getInputAutomationConfigurationModuleChangeListener (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) return InputAutomationConfigurationModuleChangeListener_Access;
   procedure getInputAutomationConfigurationModuleChangeListener (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure addModules (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure registerAsService (This : in out InputAutomationModuleBundleActivator; bundleContext_Param : access BundleContext_Package.BundleContext'Class);
   procedure removeModules (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure start (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure stop (This : in out InputAutomationModuleBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   function getInputAutomationModuleInterface (This : in out InputAutomationModuleBundleActivator) return InputAutomationModuleFactoryInterface_Access_Array_Access;
   procedure setInputAutomationModuleInterface (This : in out InputAutomationModuleBundleActivator; inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access_Array_Access);
   function getServiceFactory (This : in out InputAutomationModuleBundleActivator) return Java_Object_Access;
   procedure setServiceFactory (This : in out InputAutomationModuleBundleActivator; serviceObject_Param : access ServiceFactory_Package.ServiceFactory'Class);

end org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package;


