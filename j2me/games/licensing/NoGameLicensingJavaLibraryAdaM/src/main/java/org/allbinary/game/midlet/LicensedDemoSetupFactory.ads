-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.midlet.DemoSetup_Package; use org.allbinary.game.midlet.DemoSetup_Package;

package org.allbinary.game.midlet.LicensedDemoSetupFactory_Package is


   type LicensedDemoSetupFactory is tagged;
   type LicensedDemoSetupFactory_Access is access all LicensedDemoSetupFactory'Class;
   type LicensedDemoSetupFactory_Access_Array is array (Natural range <>) of LicensedDemoSetupFactory_Access;
   type LicensedDemoSetupFactory_Access_Array_Access is access all LicensedDemoSetupFactory_Access_Array;
   type LicensedDemoSetupFactory_Access_Array_Access_Array is array (Natural range <>) of LicensedDemoSetupFactory_Access_Array_Access;
   type LicensedDemoSetupFactory_Access_Array_Access_Array_Access is access all LicensedDemoSetupFactory_Access_Array_Access_Array;

   type LicensedDemoSetupFactory is new Java_Object with null record;

   procedure Initialize (This : in out LicensedDemoSetupFactory'Class);
   function Create return LicensedDemoSetupFactory_Access;
   function getInstance (This : in out LicensedDemoSetupFactory) return DemoSetup_Access;

end org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;


