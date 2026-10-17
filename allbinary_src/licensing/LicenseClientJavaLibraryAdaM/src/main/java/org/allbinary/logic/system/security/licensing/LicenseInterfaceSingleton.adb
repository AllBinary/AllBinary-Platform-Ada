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


package body org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package is

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
        return LicenseInterfaceSingleton_Package.licenseInterface;
   end getInstance;

   procedure init (licenseInterface_Param : access AbeLicenseInterface_Package.AbeLicenseInterface'Class) is
      licenseInterface : constant AbeLicenseInterface_Access := AbeLicenseInterface_Access (licenseInterface_Param);
   begin
        if (licenseInterface) /= (null) then
            LicenseInterfaceSingleton_Package.licenseInterface := licenseInterface;
        end if;
   end init;

begin
   null;
   licenseInterface := AbeNoLicense_Package.getInstance;

end org.allbinary.logic.system.security.licensing.LicenseInterfaceSingleton_Package;


