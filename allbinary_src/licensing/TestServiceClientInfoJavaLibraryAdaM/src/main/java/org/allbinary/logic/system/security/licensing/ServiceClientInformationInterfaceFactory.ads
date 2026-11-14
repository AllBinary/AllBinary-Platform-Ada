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
limited with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
package org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References is
   type ServiceClientInformationInterfaceFactory_Access is access all org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package.ServiceClientInformationInterfaceFactory'Class;
   type ServiceClientInformationInterfaceFactory_Access_Array is array (Natural range <>) of ServiceClientInformationInterfaceFactory_Access;
   type ServiceClientInformationInterfaceFactory_Access_Array_Access is access all ServiceClientInformationInterfaceFactory_Access_Array;
   type ServiceClientInformationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of ServiceClientInformationInterfaceFactory_Access_Array_Access;
   type ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access is access all ServiceClientInformationInterfaceFactory_Access_Array_Access_Array;
   type ServiceClientInformationInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceClientInformationInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceClientInformationInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceClientInformationInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceClientInformationInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceClientInformationInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in ServiceClientInformationInterfaceFactory_Access_Array_Object'Class then ServiceClientInformationInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceClientInformationInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Object'Class then ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : ServiceClientInformationInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_ServiceClientInformationInterfaceFactory_Access_Array (Value : access Java_Object'Class) return ServiceClientInformationInterfaceFactory_Access_Array_Access renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.Java_Unbox_ServiceClientInformationInterfaceFactory_Access_Array;
   subtype ServiceClientInformationInterfaceFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.ServiceClientInformationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceClientInformationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References."=";
   subtype ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References."=";
   function Java_Box (Value : ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_ServiceClientInformationInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ServiceClientInformationInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package_References.Java_Unbox_ServiceClientInformationInterfaceFactory_Access_Array_Access_Array;

   type ServiceClientInformationInterfaceFactory is new Java_Object with null record;
   instance : TestClientInformation_Access;

   procedure Initialize (This : in out ServiceClientInformationInterfaceFactory'Class);
   function Create return ServiceClientInformationInterfaceFactory_Access;
   function getInstance return AbeClientInformationInterface_Access;

end org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;


