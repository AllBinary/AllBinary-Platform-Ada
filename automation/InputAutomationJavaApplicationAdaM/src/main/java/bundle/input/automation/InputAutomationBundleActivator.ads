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

limited with bundle.input.automation.InputAutomationBundleActivator_Package;
package bundle.input.automation.InputAutomationBundleActivator_Package_References is
   type InputAutomationBundleActivator_Access is access all bundle.input.automation.InputAutomationBundleActivator_Package.InputAutomationBundleActivator'Class;
   type InputAutomationBundleActivator_Access_Array is array (Natural range <>) of InputAutomationBundleActivator_Access;
   type InputAutomationBundleActivator_Access_Array_Access is access all InputAutomationBundleActivator_Access_Array;
   type InputAutomationBundleActivator_Access_Array_Access_Array is array (Natural range <>) of InputAutomationBundleActivator_Access_Array_Access;
   type InputAutomationBundleActivator_Access_Array_Access_Array_Access is access all InputAutomationBundleActivator_Access_Array_Access_Array;
end bundle.input.automation.InputAutomationBundleActivator_Package_References;

with bundle.input.automation.InputAutomationBundleActivator_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package; use bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package bundle.input.automation.InputAutomationBundleActivator_Package is

   package BundleActivator_Package renames Standard.org.osgi.framework.BundleActivator_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
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


   subtype InputAutomationBundleActivator_Access is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access;
   function "=" (Left, Right : InputAutomationBundleActivator_Access) return Boolean renames bundle.input.automation.InputAutomationBundleActivator_Package_References."=";
   subtype InputAutomationBundleActivator_Access_Array is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access_Array;
   function "=" (Left, Right : InputAutomationBundleActivator_Access_Array) return Boolean renames bundle.input.automation.InputAutomationBundleActivator_Package_References."=";
   subtype InputAutomationBundleActivator_Access_Array_Access is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access_Array_Access;
   function "=" (Left, Right : InputAutomationBundleActivator_Access_Array_Access) return Boolean renames bundle.input.automation.InputAutomationBundleActivator_Package_References."=";
   subtype InputAutomationBundleActivator_Access_Array_Access_Array is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationBundleActivator_Access_Array_Access_Array) return Boolean renames bundle.input.automation.InputAutomationBundleActivator_Package_References."=";
   subtype InputAutomationBundleActivator_Access_Array_Access_Array_Access is bundle.input.automation.InputAutomationBundleActivator_Package_References.InputAutomationBundleActivator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationBundleActivator_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.InputAutomationBundleActivator_Package_References."=";

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


