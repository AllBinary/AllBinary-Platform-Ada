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
with java.util.Calendar_Package; use java.util.Calendar_Package;

package org.allbinary.time.TimeUtil_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;

   type TimeUtil is tagged;
   type TimeUtil_Access is access all TimeUtil'Class;
   type TimeUtil_Access_Array is array (Natural range <>) of TimeUtil_Access;
   type TimeUtil_Access_Array_Access is access all TimeUtil_Access_Array;

   type TimeUtil is new Java_Object with null record;
   instance : TimeUtil_Access;
   calendar : Calendar_Access;

   procedure Initialize (This : in out TimeUtil'Class);
   function Create return TimeUtil_Access;
   function getInstance return TimeUtil_Access;
   procedure setCalendar (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String);
   procedure setCalendar (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String);
   procedure setExpirationCalendar (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearsString : Unbounded_String; monthsString : Unbounded_String; daysString : Unbounded_String; hoursString : Unbounded_String; minutesString : Unbounded_String; secondsString : Unbounded_String);
   function getTotalTime (This : in out TimeUtil; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String) return Long_Long_Integer;
   procedure getTotalTime (This : in out TimeUtil; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String);

end org.allbinary.time.TimeUtil_Package;


