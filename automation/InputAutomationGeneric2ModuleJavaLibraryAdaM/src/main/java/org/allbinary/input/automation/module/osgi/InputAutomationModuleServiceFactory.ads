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
with bundle.input.automation.module.InputAutomationModuleService_Package; use bundle.input.automation.module.InputAutomationModuleService_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package is

   package Bundle_Package renames Standard.org.osgi.framework.Bundle_Package;
   package ServiceFactory_Package renames Standard.org.osgi.framework.ServiceFactory_Package;
   package ServiceRegistration_Package renames Standard.org.osgi.framework.ServiceRegistration_Package;
   package InputAutomationModuleService_Package renames Standard.bundle.input.automation.module.InputAutomationModuleService_Package;
   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationModuleServiceFactory is tagged;
   type InputAutomationModuleServiceFactory_Access is access all InputAutomationModuleServiceFactory'Class;
   type InputAutomationModuleServiceFactory_Access_Array is array (Natural range <>) of InputAutomationModuleServiceFactory_Access;
   type InputAutomationModuleServiceFactory_Access_Array_Access is access all InputAutomationModuleServiceFactory_Access_Array;

   type InputAutomationModuleServiceFactory is new ServiceFactory with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleServiceFactory'Class);
   function Create return InputAutomationModuleServiceFactory_Access;
   function getService (This : in out InputAutomationModuleServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access) return Java_Object_Access;
   procedure getService (This : in out InputAutomationModuleServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access);
   procedure ungetService (This : in out InputAutomationModuleServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access; service : Java_Object_Access);
   function getInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleServiceFactory) return InputAutomationModuleFactoryInterface_Access_Array_Access;
   procedure setInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleServiceFactory; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access);

end org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package;


