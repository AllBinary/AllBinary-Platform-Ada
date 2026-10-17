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
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.automation.InputAutomationData_Package; use org.allbinary.input.automation.InputAutomationData_Package;
with org.allbinary.input.automation.module.InputAutomationModuleData_Package; use org.allbinary.input.automation.module.InputAutomationModuleData_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package is

   package DynamicObjectData_Package renames org.allbinary.business.DynamicObjectData_Package;
   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package InputAutomationData_Package renames org.allbinary.input.automation.InputAutomationData_Package;
   package InputAutomationModuleData_Package renames org.allbinary.input.automation.module.InputAutomationModuleData_Package;
   package InputAutomationModuleFactoryInterface_Package renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeFactory_Package renames org.allbinary.logic.system.loader.AbeFactory_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type InputAutomationModuleConfiguration is tagged;
   type InputAutomationModuleConfiguration_Access is access all InputAutomationModuleConfiguration'Class;
   type InputAutomationModuleConfiguration_Access_Array is array (Natural range <>) of InputAutomationModuleConfiguration_Access;
   type InputAutomationModuleConfiguration_Access_Array_Access is access all InputAutomationModuleConfiguration_Access_Array;

   type InputAutomationModuleConfiguration is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      className : Unbounded_String;
      name : Unbounded_String;
      inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleConfiguration'Class);
   function Create return InputAutomationModuleConfiguration_Access;
   procedure init (This : in out InputAutomationModuleConfiguration; abeClientInformation : AbeClientInformationInterface_Access; node : Node_Access);
   procedure init (This : in out InputAutomationModuleConfiguration; abeClientInformation : AbeClientInformationInterface_Access);
   function toDomNode (This : in out InputAutomationModuleConfiguration; document : Document_Access) return Node_Access;
   procedure toDomNode (This : in out InputAutomationModuleConfiguration; document : Document_Access);
   function getName (This : in out InputAutomationModuleConfiguration) return Unbounded_String;
   procedure getName (This : in out InputAutomationModuleConfiguration);
   procedure setName (This : in out InputAutomationModuleConfiguration; name : Unbounded_String);
   function getClassName (This : in out InputAutomationModuleConfiguration) return Unbounded_String;
   procedure getClassName (This : in out InputAutomationModuleConfiguration);
   procedure setClassName (This : in out InputAutomationModuleConfiguration; className : Unbounded_String);
   function getInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration) return InputAutomationModuleFactoryInterface_Access;
   procedure getInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration);
   procedure setInputAutomationModuleInterface (This : in out InputAutomationModuleConfiguration; inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access);

end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;


