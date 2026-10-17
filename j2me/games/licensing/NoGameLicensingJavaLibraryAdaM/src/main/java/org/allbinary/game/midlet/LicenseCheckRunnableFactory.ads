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
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.NullABRunnable_Package; use org.allbinary.thread.NullABRunnable_Package;
with org.allbinary.game.midlet.SpecialDemoGameMidlet_Package; use org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;

package org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package is

   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
   package NullABRunnable_Package renames Standard.org.allbinary.thread.NullABRunnable_Package;

   type LicenseCheckRunnableFactory is tagged;
   type LicenseCheckRunnableFactory_Access is access all LicenseCheckRunnableFactory'Class;
   type LicenseCheckRunnableFactory_Access_Array is array (Natural range <>) of LicenseCheckRunnableFactory_Access;
   type LicenseCheckRunnableFactory_Access_Array_Access is access all LicenseCheckRunnableFactory_Access_Array;

   type LicenseCheckRunnableFactory is new Java_Object with null record;

   procedure Initialize (This : in out LicenseCheckRunnableFactory'Class);
   function Create return LicenseCheckRunnableFactory_Access;
   function getInstance (This : in out LicenseCheckRunnableFactory; specialDemoGameMidlet : SpecialDemoGameMidlet_Access) return ABRunnable_Access;
   procedure getInstance (This : in out LicenseCheckRunnableFactory; specialDemoGameMidlet : SpecialDemoGameMidlet_Access);

end org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;


