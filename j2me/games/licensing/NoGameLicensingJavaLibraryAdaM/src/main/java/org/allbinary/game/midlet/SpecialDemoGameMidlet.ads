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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package; use org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;
with org.allbinary.game.midlet.DemoGameMidlet_Package; use org.allbinary.game.midlet.DemoGameMidlet_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package; use org.allbinary.game.midlet.LicenseLoadingType_Package;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package; use org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;
with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package; use org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;

package org.allbinary.game.midlet.SpecialDemoGameMidlet_Package is

   package ClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
   package LicenseServerInitFileUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;

   type SpecialDemoGameMidlet is tagged;
   type SpecialDemoGameMidlet_Access is access all SpecialDemoGameMidlet'Class;
   type SpecialDemoGameMidlet_Access_Array is array (Natural range <>) of SpecialDemoGameMidlet_Access;
   type SpecialDemoGameMidlet_Access_Array_Access is access all SpecialDemoGameMidlet_Access_Array;

   type SpecialDemoGameMidlet is new DemoGameMidlet with null record;

   procedure Initialize (This : in out SpecialDemoGameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory'Class; licenseLoadingType_Param : access LicenseLoadingType'Class; demoSetupFactory_Param : access LicensedDemoSetupFactory'Class; licenseCheckRunnableFactory_Param : access LicenseCheckRunnableFactory'Class);
   function Create (clientInformationFactory_Param : access ClientInformationFactory'Class; licenseLoadingType_Param : access LicenseLoadingType'Class; demoSetupFactory_Param : access LicensedDemoSetupFactory'Class; licenseCheckRunnableFactory_Param : access LicenseCheckRunnableFactory'Class) return SpecialDemoGameMidlet_Access;
   procedure initView (This : in out SpecialDemoGameMidlet);
   procedure preInit (This : in out SpecialDemoGameMidlet);

end org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;


