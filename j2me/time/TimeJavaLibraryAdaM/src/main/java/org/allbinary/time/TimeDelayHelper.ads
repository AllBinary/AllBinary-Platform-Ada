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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package org.allbinary.time.TimeDelayHelper_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type TimeDelayHelper is tagged;
   type TimeDelayHelper_Access is access all TimeDelayHelper'Class;
   type TimeDelayHelper_Access_Array is array (Natural range <>) of TimeDelayHelper_Access;
   type TimeDelayHelper_Access_Array_Access is access all TimeDelayHelper_Access_Array;

   type TimeDelayHelper is new Java_Object with record
      startTime : Long_Long_Integer;
      elapsedTimeAtPause : Long_Long_Integer;
      delay_Id : Integer;
   end record;

   procedure Initialize (This : in out TimeDelayHelper'Class; delay_Id : Integer);
   function Create (delay_Id : Integer) return TimeDelayHelper_Access;
   function isTimeTNT (This : in out TimeDelayHelper) return Boolean;
   procedure isTimeTNT (This : in out TimeDelayHelper);
   function isTimeSinceTNT (This : in out TimeDelayHelper; delay_Id : Integer) return Boolean;
   procedure isTimeSinceTNT (This : in out TimeDelayHelper; delay_Id : Integer);
   function isTime (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Boolean;
   procedure isTime (This : in out TimeDelayHelper; currentTime : Long_Long_Integer);
   function isTimeWithoutReset (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Boolean;
   procedure isTimeWithoutReset (This : in out TimeDelayHelper; currentTime : Long_Long_Integer);
   function isTimeSince (This : in out TimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer) return Boolean;
   procedure isTimeSince (This : in out TimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer);
   function getElapsedTNT (This : in out TimeDelayHelper) return Long_Long_Integer;
   procedure getElapsedTNT (This : in out TimeDelayHelper);
   function getElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Long_Long_Integer;
   procedure getElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer);
   function isElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer; time : Long_Long_Integer) return Boolean;
   procedure isElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer; time : Long_Long_Integer);
   function isElapsedTNT (This : in out TimeDelayHelper; time : Long_Long_Integer) return Boolean;
   procedure isElapsedTNT (This : in out TimeDelayHelper; time : Long_Long_Integer);
   procedure setStartTime (This : in out TimeDelayHelper; startTime : Long_Long_Integer);
   function getStartTime (This : in out TimeDelayHelper) return Long_Long_Integer;
   procedure getStartTime (This : in out TimeDelayHelper);
   procedure setStartTimeTNT (This : in out TimeDelayHelper);
   procedure pause (This : in out TimeDelayHelper);
   function resume (This : in out TimeDelayHelper) return Boolean;
   procedure resume (This : in out TimeDelayHelper);
   function toStringAt (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Unbounded_String;
   procedure toStringAt (This : in out TimeDelayHelper; currentTime : Long_Long_Integer);
   function toString (This : in out TimeDelayHelper) return Unbounded_String;
   procedure toString (This : in out TimeDelayHelper);

end org.allbinary.time.TimeDelayHelper_Package;


