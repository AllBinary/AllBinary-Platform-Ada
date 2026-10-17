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
with bundle.input.automation.module.InputAutomationModuleService_Package; use bundle.input.automation.module.InputAutomationModuleService_Package;
with org.allbinary.input.automation.InputAutomationJFrame_Package; use org.allbinary.input.automation.InputAutomationJFrame_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package; use org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package is

   package InputAutomationModuleService_Package renames Standard.bundle.input.automation.module.InputAutomationModuleService_Package;
   package InputAutomationJFrame_Package renames Standard.org.allbinary.input.automation.InputAutomationJFrame_Package;
   package InputAutomationConfigurationUtil_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package;
   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;
   package OSGIServiceVisitorInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationModuleOSGIServiceVisitor is tagged;
   type InputAutomationModuleOSGIServiceVisitor_Access is access all InputAutomationModuleOSGIServiceVisitor'Class;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array is array (Natural range <>) of InputAutomationModuleOSGIServiceVisitor_Access;
   type InputAutomationModuleOSGIServiceVisitor_Access_Array_Access is access all InputAutomationModuleOSGIServiceVisitor_Access_Array;

   type InputAutomationModuleOSGIServiceVisitor is new OSGIServiceVisitorInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleOSGIServiceVisitor'Class);
   function Create return InputAutomationModuleOSGIServiceVisitor_Access;
   function visit (This : in out InputAutomationModuleOSGIServiceVisitor; anyType : Java_Object_Access) return Java_Object_Access;
   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; anyType : Java_Object_Access);
   function visit (This : in out InputAutomationModuleOSGIServiceVisitor; osgiServiceInterface : OSGIServiceInterface_Access) return Boolean;
   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; osgiServiceInterface : OSGIServiceInterface_Access);

end org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package;


