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
limited with org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package;
package org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References is
   type InputAutomationGenericModuleServiceFactory_Access is access all org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package.InputAutomationGenericModuleServiceFactory'Class;
   type InputAutomationGenericModuleServiceFactory_Access_Array is array (Natural range <>) of InputAutomationGenericModuleServiceFactory_Access;
   type InputAutomationGenericModuleServiceFactory_Access_Array_Access is access all InputAutomationGenericModuleServiceFactory_Access_Array;
   type InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationGenericModuleServiceFactory_Access_Array_Access;
   type InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access is access all InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array;
   type InputAutomationGenericModuleServiceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationGenericModuleServiceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationGenericModuleServiceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationGenericModuleServiceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationGenericModuleServiceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationGenericModuleServiceFactory_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationGenericModuleServiceFactory_Access_Array_Object'Class then InputAutomationGenericModuleServiceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Object'Class then InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References;

with org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package; use org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package is

   package InputAutomationModuleServiceFactory_Package renames Standard.org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package;
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


   subtype InputAutomationGenericModuleServiceFactory_Access is org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.InputAutomationGenericModuleServiceFactory_Access;
   function "=" (Left, Right : InputAutomationGenericModuleServiceFactory_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References."=";
   subtype InputAutomationGenericModuleServiceFactory_Access_Array is org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.InputAutomationGenericModuleServiceFactory_Access_Array;
   function "=" (Left, Right : InputAutomationGenericModuleServiceFactory_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References."=";
   subtype InputAutomationGenericModuleServiceFactory_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.InputAutomationGenericModuleServiceFactory_Access_Array_Access;
   function "=" (Left, Right : InputAutomationGenericModuleServiceFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References."=";
   function Java_Box (Value : InputAutomationGenericModuleServiceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.Java_Box;
   function Java_Unbox_InputAutomationGenericModuleServiceFactory_Access_Array (Value : access Java_Object'Class) return InputAutomationGenericModuleServiceFactory_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.Java_Unbox_InputAutomationGenericModuleServiceFactory_Access_Array;
   subtype InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References."=";
   subtype InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References."=";
   function Java_Box (Value : InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.Java_Box;
   function Java_Unbox_InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package_References.Java_Unbox_InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array;

   type InputAutomationGenericModuleServiceFactory is new InputAutomationModuleServiceFactory with record
      InputAutomationGenericModuleServiceFactory_Field_logUtil : LogUtil_Access;
   end record;
   inputAutomationGenericModuleServiceFactory_Var : InputAutomationGenericModuleServiceFactory_Access;

   procedure Initialize (This : in out InputAutomationGenericModuleServiceFactory'Class);
   function Create return InputAutomationGenericModuleServiceFactory_Access;
   function getInstance return InputAutomationGenericModuleServiceFactory_Access;

end org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package;


