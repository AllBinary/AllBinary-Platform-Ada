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
limited with org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package;
package org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References is
   type InputAutomationModuleServiceFactory_Access is access all org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package.InputAutomationModuleServiceFactory'Class;
   type InputAutomationModuleServiceFactory_Access_Array is array (Natural range <>) of InputAutomationModuleServiceFactory_Access;
   type InputAutomationModuleServiceFactory_Access_Array_Access is access all InputAutomationModuleServiceFactory_Access_Array;
   type InputAutomationModuleServiceFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleServiceFactory_Access_Array_Access;
   type InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access is access all InputAutomationModuleServiceFactory_Access_Array_Access_Array;
   type InputAutomationModuleServiceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationModuleServiceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationModuleServiceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationModuleServiceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationModuleServiceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationModuleServiceFactory_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationModuleServiceFactory_Access_Array_Object'Class then InputAutomationModuleServiceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationModuleServiceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationModuleServiceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationModuleServiceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationModuleServiceFactory_Access_Array_Access_Array_Object'Class then InputAutomationModuleServiceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References;

with org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.osgi.framework.Bundle_Package;
with org.osgi.framework.Bundle_Package_References;
with org.osgi.framework.ServiceFactory_Package; use org.osgi.framework.ServiceFactory_Package;
limited with org.osgi.framework.ServiceRegistration_Package;
with org.osgi.framework.ServiceRegistration_Package_References;
limited with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package is

   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package ServiceRegistration_Package renames Standard.org.osgi.framework.ServiceRegistration_Package;
   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Bundle_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access;
   use type Bundle_Access;
   subtype Bundle_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array;
   use type Bundle_Access_Array;
   subtype Bundle_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access;
   use type Bundle_Access_Array_Access;
   subtype Bundle_Access_Array_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array;
   use type Bundle_Access_Array_Access_Array;
   subtype Bundle_Access_Array_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array_Access;
   use type Bundle_Access_Array_Access_Array_Access;
   subtype ServiceRegistration_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access;
   use type ServiceRegistration_Access;
   subtype ServiceRegistration_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array;
   use type ServiceRegistration_Access_Array;
   subtype ServiceRegistration_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access;
   use type ServiceRegistration_Access_Array_Access;
   subtype ServiceRegistration_Access_Array_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array;
   use type ServiceRegistration_Access_Array_Access_Array;
   subtype ServiceRegistration_Access_Array_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array_Access;
   use type ServiceRegistration_Access_Array_Access_Array_Access;
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


   subtype InputAutomationModuleServiceFactory_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.InputAutomationModuleServiceFactory_Access;
   function "=" (Left, Right : InputAutomationModuleServiceFactory_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References."=";
   subtype InputAutomationModuleServiceFactory_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.InputAutomationModuleServiceFactory_Access_Array;
   function "=" (Left, Right : InputAutomationModuleServiceFactory_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References."=";
   subtype InputAutomationModuleServiceFactory_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.InputAutomationModuleServiceFactory_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleServiceFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References."=";
   function Java_Box (Value : InputAutomationModuleServiceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.Java_Box;
   function Java_Unbox_InputAutomationModuleServiceFactory_Access_Array (Value : access Java_Object'Class) return InputAutomationModuleServiceFactory_Access_Array_Access renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.Java_Unbox_InputAutomationModuleServiceFactory_Access_Array;
   subtype InputAutomationModuleServiceFactory_Access_Array_Access_Array is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.InputAutomationModuleServiceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleServiceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References."=";
   subtype InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References."=";
   function Java_Box (Value : InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.Java_Box;
   function Java_Unbox_InputAutomationModuleServiceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationModuleServiceFactory_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package_References.Java_Unbox_InputAutomationModuleServiceFactory_Access_Array_Access_Array;

   type InputAutomationModuleServiceFactory is new Java_Object and ServiceFactory with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleServiceFactory'Class);
   function Create return InputAutomationModuleServiceFactory_Access;
   function getService (This : in out InputAutomationModuleServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class) return Java_Object_Access;
   procedure getService (This : in out InputAutomationModuleServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class);
   procedure ungetService (This : in out InputAutomationModuleServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class; service_Param : access Java_Object'Class);
   function getInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleServiceFactory) return InputAutomationModuleFactoryInterface_Access_Array_Access;
   procedure setInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleServiceFactory; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access);

end org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package;


