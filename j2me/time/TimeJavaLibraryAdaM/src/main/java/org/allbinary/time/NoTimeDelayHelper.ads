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
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.time.NoTimeDelayHelper_Package is


   type NoTimeDelayHelper is tagged;
   type NoTimeDelayHelper_Access is access all NoTimeDelayHelper'Class;
   type NoTimeDelayHelper_Access_Array is array (Natural range <>) of NoTimeDelayHelper_Access;
   type NoTimeDelayHelper_Access_Array_Access is access all NoTimeDelayHelper_Access_Array;

   type NoTimeDelayHelper is new TimeDelayHelper with null record;
   SINGLETON : NoTimeDelayHelper_Access;

   procedure Initialize (This : in out NoTimeDelayHelper'Class);
   function Create return NoTimeDelayHelper_Access;
   function isTimeTNT (This : in out NoTimeDelayHelper) return Boolean;
   function isTimeSinceTNT (This : in out NoTimeDelayHelper; delay_Id : Integer) return Boolean;
   procedure isTimeSinceTNT (This : in out NoTimeDelayHelper; delay_Id : Integer);
   function isTime (This : in out NoTimeDelayHelper; currentTime : Long_Long_Integer) return Boolean;
   procedure isTime (This : in out NoTimeDelayHelper; currentTime : Long_Long_Integer);
   function isTimeSince (This : in out NoTimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer) return Boolean;
   procedure isTimeSince (This : in out NoTimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer);

end org.allbinary.time.NoTimeDelayHelper_Package;


