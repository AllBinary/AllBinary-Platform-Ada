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
limited with org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package;
package org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References is
   type InputAutomationConfigurationFactory_Access is access all org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package.InputAutomationConfigurationFactory'Class;
   type InputAutomationConfigurationFactory_Access_Array is array (Natural range <>) of InputAutomationConfigurationFactory_Access;
   type InputAutomationConfigurationFactory_Access_Array_Access is access all InputAutomationConfigurationFactory_Access_Array;
   type InputAutomationConfigurationFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationConfigurationFactory_Access_Array_Access;
   type InputAutomationConfigurationFactory_Access_Array_Access_Array_Access is access all InputAutomationConfigurationFactory_Access_Array_Access_Array;
   type InputAutomationConfigurationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationConfigurationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationConfigurationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationConfigurationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationConfigurationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationConfigurationFactory_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationConfigurationFactory_Access_Array_Object'Class then InputAutomationConfigurationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationConfigurationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationConfigurationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationConfigurationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationConfigurationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationConfigurationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationConfigurationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationConfigurationFactory_Access_Array_Access_Array_Object'Class then InputAutomationConfigurationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References;

with org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.List_Package; use java.util.List_Package;
--  with javax.xml.bind.JAXBContext_Package; use javax.xml.bind.JAXBContext_Package;
--  with javax.xml.bind.JAXBElement_Package; use javax.xml.bind.JAXBElement_Package;
--  with javax.xml.bind.Unmarshaller_Package; use javax.xml.bind.Unmarshaller_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References;

package org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype InputAutomationConfiguration_Access is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access;
   use type InputAutomationConfiguration_Access;
   subtype InputAutomationConfiguration_Access_Array is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access_Array;
   use type InputAutomationConfiguration_Access_Array;
   subtype InputAutomationConfiguration_Access_Array_Access is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access_Array_Access;
   use type InputAutomationConfiguration_Access_Array_Access;
   subtype InputAutomationConfiguration_Access_Array_Access_Array is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access_Array_Access_Array;
   use type InputAutomationConfiguration_Access_Array_Access_Array;
   subtype InputAutomationConfiguration_Access_Array_Access_Array_Access is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access_Array_Access_Array_Access;
   use type InputAutomationConfiguration_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationConfigurationFactory_Access is org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.InputAutomationConfigurationFactory_Access;
   function "=" (Left, Right : InputAutomationConfigurationFactory_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References."=";
   subtype InputAutomationConfigurationFactory_Access_Array is org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.InputAutomationConfigurationFactory_Access_Array;
   function "=" (Left, Right : InputAutomationConfigurationFactory_Access_Array) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References."=";
   subtype InputAutomationConfigurationFactory_Access_Array_Access is org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.InputAutomationConfigurationFactory_Access_Array_Access;
   function "=" (Left, Right : InputAutomationConfigurationFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References."=";
   function Java_Box (Value : InputAutomationConfigurationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.Java_Box;
   function Java_Unbox_InputAutomationConfigurationFactory_Access_Array (Value : access Java_Object'Class) return InputAutomationConfigurationFactory_Access_Array_Access renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.Java_Unbox_InputAutomationConfigurationFactory_Access_Array;
   subtype InputAutomationConfigurationFactory_Access_Array_Access_Array is org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.InputAutomationConfigurationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationConfigurationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References."=";
   subtype InputAutomationConfigurationFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.InputAutomationConfigurationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationConfigurationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References."=";
   function Java_Box (Value : InputAutomationConfigurationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.Java_Box;
   function Java_Unbox_InputAutomationConfigurationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationConfigurationFactory_Access_Array_Access_Array_Access renames org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package_References.Java_Unbox_InputAutomationConfigurationFactory_Access_Array_Access_Array;

   type InputAutomationConfigurationFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      inputAutomationConfiguration : InputAutomationConfiguration_Access;
   end record;
   instance : InputAutomationConfigurationFactory_Access;

   procedure Initialize (This : in out InputAutomationConfigurationFactory'Class);
   function Create return InputAutomationConfigurationFactory_Access;
   function getInstance return InputAutomationConfigurationFactory_Access;
   procedure init (This : in out InputAutomationConfigurationFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);

end org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package;


