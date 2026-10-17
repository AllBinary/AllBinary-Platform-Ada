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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.util.List_Package; use java.util.List_Package;
--  with javax.xml.bind.JAXBContext_Package; use javax.xml.bind.JAXBContext_Package;
--  with javax.xml.bind.JAXBElement_Package; use javax.xml.bind.JAXBElement_Package;
--  with javax.xml.bind.Unmarshaller_Package; use javax.xml.bind.Unmarshaller_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package; use org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;

package org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package is

   package InputAutomationModuleConfiguration_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputAutomationConfigurationFactory is tagged;
   type InputAutomationConfigurationFactory_Access is access all InputAutomationConfigurationFactory'Class;
   type InputAutomationConfigurationFactory_Access_Array is array (Natural range <>) of InputAutomationConfigurationFactory_Access;
   type InputAutomationConfigurationFactory_Access_Array_Access is access all InputAutomationConfigurationFactory_Access_Array;

   type InputAutomationConfigurationFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      inputAutomationConfiguration : InputAutomationConfiguration_Access;
   end record;
   instance : InputAutomationConfigurationFactory_Access;

   procedure Initialize (This : in out InputAutomationConfigurationFactory'Class);
   function Create return InputAutomationConfigurationFactory_Access;
   function getInstance return InputAutomationConfigurationFactory_Access;
   procedure init (This : in out InputAutomationConfigurationFactory; abeClientInformation : AbeClientInformationInterface_Access);

end org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package;


