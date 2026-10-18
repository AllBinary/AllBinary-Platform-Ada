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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package; use bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package;

package bundle.input.automation.InputAutomationBundleActivator_Package is

   package BundleActivator_Package renames Standard.org.osgi.framework.BundleActivator_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationBundleActivator is tagged;
   type InputAutomationBundleActivator_Access is access all InputAutomationBundleActivator'Class;
   type InputAutomationBundleActivator_Access_Array is array (Natural range <>) of InputAutomationBundleActivator_Access;
   type InputAutomationBundleActivator_Access_Array_Access is access all InputAutomationBundleActivator_Access_Array;
   type InputAutomationBundleActivator_Access_Array_Access_Array is array (Natural range <>) of InputAutomationBundleActivator_Access_Array_Access;
   type InputAutomationBundleActivator_Access_Array_Access_Array_Access is access all InputAutomationBundleActivator_Access_Array_Access_Array;

   type InputAutomationBundleActivator is new Java_Object and BundleActivator and InputAutomationBundleActivatorListenerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   moduleManagementThread : Thread_Access;
   bundleContext : BundleContext_Access;

   procedure Initialize (This : in out InputAutomationBundleActivator'Class);
   function Create return InputAutomationBundleActivator_Access;
   function getBundleContext return BundleContext_Access;
   procedure start (This : in out InputAutomationBundleActivator; bundleContext_Param : access BundleContext_Package.BundleContext'Class);
   procedure registerAsService (This : in out InputAutomationBundleActivator);
   procedure useServices (This : in out InputAutomationBundleActivator);
   procedure stop (This : in out InputAutomationBundleActivator; context_Param : access BundleContext_Package.BundleContext'Class);

end bundle.input.automation.InputAutomationBundleActivator_Package;


