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
limited with org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;
package org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References is
   type InputAutomationConfiguration_Access is access all org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package.InputAutomationConfiguration'Class;
   type InputAutomationConfiguration_Access_Array is array (Natural range <>) of InputAutomationConfiguration_Access;
   type InputAutomationConfiguration_Access_Array_Access is access all InputAutomationConfiguration_Access_Array;
   type InputAutomationConfiguration_Access_Array_Access_Array is array (Natural range <>) of InputAutomationConfiguration_Access_Array_Access;
   type InputAutomationConfiguration_Access_Array_Access_Array_Access is access all InputAutomationConfiguration_Access_Array_Access_Array;
   type InputAutomationConfiguration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationConfiguration_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationConfiguration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationConfiguration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationConfiguration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationConfiguration_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationConfiguration_Access_Array_Object'Class then InputAutomationConfiguration_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationConfiguration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationConfiguration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationConfiguration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationConfiguration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationConfiguration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationConfiguration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationConfiguration_Access_Array_Access_Array_Object'Class then InputAutomationConfiguration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References;

with org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
--  with java.util.List_Package; use java.util.List_Package;
--  with javax.xml.bind.JAXBContext_Package; use javax.xml.bind.JAXBContext_Package;
--  with javax.xml.bind.Marshaller_Package; use javax.xml.bind.Marshaller_Package;
--  with javax.xml.bind.annotation.XmlAccessType_Package; use javax.xml.bind.annotation.XmlAccessType_Package;
--  with javax.xml.bind.annotation.XmlAccessorType_Package; use javax.xml.bind.annotation.XmlAccessorType_Package;
--  with javax.xml.bind.annotation.XmlElement_Package; use javax.xml.bind.annotation.XmlElement_Package;
--  with javax.xml.bind.annotation.XmlRootElement_Package; use javax.xml.bind.annotation.XmlRootElement_Package;
--  with javax.xml.bind.annotation.XmlType_Package; use javax.xml.bind.annotation.XmlType_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package is

   package File_Package renames Standard.java.io.File_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationConfiguration_Access is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access;
   function "=" (Left, Right : InputAutomationConfiguration_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References."=";
   subtype InputAutomationConfiguration_Access_Array is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access_Array;
   function "=" (Left, Right : InputAutomationConfiguration_Access_Array) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References."=";
   subtype InputAutomationConfiguration_Access_Array_Access is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access_Array_Access;
   function "=" (Left, Right : InputAutomationConfiguration_Access_Array_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References."=";
   function Java_Box (Value : InputAutomationConfiguration_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.Java_Box;
   function Java_Unbox_InputAutomationConfiguration_Access_Array (Value : access Java_Object'Class) return InputAutomationConfiguration_Access_Array_Access renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.Java_Unbox_InputAutomationConfiguration_Access_Array;
   subtype InputAutomationConfiguration_Access_Array_Access_Array is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References."=";
   subtype InputAutomationConfiguration_Access_Array_Access_Array_Access is org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.InputAutomationConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References."=";
   function Java_Box (Value : InputAutomationConfiguration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.Java_Box;
   function Java_Unbox_InputAutomationConfiguration_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationConfiguration_Access_Array_Access_Array_Access renames org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package_References.Java_Unbox_InputAutomationConfiguration_Access_Array_Access_Array;

   type InputAutomationConfiguration is new Java_Object with record
      logUtil : LogUtil_Access;
      installed : Boolean;
      inputAutomationModuleConfigurationList : List_Access;
   end record;
   FILENAME : Unbounded_String;

   procedure Initialize (This : in out InputAutomationConfiguration'Class);
   function Create return InputAutomationConfiguration_Access;
   function getFile return File_Access;
   function isInstalled (This : in out InputAutomationConfiguration) return Boolean;
   procedure setInstalled (This : in out InputAutomationConfiguration; installed : Boolean);
   function getInputAutomationModuleConfigurationList (This : in out InputAutomationConfiguration) return List_Access;
   procedure save (This : in out InputAutomationConfiguration);

end org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;


