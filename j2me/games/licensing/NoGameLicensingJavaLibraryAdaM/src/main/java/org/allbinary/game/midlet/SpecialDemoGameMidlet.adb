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


with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References;
with org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package; use org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package; use org.allbinary.game.midlet.LicenseLoadingType_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package_References;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package; use org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References;
with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package; use org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;
with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References;
with org.allbinary.game.midlet.DemoSetup_Package;
with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;

package body org.allbinary.game.midlet.SpecialDemoGameMidlet_Package is

   package LicenseServerInitFileUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;
   subtype ClientInformationFactory_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access;
   function "=" (Left, Right : ClientInformationFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array;
   function "=" (Left, Right : ClientInformationFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype ClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClientInformationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References."=";
   subtype LicenseLoadingType_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access;
   function "=" (Left, Right : LicenseLoadingType_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array;
   function "=" (Left, Right : LicenseLoadingType_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicenseLoadingType_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseLoadingType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLoadingType_Package_References."=";
   subtype LicensedDemoSetupFactory_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicensedDemoSetupFactory_Access_Array is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access_Array) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicensedDemoSetupFactory_Access_Array_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicensedDemoSetupFactory_Access_Array_Access_Array is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicensedDemoSetupFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicensedDemoSetupFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access_Array is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access_Array_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
   subtype LicenseCheckRunnableFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseCheckRunnableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References."=";
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


