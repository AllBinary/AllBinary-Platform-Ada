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
with org.osgi.framework.Bundle_Package; use org.osgi.framework.Bundle_Package;
with org.osgi.framework.ServiceFactory_Package; use org.osgi.framework.ServiceFactory_Package;
with org.osgi.framework.ServiceRegistration_Package; use org.osgi.framework.ServiceRegistration_Package;
with org.allbinary.input.automation.InputAutomationJFrame_Package; use org.allbinary.input.automation.InputAutomationJFrame_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package is

   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package ServiceRegistration_Package renames Standard.org.osgi.framework.ServiceRegistration_Package;
   package InputAutomationJFrame_Package renames Standard.org.allbinary.input.automation.InputAutomationJFrame_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationServiceFactory is tagged;
   type InputAutomationServiceFactory_Access is access all InputAutomationServiceFactory'Class;
   type InputAutomationServiceFactory_Access_Array is array (Natural range <>) of InputAutomationServiceFactory_Access;
   type InputAutomationServiceFactory_Access_Array_Access is access all InputAutomationServiceFactory_Access_Array;

   type InputAutomationServiceFactory is new ServiceFactory with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   inputAutomationServiceFactory : InputAutomationServiceFactory_Access;

   procedure Initialize (This : in out InputAutomationServiceFactory'Class);
   function Create return InputAutomationServiceFactory_Access;
   function getInstance return InputAutomationServiceFactory_Access;
   function getService (This : in out InputAutomationServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class) return Java_Object_Access;
   procedure getService (This : in out InputAutomationServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class);
   procedure ungetService (This : in out InputAutomationServiceFactory; bundle_Param : access Bundle_Package.Bundle'Class; registration_Param : access ServiceRegistration_Package.ServiceRegistration'Class; service_Param : access Java_Object'Class);

end org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package;


