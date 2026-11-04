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

limited with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
package org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References is
   type InputAutomationModuleConfigurations_Access is access all org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package.InputAutomationModuleConfigurations'Class;
   type InputAutomationModuleConfigurations_Access_Array is array (Natural range <>) of InputAutomationModuleConfigurations_Access;
   type InputAutomationModuleConfigurations_Access_Array_Access is access all InputAutomationModuleConfigurations_Access_Array;
   type InputAutomationModuleConfigurations_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleConfigurations_Access_Array_Access;
   type InputAutomationModuleConfigurations_Access_Array_Access_Array_Access is access all InputAutomationModuleConfigurations_Access_Array_Access_Array;
end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References;

with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.List_Package; use java.util.List_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References;

package org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package is

   package File_Package renames Standard.java.io.File_Package;
   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationModuleConfigurations_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";

   type InputAutomationModuleConfigurations is new Java_Object with record
      logUtil : LogUtil_Access;
      hashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; file_Param : access File_Package.File'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; file_Param : access File_Package.File'Class) return InputAutomationModuleConfigurations_Access;
   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; document_Param : access Document_Package.Document'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; document_Param : access Document_Package.Document'Class) return InputAutomationModuleConfigurations_Access;
   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; inputAutomationModuleConfigurationList_Param : access List_Package.List'Class);
   function Create (inputAutomationModuleConfigurationList_Param : access List_Package.List'Class) return InputAutomationModuleConfigurations_Access;
   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class);
   function Create return InputAutomationModuleConfigurations_Access;
   procedure add (This : in out InputAutomationModuleConfigurations; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class);
   procedure remove (This : in out InputAutomationModuleConfigurations; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class);
   function getHashMap (This : in out InputAutomationModuleConfigurations) return HashMap_Access;
   procedure setHashMap (This : in out InputAutomationModuleConfigurations; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;


