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



package body org.allbinary.business.init.LicenseInitInfoUtil_Package is

   procedure Initialize_Fields (This : in out LicenseInitInfoUtil'Class) is
   begin
      null;
      This.INITFILENAME := To_Unbounded_String ("licenseinitdata.dat");
      This.ABOUT := To_Unbounded_String ("about");
      This.PRIVACY_POLICY := To_Unbounded_String ("privacy_policy");
      This.OFFICIAL_ALLBINARY_SERVICES_SERVER := To_Unbounded_String ("https://services.allbinary.com/LicServ/serverssl.php");
   end Initialize_Fields;


   function getInstance return LicenseInitInfoUtil_Access is
   begin
        return LicenseInitInfoUtil_Package.instance;
   end getInstance;

   procedure setFilePath (This : in out LicenseInitInfoUtil; filePath : Unbounded_String) is
   begin
        null;
   end setFilePath;

   procedure Initialize (This : in out LicenseInitInfoUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LicenseInitInfoUtil_Access is
      This : constant LicenseInitInfoUtil_Access := new LicenseInitInfoUtil;
   begin
      LicenseInitInfoUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure write (This : in out LicenseInitInfoUtil; initData_Param : access LicenseInitInfo_Package.LicenseInitInfo'Class) is
      initData : constant LicenseInitInfo_Access := LicenseInitInfo_Access (initData_Param);
   begin
        null;
   end write;

   --  throws Exception
   function read (This : in out LicenseInitInfoUtil) return LicenseInitInfo_Access is
   begin
        return LicenseInitInfoUtil'Class (This).readAgain (0);
   end read;

   --  throws Exception
   function readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer) return LicenseInitInfo_Access is
      licenseInitInfo : LicenseInitInfo_Access;
   begin
        licenseInitInfo := LicenseInitInfo_Package.Create;
        licenseInitInfo.clearServers;
        licenseInitInfo.addServer (This.OFFICIAL_ALLBINARY_SERVICES_SERVER);
        return licenseInitInfo;
   end readAgain;

   procedure readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer) is
      Java_Result : constant LicenseInitInfo_Access := LicenseInitInfoUtil'Class (This).readAgain (initializeCounter => initializeCounter);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end readAgain;

begin
   null;
   instance := LicenseInitInfoUtil_Package.Create;

end org.allbinary.business.init.LicenseInitInfoUtil_Package;


