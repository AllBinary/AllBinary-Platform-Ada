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

limited with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
package org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References is
   type ClientInformationFactory_Access is access all org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package.ClientInformationFactory'Class;
   type ClientInformationFactory_Access_Array is array (Natural range <>) of ClientInformationFactory_Access;
   type ClientInformationFactory_Access_Array_Access is access all ClientInformationFactory_Access_Array;
   type ClientInformationFactory_Access_Array_Access_Array is array (Natural range <>) of ClientInformationFactory_Access_Array_Access;
   type ClientInformationFactory_Access_Array_Access_Array_Access is access all ClientInformationFactory_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References;

with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.ClientInformation_Package;
with org.allbinary.logic.system.security.licensing.ClientInformation_Package_References;

package org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package is

   package Reference_Types is
   subtype ClientInformation_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access;
   use type ClientInformation_Access;
   subtype ClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array;
   use type ClientInformation_Access_Array;
   subtype ClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access;
   use type ClientInformation_Access_Array_Access;
   subtype ClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access_Array;
   use type ClientInformation_Access_Array_Access_Array;
   subtype ClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access_Array_Access;
   use type ClientInformation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ClientInformationFactory_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access;
   function "=" (Left, Right : ClientInformationFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array;
   function "=" (Left, Right : ClientInformationFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";

   type ClientInformationFactory is new Java_Object with null record;

   procedure Initialize (This : in out ClientInformationFactory'Class);
   function Create return ClientInformationFactory_Access;
   function getInstance (This : in out ClientInformationFactory) return ClientInformation_Access;

end org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;


