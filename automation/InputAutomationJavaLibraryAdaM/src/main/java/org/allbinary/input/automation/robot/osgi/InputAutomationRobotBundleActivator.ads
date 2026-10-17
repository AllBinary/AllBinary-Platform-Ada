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
with bundle.input.automation.robot.InputAutomationRobotChangeListener_Package; use bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package; use bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.osgi.OSGIActivatorUtil_Package; use org.allbinary.osgi.OSGIActivatorUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package is

   package BundleActivator_Package renames Standard.org.osgi.framework.BundleActivator_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package InputAutomationRobotChangeListener_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
   package InputAutomationRobotServiceInterface_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIActivatorUtil_Package renames Standard.org.allbinary.osgi.OSGIActivatorUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationRobotBundleActivator is tagged;
   type InputAutomationRobotBundleActivator_Access is access all InputAutomationRobotBundleActivator'Class;
   type InputAutomationRobotBundleActivator_Access_Array is array (Natural range <>) of InputAutomationRobotBundleActivator_Access;
   type InputAutomationRobotBundleActivator_Access_Array_Access is access all InputAutomationRobotBundleActivator_Access_Array;

   type InputAutomationRobotBundleActivator is new BundleActivator with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputRobotInterface : InputRobotInterface_Access_Array_Access;
      serviceFactory : ServiceFactory_Access;
   end record;

   procedure Initialize (This : in out InputAutomationRobotBundleActivator'Class);
   function Create return InputAutomationRobotBundleActivator_Access;
   procedure init (This : in out InputAutomationRobotBundleActivator);
   procedure registerAsService (This : in out InputAutomationRobotBundleActivator; bundleContext_Param : access BundleContext_Package.BundleContext'Class);
   function getInputAutomationRobotChangeListener (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class) return InputAutomationRobotChangeListener_Access;
   procedure getInputAutomationRobotChangeListener (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure addRobots (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure removeRobots (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure start (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   procedure stop (This : in out InputAutomationRobotBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);
   function getServiceFactory (This : in out InputAutomationRobotBundleActivator) return Java_Object_Access;
   procedure setServiceFactory (This : in out InputAutomationRobotBundleActivator; serviceObject_Param : access ServiceFactory_Package.ServiceFactory'Class);
   function getInputRobotInterface (This : in out InputAutomationRobotBundleActivator) return InputRobotInterface_Access_Array_Access;
   procedure setInputRobotInterface (This : in out InputAutomationRobotBundleActivator; inputRobotInterface : InputRobotInterface_Access_Array_Access);

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package;


