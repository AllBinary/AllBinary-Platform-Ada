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
with org.allbinary.game.midlet.LicenseLoadingType_Package; use org.allbinary.game.midlet.LicenseLoadingType_Package;

package org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package is


   type LicenseLoadingTypeFactory is tagged;
   type LicenseLoadingTypeFactory_Access is access all LicenseLoadingTypeFactory'Class;
   type LicenseLoadingTypeFactory_Access_Array is array (Natural range <>) of LicenseLoadingTypeFactory_Access;
   type LicenseLoadingTypeFactory_Access_Array_Access is access all LicenseLoadingTypeFactory_Access_Array;
   type LicenseLoadingTypeFactory_Access_Array_Access_Array is array (Natural range <>) of LicenseLoadingTypeFactory_Access_Array_Access;
   type LicenseLoadingTypeFactory_Access_Array_Access_Array_Access is access all LicenseLoadingTypeFactory_Access_Array_Access_Array;

   type LicenseLoadingTypeFactory is new Java_Object with record
      INITIAL_LOADING : LicenseLoadingType_Access;
      GAME_START : LicenseLoadingType_Access;
      LOGIN : LicenseLoadingType_Access;
      OTHER : LicenseLoadingType_Access;
   end record;
   instance : LicenseLoadingTypeFactory_Access;

   procedure Initialize (This : in out LicenseLoadingTypeFactory'Class);
   function Create return LicenseLoadingTypeFactory_Access;
   function getIntance return LicenseLoadingTypeFactory_Access;

end org.allbinary.game.midlet.LicenseLoadingTypeFactory_Package;


