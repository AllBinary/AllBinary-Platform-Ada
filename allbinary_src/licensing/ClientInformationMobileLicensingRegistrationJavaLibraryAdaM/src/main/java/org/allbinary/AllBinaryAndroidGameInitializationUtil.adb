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


package body org.allbinary.AllBinaryAndroidGameInitializationUtil_Package is

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
      Initialize (This.all);
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


