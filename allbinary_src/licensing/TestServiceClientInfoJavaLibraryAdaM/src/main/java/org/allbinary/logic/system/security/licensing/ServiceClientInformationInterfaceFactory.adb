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


with org.allbinary.logic.system.security.licensing.TestClientInformation_Package; use org.allbinary.logic.system.security.licensing.TestClientInformation_Package;
with org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.system.security.licensing.TestClientInformation_Package;

package body org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package is

   subtype TestClientInformation_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access;
   function "=" (Left, Right : TestClientInformation_Access) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   subtype TestClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array;
   function "=" (Left, Right : TestClientInformation_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   subtype TestClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access;
   function "=" (Left, Right : TestClientInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   subtype TestClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access_Array;
   function "=" (Left, Right : TestClientInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   subtype TestClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References.TestClientInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestClientInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.TestClientInformation_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   procedure Initialize_Fields (This : in out ServiceClientInformationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ServiceClientInformationInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ServiceClientInformationInterfaceFactory_Access is
      This : constant ServiceClientInformationInterfaceFactory_Access := new ServiceClientInformationInterfaceFactory;
   begin
      ServiceClientInformationInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbeClientInformationInterface_Access is
   begin
        return AbeClientInformationInterface_Access (ServiceClientInformationInterfaceFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := TestClientInformation_Package.Create;

end org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;


