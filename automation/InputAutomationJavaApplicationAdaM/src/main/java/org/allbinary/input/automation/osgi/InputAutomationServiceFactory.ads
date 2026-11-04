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

limited with org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package;
package org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References is
   type InputAutomationServiceFactory_Access is access all org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package.InputAutomationServiceFactory'Class;
   type InputAutomationServiceFactory_Access_Array is array (Natural range <>) of InputAutomationServiceFactory_Access;
   type InputAutomationServiceFactory_Access_Array_Access is access all InputAutomationServiceFactory_Access_Array;
   type InputAutomationServiceFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationServiceFactory_Access_Array_Access;
   type InputAutomationServiceFactory_Access_Array_Access_Array_Access is access all InputAutomationServiceFactory_Access_Array_Access_Array;
end org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References;

with org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package is

   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package ServiceRegistration_Package renames Standard.org.osgi.framework.ServiceRegistration_Package;
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


   subtype InputAutomationServiceFactory_Access is org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References.InputAutomationServiceFactory_Access;
   function "=" (Left, Right : InputAutomationServiceFactory_Access) return Boolean renames org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References."=";
   subtype InputAutomationServiceFactory_Access_Array is org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References.InputAutomationServiceFactory_Access_Array;
   function "=" (Left, Right : InputAutomationServiceFactory_Access_Array) return Boolean renames org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References."=";
   subtype InputAutomationServiceFactory_Access_Array_Access is org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References.InputAutomationServiceFactory_Access_Array_Access;
   function "=" (Left, Right : InputAutomationServiceFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References."=";
   subtype InputAutomationServiceFactory_Access_Array_Access_Array is org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References.InputAutomationServiceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationServiceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References."=";
   subtype InputAutomationServiceFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References.InputAutomationServiceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationServiceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package_References."=";

   type InputAutomationServiceFactory is new Java_Object and ServiceFactory with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   inputAutomationServiceFactory_Var : InputAutomationServiceFactory_Access;

   procedure Initialize (This : in out InputAutomationServiceFactory'Class);
   function Create return InputAutomationServiceFactory_Access;
   function getInstance return InputAutomationServiceFactory_Access;
   function getService (This : in out InputAutomationServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class) return Java_Object_Access;
   procedure getService (This : in out InputAutomationServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class);
   procedure ungetService (This : in out InputAutomationServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class; service_Param : access Java_Object'Class);

end org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package;


