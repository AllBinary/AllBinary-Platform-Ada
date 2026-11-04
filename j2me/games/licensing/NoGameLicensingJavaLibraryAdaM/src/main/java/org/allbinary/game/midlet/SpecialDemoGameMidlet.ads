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

limited with org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;
package org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References is
   type SpecialDemoGameMidlet_Access is access all org.allbinary.game.midlet.SpecialDemoGameMidlet_Package.SpecialDemoGameMidlet'Class;
   type SpecialDemoGameMidlet_Access_Array is array (Natural range <>) of SpecialDemoGameMidlet_Access;
   type SpecialDemoGameMidlet_Access_Array_Access is access all SpecialDemoGameMidlet_Access_Array;
   type SpecialDemoGameMidlet_Access_Array_Access_Array is array (Natural range <>) of SpecialDemoGameMidlet_Access_Array_Access;
   type SpecialDemoGameMidlet_Access_Array_Access_Array_Access is access all SpecialDemoGameMidlet_Access_Array_Access_Array;
end org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References;

with org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References;
with org.allbinary.game.midlet.DemoGameMidlet_Package; use org.allbinary.game.midlet.DemoGameMidlet_Package;
limited with org.allbinary.game.midlet.LicenseLoadingType_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package_References;
limited with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References;
limited with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;
with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References;

package org.allbinary.game.midlet.SpecialDemoGameMidlet_Package is

   package ClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
   package Reference_Types is
   subtype ClientInformationFactory_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access;
   use type ClientInformationFactory_Access;
   subtype ClientInformationFactory_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array;
   use type ClientInformationFactory_Access_Array;
   subtype ClientInformationFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access;
   use type ClientInformationFactory_Access_Array_Access;
   subtype ClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array;
   use type ClientInformationFactory_Access_Array_Access_Array;
   subtype ClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array_Access;
   use type ClientInformationFactory_Access_Array_Access_Array_Access;
   subtype LicenseLoadingType_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access;
   use type LicenseLoadingType_Access;
   subtype LicenseLoadingType_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array;
   use type LicenseLoadingType_Access_Array;
   subtype LicenseLoadingType_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access;
   use type LicenseLoadingType_Access_Array_Access;
   subtype LicenseLoadingType_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array;
   use type LicenseLoadingType_Access_Array_Access_Array;
   subtype LicenseLoadingType_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseLoadingType_Package_References.LicenseLoadingType_Access_Array_Access_Array_Access;
   use type LicenseLoadingType_Access_Array_Access_Array_Access;
   subtype LicensedDemoSetupFactory_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access;
   use type LicensedDemoSetupFactory_Access;
   subtype LicensedDemoSetupFactory_Access_Array is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array;
   use type LicensedDemoSetupFactory_Access_Array;
   subtype LicensedDemoSetupFactory_Access_Array_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access;
   use type LicensedDemoSetupFactory_Access_Array_Access;
   subtype LicensedDemoSetupFactory_Access_Array_Access_Array is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access_Array;
   use type LicensedDemoSetupFactory_Access_Array_Access_Array;
   subtype LicensedDemoSetupFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicensedDemoSetupFactory_Package_References.LicensedDemoSetupFactory_Access_Array_Access_Array_Access;
   use type LicensedDemoSetupFactory_Access_Array_Access_Array_Access;
   subtype LicenseCheckRunnableFactory_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access;
   use type LicenseCheckRunnableFactory_Access;
   subtype LicenseCheckRunnableFactory_Access_Array is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array;
   use type LicenseCheckRunnableFactory_Access_Array;
   subtype LicenseCheckRunnableFactory_Access_Array_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access;
   use type LicenseCheckRunnableFactory_Access_Array_Access;
   subtype LicenseCheckRunnableFactory_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access_Array;
   use type LicenseCheckRunnableFactory_Access_Array_Access_Array;
   subtype LicenseCheckRunnableFactory_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References.LicenseCheckRunnableFactory_Access_Array_Access_Array_Access;
   use type LicenseCheckRunnableFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SpecialDemoGameMidlet_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   subtype SpecialDemoGameMidlet_Access_Array is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access_Array) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   subtype SpecialDemoGameMidlet_Access_Array_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   subtype SpecialDemoGameMidlet_Access_Array_Access_Array is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   subtype SpecialDemoGameMidlet_Access_Array_Access_Array_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";

   type SpecialDemoGameMidlet is new DemoGameMidlet with null record;

   procedure Initialize (This : in out SpecialDemoGameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class; licenseLoadingType_Param : access LicenseLoadingType_Package.LicenseLoadingType'Class; demoSetupFactory_Param : access LicensedDemoSetupFactory_Package.LicensedDemoSetupFactory'Class; licenseCheckRunnableFactory_Param : access LicenseCheckRunnableFactory_Package.LicenseCheckRunnableFactory'Class);
   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class; licenseLoadingType_Param : access LicenseLoadingType_Package.LicenseLoadingType'Class; demoSetupFactory_Param : access LicensedDemoSetupFactory_Package.LicensedDemoSetupFactory'Class; licenseCheckRunnableFactory_Param : access LicenseCheckRunnableFactory_Package.LicenseCheckRunnableFactory'Class) return SpecialDemoGameMidlet_Access;
   procedure initView (This : in out SpecialDemoGameMidlet);
   procedure preInit (This : in out SpecialDemoGameMidlet);

end org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;


