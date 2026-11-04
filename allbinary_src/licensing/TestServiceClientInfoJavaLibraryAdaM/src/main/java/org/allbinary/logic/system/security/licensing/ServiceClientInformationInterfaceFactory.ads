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

limited with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
package org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References is
   type ServiceClientInformationInterfaceFactory_Access is access all org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package.ServiceClientInformationInterfaceFactory'Class;
   type ServiceClientInformationInterfaceFactory_Access_Array is array (Natural range <>) of ServiceClientInformationInterfaceFactory_Access;
   type ServiceClientInformationInterfaceFactory_Access_Array_Access is access all ServiceClientInformationInterfaceFactory_Access_Array;
   type ServiceClientInformationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of ServiceClientInformationInterfaceFactory_Access_Array_Access;
   type ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access is access all ServiceClientInformationInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References;

with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.TestClientInformation_Package;
with org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package is

   package Reference_Types is
   subtype TestClientInformation_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access;
   use type TestClientInformation_Access;
   subtype TestClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array;
   use type TestClientInformation_Access_Array;
   subtype TestClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access;
   use type TestClientInformation_Access_Array_Access;
   subtype TestClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access_Array;
   use type TestClientInformation_Access_Array_Access_Array;
   subtype TestClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access_Array_Access;
   use type TestClientInformation_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ServiceClientInformationInterfaceFactory_Access is org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.ServiceClientInformationInterfaceFactory_Access;
   function "=" (Left, Right : ServiceClientInformationInterfaceFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References."=";
   subtype ServiceClientInformationInterfaceFactory_Access_Array is org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.ServiceClientInformationInterfaceFactory_Access_Array;
   function "=" (Left, Right : ServiceClientInformationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References."=";
   subtype ServiceClientInformationInterfaceFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.ServiceClientInformationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : ServiceClientInformationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References."=";
   subtype ServiceClientInformationInterfaceFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.ServiceClientInformationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceClientInformationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References."=";
   subtype ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References."=";

   type ServiceClientInformationInterfaceFactory is new Java_Object with null record;
   instance : TestClientInformation_Access;

   procedure Initialize (This : in out ServiceClientInformationInterfaceFactory'Class);
   function Create return ServiceClientInformationInterfaceFactory_Access;
   function getInstance return AbeClientInformationInterface_Access;

end org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;


