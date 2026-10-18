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


with org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package; use org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;

package body org.allbinary.game.midlet.SpecialDemoGameMidlet_Package is

   package LicenseServerInitFileUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;
   procedure Initialize_Fields (This : in out SpecialDemoGameMidlet'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialDemoGameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class; licenseLoadingType_Param : access LicenseLoadingType_Package.LicenseLoadingType'Class; demoSetupFactory_Param : access LicensedDemoSetupFactory_Package.LicensedDemoSetupFactory'Class; licenseCheckRunnableFactory_Param : access LicenseCheckRunnableFactory_Package.LicenseCheckRunnableFactory'Class) is
      clientInformationFactory : constant ClientInformationFactory_Access := ClientInformationFactory_Access (clientInformationFactory_Param);
      licenseLoadingType : constant LicenseLoadingType_Access := LicenseLoadingType_Access (licenseLoadingType_Param);
      demoSetupFactory : constant LicensedDemoSetupFactory_Access := LicensedDemoSetupFactory_Access (demoSetupFactory_Param);
      licenseCheckRunnableFactory : constant LicenseCheckRunnableFactory_Access := LicenseCheckRunnableFactory_Access (licenseCheckRunnableFactory_Param);
   begin
        DemoGameMidlet_Package.Initialize (This, clientInformationFactory);
   end Initialize;

   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class; licenseLoadingType_Param : access LicenseLoadingType_Package.LicenseLoadingType'Class; demoSetupFactory_Param : access LicensedDemoSetupFactory_Package.LicensedDemoSetupFactory'Class; licenseCheckRunnableFactory_Param : access LicenseCheckRunnableFactory_Package.LicenseCheckRunnableFactory'Class) return SpecialDemoGameMidlet_Access is
      This : constant SpecialDemoGameMidlet_Access := new SpecialDemoGameMidlet;
   begin
      SpecialDemoGameMidlet_Package.Initialize (This.all, clientInformationFactory_Param, licenseLoadingType_Param, demoSetupFactory_Param, licenseCheckRunnableFactory_Param);
      return This;
   end Create;

   procedure initView (This : in out SpecialDemoGameMidlet) is
   begin
        null;
   end initView;

   procedure preInit (This : in out SpecialDemoGameMidlet) is
   begin
        LicenseServerInitFileUtil_Package.Create.init;
   end preInit;

end org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;


