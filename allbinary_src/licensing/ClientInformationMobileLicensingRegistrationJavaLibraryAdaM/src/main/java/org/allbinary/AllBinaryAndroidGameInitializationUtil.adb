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


with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package; use org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package;
with org.allbinary.AndroidResources_Package; use org.allbinary.AndroidResources_Package;

package body org.allbinary.AllBinaryAndroidGameInitializationUtil_Package is

   package LicenseInitInfoUtil_Package renames Standard.org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package PartnerIdentifierFileUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package;
   procedure Initialize_Fields (This : in out AllBinaryAndroidGameInitializationUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryAndroidGameInitializationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryAndroidGameInitializationUtil_Access is
      This : constant AllBinaryAndroidGameInitializationUtil_Access := new AllBinaryAndroidGameInitializationUtil;
   begin
      AllBinaryAndroidGameInitializationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init is
      resourceUtil : ResourceUtil_Access;
      androidResources : AndroidResources_Access;
      licenseInitInfoUtil : LicenseInitInfoUtil_Access;
   begin
        resourceUtil := ResourceUtil_Package.getInstance;
        androidResources := AndroidResources_Package.getInstance;
        licenseInitInfoUtil := LicenseInitInfoUtil_Package.getInstance;
        resourceUtil.addResource (licenseInitInfoUtil.INITFILENAME, To_Unbounded_String (Java_Image (androidResources.raw.licenseinitdata)));
        resourceUtil.addResource (PartnerIdentifierFileUtil_Package.getInstance.FILE_NAME, To_Unbounded_String (Java_Image (androidResources.raw.partner)));
   end init;

end org.allbinary.AllBinaryAndroidGameInitializationUtil_Package;


