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
with org.allbinary.time.StupidTimer_Package; use org.allbinary.time.StupidTimer_Package;

package org.allbinary.time.LicenseStupidTimerFactory_Package is


   type LicenseStupidTimerFactory is tagged;
   type LicenseStupidTimerFactory_Access is access all LicenseStupidTimerFactory'Class;
   type LicenseStupidTimerFactory_Access_Array is array (Natural range <>) of LicenseStupidTimerFactory_Access;
   type LicenseStupidTimerFactory_Access_Array_Access is access all LicenseStupidTimerFactory_Access_Array;
   type LicenseStupidTimerFactory_Access_Array_Access_Array is array (Natural range <>) of LicenseStupidTimerFactory_Access_Array_Access;
   type LicenseStupidTimerFactory_Access_Array_Access_Array_Access is access all LicenseStupidTimerFactory_Access_Array_Access_Array;

   type LicenseStupidTimerFactory is new Java_Object with null record;
   instance : StupidTimer_Access;

   procedure Initialize (This : in out LicenseStupidTimerFactory'Class);
   function Create return LicenseStupidTimerFactory_Access;
   function getInstance return StupidTimer_Access;

end org.allbinary.time.LicenseStupidTimerFactory_Package;


