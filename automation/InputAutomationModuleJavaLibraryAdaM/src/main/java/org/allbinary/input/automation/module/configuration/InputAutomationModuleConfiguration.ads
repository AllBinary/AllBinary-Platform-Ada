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
--  with javax.xml.bind.annotation.XmlAccessType_Package; use javax.xml.bind.annotation.XmlAccessType_Package;
--  with javax.xml.bind.annotation.XmlAccessorType_Package; use javax.xml.bind.annotation.XmlAccessorType_Package;
--  with javax.xml.bind.annotation.XmlElement_Package; use javax.xml.bind.annotation.XmlElement_Package;
--  with javax.xml.bind.annotation.XmlRootElement_Package; use javax.xml.bind.annotation.XmlRootElement_Package;
--  with javax.xml.bind.annotation.XmlType_Package; use javax.xml.bind.annotation.XmlType_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package is

   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type InputAutomationModuleConfiguration is tagged;
   type InputAutomationModuleConfiguration_Access is access all InputAutomationModuleConfiguration'Class;
   type InputAutomationModuleConfiguration_Access_Array is array (Natural range <>) of InputAutomationModuleConfiguration_Access;
   type InputAutomationModuleConfiguration_Access_Array_Access is access all InputAutomationModuleConfiguration_Access_Array;
   type InputAutomationModuleConfiguration_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleConfiguration_Access_Array_Access;
   type InputAutomationModuleConfiguration_Access_Array_Access_Array_Access is access all InputAutomationModuleConfiguration_Access_Array_Access_Array;

   type InputAutomationModuleConfiguration is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      className : Unbounded_String;
      name : Unbounded_String;
      inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class);
   function Create return InputAutomationModuleConfiguration_Access;
   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; node_Param : access Node_Package.Node'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; node_Param : access Node_Package.Node'Class) return InputAutomationModuleConfiguration_Access;
   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; className : Unbounded_String);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; className : Unbounded_String) return InputAutomationModuleConfiguration_Access;
   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class; inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class);
   function Create (inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class) return InputAutomationModuleConfiguration_Access;
   procedure init (This : in out InputAutomationModuleConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; node_Param : access Node_Package.Node'Class);
   procedure init (This : in out InputAutomationModuleConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   function toDomNode (This : in out InputAutomationModuleConfiguration; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toDomNode (This : in out InputAutomationModuleConfiguration; document_Param : access Document_Package.Document'Class);
   function getName (This : in out InputAutomationModuleConfiguration) return Unbounded_String;
   procedure setName (This : in out InputAutomationModuleConfiguration; name : Unbounded_String);
   function getClassName (This : in out InputAutomationModuleConfiguration) return Unbounded_String;
   procedure setClassName (This : in out InputAutomationModuleConfiguration; className : Unbounded_String);
   function getInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration) return InputAutomationModuleFactoryInterface_Access;
   procedure setInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration; inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class);

end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;


