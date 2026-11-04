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

limited with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;
package org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References is
   type LicenseCheckRunnableFactory_Access is access all org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package.LicenseCheckRunnableFactory'Class;
   type LicenseCheckRunnableFactory_Access_Array is array (Natural range <>) of LicenseCheckRunnableFactory_Access;
   type LicenseCheckRunnableFactory_Access_Array_Access is access all LicenseCheckRunnableFactory_Access_Array;
   type LicenseCheckRunnableFactory_Access_Array_Access_Array is array (Natural range <>) of LicenseCheckRunnableFactory_Access_Array_Access;
   type LicenseCheckRunnableFactory_Access_Array_Access_Array_Access is access all LicenseCheckRunnableFactory_Access_Array_Access_Array;
end org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References;

with org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ABRunnable_Package_References;
limited with org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;
with org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References;

package org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package is

   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
   package Reference_Types is
   subtype ABRunnable_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access;
   use type ABRunnable_Access;
   subtype ABRunnable_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array;
   use type ABRunnable_Access_Array;
   subtype ABRunnable_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access;
   use type ABRunnable_Access_Array_Access;
   subtype ABRunnable_Access_Array_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array;
   use type ABRunnable_Access_Array_Access_Array;
   subtype ABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array_Access;
   use type ABRunnable_Access_Array_Access_Array_Access;
   subtype SpecialDemoGameMidlet_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access;
   use type SpecialDemoGameMidlet_Access;
   subtype SpecialDemoGameMidlet_Access_Array is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array;
   use type SpecialDemoGameMidlet_Access_Array;
   subtype SpecialDemoGameMidlet_Access_Array_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access;
   use type SpecialDemoGameMidlet_Access_Array_Access;
   subtype SpecialDemoGameMidlet_Access_Array_Access_Array is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access_Array;
   use type SpecialDemoGameMidlet_Access_Array_Access_Array;
   subtype SpecialDemoGameMidlet_Access_Array_Access_Array_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access_Array_Access;
   use type SpecialDemoGameMidlet_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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

   type LicenseCheckRunnableFactory is new Java_Object with null record;

   procedure Initialize (This : in out LicenseCheckRunnableFactory'Class);
   function Create return LicenseCheckRunnableFactory_Access;
   function getInstance (This : in out LicenseCheckRunnableFactory; specialDemoGameMidlet_Param : access SpecialDemoGameMidlet_Package.SpecialDemoGameMidlet'Class) return ABRunnable_Access;
   procedure getInstance (This : in out LicenseCheckRunnableFactory; specialDemoGameMidlet_Param : access SpecialDemoGameMidlet_Package.SpecialDemoGameMidlet'Class);

end org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;


