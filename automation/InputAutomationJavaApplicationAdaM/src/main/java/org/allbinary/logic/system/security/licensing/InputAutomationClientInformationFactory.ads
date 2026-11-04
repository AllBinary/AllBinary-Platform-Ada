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

limited with org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;
package org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References is
   type InputAutomationClientInformationFactory_Access is access all org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package.InputAutomationClientInformationFactory'Class;
   type InputAutomationClientInformationFactory_Access_Array is array (Natural range <>) of InputAutomationClientInformationFactory_Access;
   type InputAutomationClientInformationFactory_Access_Array_Access is access all InputAutomationClientInformationFactory_Access_Array;
   type InputAutomationClientInformationFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationClientInformationFactory_Access_Array_Access;
   type InputAutomationClientInformationFactory_Access_Array_Access_Array_Access is access all InputAutomationClientInformationFactory_Access_Array_Access_Array;
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
   subtype InputAutomationClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.InputAutomationClientInformationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationClientInformationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References."=";
   subtype InputAutomationClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References.InputAutomationClientInformationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationClientInformationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package_References."=";

   type InputAutomationClientInformationFactory is new Java_Object with null record;
   instance : InputAutomationClientInformation_Access;

   procedure Initialize (This : in out InputAutomationClientInformationFactory'Class);
   function Create return InputAutomationClientInformationFactory_Access;
   function getInstance return InputAutomationClientInformation_Access;

end org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;


