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

limited with org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package;
package org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References is
   type InputAutomationClientInformation_Access is access all org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package.InputAutomationClientInformation'Class;
   type InputAutomationClientInformation_Access_Array is array (Natural range <>) of InputAutomationClientInformation_Access;
   type InputAutomationClientInformation_Access_Array_Access is access all InputAutomationClientInformation_Access_Array;
   type InputAutomationClientInformation_Access_Array_Access_Array is array (Natural range <>) of InputAutomationClientInformation_Access_Array_Access;
   type InputAutomationClientInformation_Access_Array_Access_Array_Access is access all InputAutomationClientInformation_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References;

with org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.security.licensing.AbeClientInformation_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;

package org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationClientInformation_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access;
   function "=" (Left, Right : InputAutomationClientInformation_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   subtype InputAutomationClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array;
   function "=" (Left, Right : InputAutomationClientInformation_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   subtype InputAutomationClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access;
   function "=" (Left, Right : InputAutomationClientInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   subtype InputAutomationClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationClientInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   subtype InputAutomationClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationClientInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";

   type InputAutomationClientInformation is new AbeClientInformation with null record;

   procedure Initialize (This : in out InputAutomationClientInformation'Class);
   function Create return InputAutomationClientInformation_Access;

end org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package;


