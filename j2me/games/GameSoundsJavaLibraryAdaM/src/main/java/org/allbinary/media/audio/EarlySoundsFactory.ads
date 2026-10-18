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
with org.allbinary.media.audio.BaseSoundsFactory_Package; use org.allbinary.media.audio.BaseSoundsFactory_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.media.audio.EarlySoundsFactory_Package is


   type EarlySoundsFactory is tagged;
   type EarlySoundsFactory_Access is access all EarlySoundsFactory'Class;
   type EarlySoundsFactory_Access_Array is array (Natural range <>) of EarlySoundsFactory_Access;
   type EarlySoundsFactory_Access_Array_Access is access all EarlySoundsFactory_Access_Array;
   type EarlySoundsFactory_Access_Array_Access_Array is array (Natural range <>) of EarlySoundsFactory_Access_Array_Access;
   type EarlySoundsFactory_Access_Array_Access_Array_Access is access all EarlySoundsFactory_Access_Array_Access_Array;

   type EarlySoundsFactory is new BaseSoundsFactory with null record;
   instance : EarlySoundsFactory_Access;

   procedure Initialize (This : in out EarlySoundsFactory'Class);
   function Create return EarlySoundsFactory_Access;
   function getSoundInterfaceArray (This : in out EarlySoundsFactory) return Sound_Access_Array_Access;
   function getInstance return EarlySoundsFactory_Access;

end org.allbinary.media.audio.EarlySoundsFactory_Package;


