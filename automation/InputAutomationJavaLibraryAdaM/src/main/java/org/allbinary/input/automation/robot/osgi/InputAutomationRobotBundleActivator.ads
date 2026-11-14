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

with AllBinary_Java;
limited with org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package;
package org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References is
   type InputAutomationRobotBundleActivator_Access is access all org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package.InputAutomationRobotBundleActivator'Class;
   type InputAutomationRobotBundleActivator_Access_Array is array (Natural range <>) of InputAutomationRobotBundleActivator_Access;
   type InputAutomationRobotBundleActivator_Access_Array_Access is access all InputAutomationRobotBundleActivator_Access_Array;
   type InputAutomationRobotBundleActivator_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotBundleActivator_Access_Array_Access;
   type InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access is access all InputAutomationRobotBundleActivator_Access_Array_Access_Array;
   type InputAutomationRobotBundleActivator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotBundleActivator_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotBundleActivator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotBundleActivator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotBundleActivator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotBundleActivator_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotBundleActivator_Access_Array_Object'Class then InputAutomationRobotBundleActivator_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationRobotBundleActivator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotBundleActivator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotBundleActivator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotBundleActivator_Access_Array_Access_Array_Object'Class then InputAutomationRobotBundleActivator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References;

with org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References;
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
limited with bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
with bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References;
limited with org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package is

   package BundleActivator_Package renames Standard.org.osgi.framework.BundleActivator_Package;
   package BundleContext_Package renames Standard.org.osgi.framework.BundleContext_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package InputAutomationRobotChangeListener_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
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
   subtype InputAutomationRobotChangeListener_Access is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access;
   use type InputAutomationRobotChangeListener_Access;
   subtype InputAutomationRobotChangeListener_Access_Array is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access_Array;
   use type InputAutomationRobotChangeListener_Access_Array;
   subtype InputAutomationRobotChangeListener_Access_Array_Access is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access_Array_Access;
   use type InputAutomationRobotChangeListener_Access_Array_Access;
   subtype InputAutomationRobotChangeListener_Access_Array_Access_Array is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access_Array_Access_Array;
   use type InputAutomationRobotChangeListener_Access_Array_Access_Array;
   subtype InputAutomationRobotChangeListener_Access_Array_Access_Array_Access is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access_Array_Access_Array_Access;
   use type InputAutomationRobotChangeListener_Access_Array_Access_Array_Access;
   subtype InputRobotInterface_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access;
   use type InputRobotInterface_Access;
   subtype InputRobotInterface_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array;
   use type InputRobotInterface_Access_Array;
   subtype InputRobotInterface_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access;
   use type InputRobotInterface_Access_Array_Access;
   subtype InputRobotInterface_Access_Array_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array;
   use type InputRobotInterface_Access_Array_Access_Array;
   subtype InputRobotInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array_Access;
   use type InputRobotInterface_Access_Array_Access_Array_Access;
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


   subtype InputAutomationRobotBundleActivator_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.InputAutomationRobotBundleActivator_Access;
   function "=" (Left, Right : InputAutomationRobotBundleActivator_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References."=";
   subtype InputAutomationRobotBundleActivator_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.InputAutomationRobotBundleActivator_Access_Array;
   function "=" (Left, Right : InputAutomationRobotBundleActivator_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References."=";
   subtype InputAutomationRobotBundleActivator_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.InputAutomationRobotBundleActivator_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotBundleActivator_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References."=";
   function Java_Box (Value : InputAutomationRobotBundleActivator_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotBundleActivator_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotBundleActivator_Access_Array_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.Java_Unbox_InputAutomationRobotBundleActivator_Access_Array;
   subtype InputAutomationRobotBundleActivator_Access_Array_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.InputAutomationRobotBundleActivator_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationRobotBundleActivator_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References."=";
   subtype InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References."=";
   function Java_Box (Value : InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotBundleActivator_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotBundleActivator_Access_Array_Access_Array_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotBundleActivator_Package_References.Java_Unbox_InputAutomationRobotBundleActivator_Access_Array_Access_Array;

   type InputAutomationRobotBundleActivator is new Java_Object and BundleActivator with record
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


