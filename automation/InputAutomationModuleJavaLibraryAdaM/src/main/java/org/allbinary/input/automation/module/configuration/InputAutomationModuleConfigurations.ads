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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.List_Package; use java.util.List_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.input.automation.module.InputAutomationModuleData_Package; use org.allbinary.input.automation.module.InputAutomationModuleData_Package;
with org.allbinary.input.automation.module.NewInputAutomationModulesData_Package; use org.allbinary.input.automation.module.NewInputAutomationModulesData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package is

   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package InputAutomationModuleData_Package renames org.allbinary.input.automation.module.InputAutomationModuleData_Package;
   package NewInputAutomationModulesData_Package renames org.allbinary.input.automation.module.NewInputAutomationModulesData_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type InputAutomationModuleConfigurations is tagged;
   type InputAutomationModuleConfigurations_Access is access all InputAutomationModuleConfigurations'Class;
   type InputAutomationModuleConfigurations_Access_Array is array (Natural range <>) of InputAutomationModuleConfigurations_Access;
   type InputAutomationModuleConfigurations_Access_Array_Access is access all InputAutomationModuleConfigurations_Access_Array;

   type InputAutomationModuleConfigurations is new Java_Object with record
      logUtil : LogUtil_Access;
      hashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; abeClientInformation : AbeClientInformationInterface_Access; file : File_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; file : File_Access) return InputAutomationModuleConfigurations_Access;
   procedure add (This : in out InputAutomationModuleConfigurations; inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access);
   procedure remove (This : in out InputAutomationModuleConfigurations; inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access);
   function getHashMap (This : in out InputAutomationModuleConfigurations) return HashMap_Access;
   procedure getHashMap (This : in out InputAutomationModuleConfigurations);
   procedure setHashMap (This : in out InputAutomationModuleConfigurations; hashMap : HashMap_Access);

end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;


