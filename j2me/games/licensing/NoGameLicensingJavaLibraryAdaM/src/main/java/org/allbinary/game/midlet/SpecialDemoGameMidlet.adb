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


package body org.allbinary.game.midlet.SpecialDemoGameMidlet_Package is

   procedure Initialize_Fields (This : in out SpecialDemoGameMidlet'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialDemoGameMidlet'Class; clientInformationFactory : ClientInformationFactory_Access; licenseLoadingType : LicenseLoadingType_Access; demoSetupFactory : LicensedDemoSetupFactory_Access; licenseCheckRunnableFactory : LicenseCheckRunnableFactory_Access) is
   begin
        DemoGameMidlet_Package.Initialize (This, clientInformationFactory);
   end Initialize;

   function Create (clientInformationFactory : ClientInformationFactory_Access; licenseLoadingType : LicenseLoadingType_Access; demoSetupFactory : LicensedDemoSetupFactory_Access; licenseCheckRunnableFactory : LicenseCheckRunnableFactory_Access) return SpecialDemoGameMidlet_Access is
      This : constant SpecialDemoGameMidlet_Access := new SpecialDemoGameMidlet;
   begin
      SpecialDemoGameMidlet_Package.Initialize (This.all, clientInformationFactory, licenseLoadingType, demoSetupFactory, licenseCheckRunnableFactory);
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


