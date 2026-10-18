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

package org.allbinary.game.midlet.LicenseLoadingType_Package is


   type LicenseLoadingType is tagged;
   type LicenseLoadingType_Access is access all LicenseLoadingType'Class;
   type LicenseLoadingType_Access_Array is array (Natural range <>) of LicenseLoadingType_Access;
   type LicenseLoadingType_Access_Array_Access is access all LicenseLoadingType_Access_Array;
   type LicenseLoadingType_Access_Array_Access_Array is array (Natural range <>) of LicenseLoadingType_Access_Array_Access;
   type LicenseLoadingType_Access_Array_Access_Array_Access is access all LicenseLoadingType_Access_Array_Access_Array;

   type LicenseLoadingType is new Java_Object with null record;

   procedure Initialize (This : in out LicenseLoadingType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return LicenseLoadingType_Access;

end org.allbinary.game.midlet.LicenseLoadingType_Package;


