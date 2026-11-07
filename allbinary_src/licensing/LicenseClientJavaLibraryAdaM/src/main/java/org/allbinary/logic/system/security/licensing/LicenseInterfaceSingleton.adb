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


with org.allbinary.logic.system.security.licensing.AbeNoLicense_Package; use org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References;

package body org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package is

   subtype AbeLicenseInterface_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access;
   function "=" (Left, Right : AbeLicenseInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   subtype AbeLicenseInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array;
   function "=" (Left, Right : AbeLicenseInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   subtype AbeLicenseInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access;
   function "=" (Left, Right : AbeLicenseInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   subtype AbeLicenseInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeLicenseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   subtype AbeLicenseInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References.AbeLicenseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeLicenseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=";
   procedure Initialize_Fields (This : in out LicenseInterfaceSingleton'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseInterfaceSingleton'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseInterfaceSingleton_Access is
      This : constant LicenseInterfaceSingleton_Access := new LicenseInterfaceSingleton;
   begin
      LicenseInterfaceSingleton_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbeLicenseInterface_Access is
   begin
        return AbeLicenseInterface_Access (LicenseInterfaceSingleton_Package.licenseInterface);
   end getInstance;

   procedure init (licenseInterface_Param : access AbeLicenseInterface_Package.AbeLicenseInterface'Class) is
      licenseInterface : constant AbeLicenseInterface_Access := AbeLicenseInterface_Access (licenseInterface_Param);
   begin
        if (not org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package_References."=" (licenseInterface, null)) then
            LicenseInterfaceSingleton_Package.licenseInterface := licenseInterface;
        end if;
   end init;

begin
   null;
   licenseInterface := AbeLicenseInterface_Access (AbeNoLicense_Package.getInstance);

end org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package;


