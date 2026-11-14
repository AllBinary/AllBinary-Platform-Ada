-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;
package org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References is
   type InputAutomationClientInformationFactory_Access is access all org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package.InputAutomationClientInformationFactory'Class;
   type InputAutomationClientInformationFactory_Access_Array is array (Natural range <>) of InputAutomationClientInformationFactory_Access;
   type InputAutomationClientInformationFactory_Access_Array_Access is access all InputAutomationClientInformationFactory_Access_Array;
   type InputAutomationClientInformationFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationClientInformationFactory_Access_Array_Access;
   type InputAutomationClientInformationFactory_Access_Array_Access_Array_Access is access all InputAutomationClientInformationFactory_Access_Array_Access_Array;
   type InputAutomationClientInformationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationClientInformationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationClientInformationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationClientInformationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationClientInformationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationClientInformationFactory_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationClientInformationFactory_Access_Array_Object'Class then InputAutomationClientInformationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationClientInformationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationClientInformationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationClientInformationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationClientInformationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationClientInformationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationClientInformationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationClientInformationFactory_Access_Array_Access_Array_Object'Class then InputAutomationClientInformationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References;

with org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package;
with org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References;

package org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package is

   package Reference_Types is
   subtype InputAutomationClientInformation_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access;
   use type InputAutomationClientInformation_Access;
   subtype InputAutomationClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array;
   use type InputAutomationClientInformation_Access_Array;
   subtype InputAutomationClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access;
   use type InputAutomationClientInformation_Access_Array_Access;
   subtype InputAutomationClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access_Array;
   use type InputAutomationClientInformation_Access_Array_Access_Array;
   subtype InputAutomationClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access_Array_Access;
   use type InputAutomationClientInformation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationClientInformationFactory_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.InputAutomationClientInformationFactory_Access;
   function "=" (Left, Right : InputAutomationClientInformationFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References."=";
   subtype InputAutomationClientInformationFactory_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.InputAutomationClientInformationFactory_Access_Array;
   function "=" (Left, Right : InputAutomationClientInformationFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References."=";
   subtype InputAutomationClientInformationFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.InputAutomationClientInformationFactory_Access_Array_Access;
   function "=" (Left, Right : InputAutomationClientInformationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References."=";
   function Java_Box (Value : InputAutomationClientInformationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.Java_Box;
   function Java_Unbox_InputAutomationClientInformationFactory_Access_Array (Value : access Java_Object'Class) return InputAutomationClientInformationFactory_Access_Array_Access renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.Java_Unbox_InputAutomationClientInformationFactory_Access_Array;
   subtype InputAutomationClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.InputAutomationClientInformationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationClientInformationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References."=";
   subtype InputAutomationClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.InputAutomationClientInformationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationClientInformationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References."=";
   function Java_Box (Value : InputAutomationClientInformationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.Java_Box;
   function Java_Unbox_InputAutomationClientInformationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationClientInformationFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.Java_Unbox_InputAutomationClientInformationFactory_Access_Array_Access_Array;

   type InputAutomationClientInformationFactory is new Java_Object with null record;
   instance : InputAutomationClientInformation_Access;

   procedure Initialize (This : in out InputAutomationClientInformationFactory'Class);
   function Create return InputAutomationClientInformationFactory_Access;
   function getInstance return InputAutomationClientInformation_Access;

end org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;


