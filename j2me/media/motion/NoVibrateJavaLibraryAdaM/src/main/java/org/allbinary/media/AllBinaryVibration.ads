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
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;

package org.allbinary.media.AllBinaryVibration_Package is

   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;

   type AllBinaryVibration is tagged;
   type AllBinaryVibration_Access is access all AllBinaryVibration'Class;
   type AllBinaryVibration_Access_Array is array (Natural range <>) of AllBinaryVibration_Access;
   type AllBinaryVibration_Access_Array_Access is access all AllBinaryVibration_Access_Array;

   type AllBinaryVibration is new AllBinaryVibrationME with null record;
   VIBRATION : AllBinaryVibrationME_Access;

   procedure Initialize (This : in out AllBinaryVibration'Class);
   function Create return AllBinaryVibration_Access;
   function getInstance return AllBinaryVibrationME_Access;
   procedure getInstance;
   procedure init;
   procedure vibrate (This : in out AllBinaryVibration; duration : Integer; type_Id : Integer; volume : Integer);

end org.allbinary.media.AllBinaryVibration_Package;


