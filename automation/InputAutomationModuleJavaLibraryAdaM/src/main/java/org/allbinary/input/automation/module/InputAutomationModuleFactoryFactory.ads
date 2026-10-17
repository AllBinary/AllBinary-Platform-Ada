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
--  with java.util.Collection_Package; use java.util.Collection_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Iterator_Package; use java.util.Iterator_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
--  with javax.help.event.HelpSetEvent_Package; use javax.help.event.HelpSetEvent_Package;
--  with javax.help.event.HelpSetListener_Package; use javax.help.event.HelpSetListener_Package;
--  with javax.swing.ListModel_Package; use javax.swing.ListModel_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.help.JavaHelpSetNotifier_Package; use org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package is

   package InputAutomationModuleConfiguration_Package renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
   package InputAutomationModuleConfigurations_Package renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package JavaHelpSetNotifier_Package renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationModuleFactoryFactory is tagged;
   type InputAutomationModuleFactoryFactory_Access is access all InputAutomationModuleFactoryFactory'Class;
   type InputAutomationModuleFactoryFactory_Access_Array is array (Natural range <>) of InputAutomationModuleFactoryFactory_Access;
   type InputAutomationModuleFactoryFactory_Access_Array_Access is access all InputAutomationModuleFactoryFactory_Access_Array;

   type InputAutomationModuleFactoryFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      hashMap : HashMap_Access;
      defaultListModelHelper : DefaultListModelHelper_Access;
      helpSetListenerInterface : HelpSetListener_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleFactoryFactory'Class; inputAutomationModuleConfigurations : InputAutomationModuleConfigurations_Access; helpSetListenerInterface : HelpSetListener_Access);
   function Create (inputAutomationModuleConfigurations : InputAutomationModuleConfigurations_Access; helpSetListenerInterface : HelpSetListener_Access) return InputAutomationModuleFactoryFactory_Access;
   procedure add (This : in out InputAutomationModuleFactoryFactory; inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access);
   function getListModel (This : in out InputAutomationModuleFactoryFactory) return ListModel_Access;
   procedure getListModel (This : in out InputAutomationModuleFactoryFactory);
   function getInstance (This : in out InputAutomationModuleFactoryFactory; moduleName : Unbounded_String) return InputAutomationModuleFactoryInterface_Access;
   procedure getInstance (This : in out InputAutomationModuleFactoryFactory; moduleName : Unbounded_String);

end org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package;


