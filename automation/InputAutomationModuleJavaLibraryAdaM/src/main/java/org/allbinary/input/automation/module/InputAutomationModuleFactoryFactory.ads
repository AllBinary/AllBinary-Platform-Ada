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

limited with org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package;
package org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References is
   type InputAutomationModuleFactoryFactory_Access is access all org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package.InputAutomationModuleFactoryFactory'Class;
   type InputAutomationModuleFactoryFactory_Access_Array is array (Natural range <>) of InputAutomationModuleFactoryFactory_Access;
   type InputAutomationModuleFactoryFactory_Access_Array_Access is access all InputAutomationModuleFactoryFactory_Access_Array;
   type InputAutomationModuleFactoryFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleFactoryFactory_Access_Array_Access;
   type InputAutomationModuleFactoryFactory_Access_Array_Access_Array_Access is access all InputAutomationModuleFactoryFactory_Access_Array_Access_Array;
end org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References;

with org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.Collection_Package; use java.util.Collection_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Iterator_Package; use java.util.Iterator_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
--  with javax.help.event.HelpSetEvent_Package; use javax.help.event.HelpSetEvent_Package;
--  with javax.help.event.HelpSetListener_Package; use javax.help.event.HelpSetListener_Package;
--  with javax.swing.ListModel_Package; use javax.swing.ListModel_Package;
limited with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References;
limited with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.input.automation.module.DefaultListModelHelper_Package;
with org.allbinary.input.automation.module.DefaultListModelHelper_Package_References;
limited with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References;

package org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package InputAutomationModuleConfiguration_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
   package InputAutomationModuleConfigurations_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype InputAutomationModuleConfiguration_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access;
   use type InputAutomationModuleConfiguration_Access;
   subtype InputAutomationModuleConfiguration_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array;
   use type InputAutomationModuleConfiguration_Access_Array;
   subtype InputAutomationModuleConfiguration_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access;
   use type InputAutomationModuleConfiguration_Access_Array_Access;
   subtype InputAutomationModuleConfiguration_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access_Array;
   use type InputAutomationModuleConfiguration_Access_Array_Access_Array;
   subtype InputAutomationModuleConfiguration_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access_Array_Access;
   use type InputAutomationModuleConfiguration_Access_Array_Access_Array_Access;
   subtype InputAutomationModuleConfigurations_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access;
   use type InputAutomationModuleConfigurations_Access;
   subtype InputAutomationModuleConfigurations_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array;
   use type InputAutomationModuleConfigurations_Access_Array;
   subtype InputAutomationModuleConfigurations_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access;
   use type InputAutomationModuleConfigurations_Access_Array_Access;
   subtype InputAutomationModuleConfigurations_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access_Array;
   use type InputAutomationModuleConfigurations_Access_Array_Access_Array;
   subtype InputAutomationModuleConfigurations_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access_Array_Access;
   use type InputAutomationModuleConfigurations_Access_Array_Access_Array_Access;
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
   subtype DefaultListModelHelper_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access;
   use type DefaultListModelHelper_Access;
   subtype DefaultListModelHelper_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array;
   use type DefaultListModelHelper_Access_Array;
   subtype DefaultListModelHelper_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access;
   use type DefaultListModelHelper_Access_Array_Access;
   subtype DefaultListModelHelper_Access_Array_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array;
   use type DefaultListModelHelper_Access_Array_Access_Array;
   subtype DefaultListModelHelper_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array_Access;
   use type DefaultListModelHelper_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationModuleFactoryFactory_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References.InputAutomationModuleFactoryFactory_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryFactory_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References."=";
   subtype InputAutomationModuleFactoryFactory_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References.InputAutomationModuleFactoryFactory_Access_Array;
   function "=" (Left, Right : InputAutomationModuleFactoryFactory_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References."=";
   subtype InputAutomationModuleFactoryFactory_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References.InputAutomationModuleFactoryFactory_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References."=";
   subtype InputAutomationModuleFactoryFactory_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References.InputAutomationModuleFactoryFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleFactoryFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References."=";
   subtype InputAutomationModuleFactoryFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References.InputAutomationModuleFactoryFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package_References."=";

   type InputAutomationModuleFactoryFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      hashMap : HashMap_Access;
      defaultListModelHelper : DefaultListModelHelper_Access;
      helpSetListenerInterface : HelpSetListener_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleFactoryFactory'Class; inputAutomationModuleConfigurations_Param : access InputAutomationModuleConfigurations_Package.InputAutomationModuleConfigurations'Class; helpSetListenerInterface_Param : access HelpSetListener_Package.HelpSetListener'Class);
   function Create (inputAutomationModuleConfigurations_Param : access InputAutomationModuleConfigurations_Package.InputAutomationModuleConfigurations'Class; helpSetListenerInterface_Param : access HelpSetListener_Package.HelpSetListener'Class) return InputAutomationModuleFactoryFactory_Access;
   procedure add (This : in out InputAutomationModuleFactoryFactory; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class);
   function getListModel (This : in out InputAutomationModuleFactoryFactory) return ListModel_Access;
   function getInstance (This : in out InputAutomationModuleFactoryFactory; moduleName : Unbounded_String) return InputAutomationModuleFactoryInterface_Access;
   procedure getInstance (This : in out InputAutomationModuleFactoryFactory; moduleName : Unbounded_String);

end org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package;


