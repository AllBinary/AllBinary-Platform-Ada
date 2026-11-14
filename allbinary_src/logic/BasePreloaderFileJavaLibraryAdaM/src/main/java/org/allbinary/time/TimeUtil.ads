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

with AllBinary_Java;
limited with org.allbinary.time.TimeUtil_Package;
package org.allbinary.time.TimeUtil_Package_References is
   type TimeUtil_Access is access all org.allbinary.time.TimeUtil_Package.TimeUtil'Class;
   type TimeUtil_Access_Array is array (Natural range <>) of TimeUtil_Access;
   type TimeUtil_Access_Array_Access is access all TimeUtil_Access_Array;
   type TimeUtil_Access_Array_Access_Array is array (Natural range <>) of TimeUtil_Access_Array_Access;
   type TimeUtil_Access_Array_Access_Array_Access is access all TimeUtil_Access_Array_Access_Array;
   type TimeUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeUtil_Access_Array_Access is (if Value /= null and then Value.all in TimeUtil_Access_Array_Object'Class then TimeUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TimeUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeUtil_Access_Array_Access_Array_Object'Class then TimeUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.time.TimeUtil_Package_References;

with org.allbinary.time.TimeUtil_Package_References;
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
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TimeUtil_Access is org.allbinary.time.TimeUtil_Package_References.TimeUtil_Access;
   function "=" (Left, Right : TimeUtil_Access) return Boolean renames org.allbinary.time.TimeUtil_Package_References."=";
   subtype TimeUtil_Access_Array is org.allbinary.time.TimeUtil_Package_References.TimeUtil_Access_Array;
   function "=" (Left, Right : TimeUtil_Access_Array) return Boolean renames org.allbinary.time.TimeUtil_Package_References."=";
   subtype TimeUtil_Access_Array_Access is org.allbinary.time.TimeUtil_Package_References.TimeUtil_Access_Array_Access;
   function "=" (Left, Right : TimeUtil_Access_Array_Access) return Boolean renames org.allbinary.time.TimeUtil_Package_References."=";
   function Java_Box (Value : TimeUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.TimeUtil_Package_References.Java_Box;
   function Java_Unbox_TimeUtil_Access_Array (Value : access Java_Object'Class) return TimeUtil_Access_Array_Access renames org.allbinary.time.TimeUtil_Package_References.Java_Unbox_TimeUtil_Access_Array;
   subtype TimeUtil_Access_Array_Access_Array is org.allbinary.time.TimeUtil_Package_References.TimeUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TimeUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeUtil_Package_References."=";
   subtype TimeUtil_Access_Array_Access_Array_Access is org.allbinary.time.TimeUtil_Package_References.TimeUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeUtil_Package_References."=";
   function Java_Box (Value : TimeUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.TimeUtil_Package_References.Java_Box;
   function Java_Unbox_TimeUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeUtil_Access_Array_Access_Array_Access renames org.allbinary.time.TimeUtil_Package_References.Java_Unbox_TimeUtil_Access_Array_Access_Array;

   type TimeUtil is new Java_Object with null record;
   instance : TimeUtil_Access;
   calendar : Calendar_Access;

   procedure Initialize (This : in out TimeUtil'Class);
   function Create return TimeUtil_Access;
   function getInstance return TimeUtil_Access;
   procedure setCalendar (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String);
   procedure setCalendarWithTime (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String);
   procedure setExpirationCalendar (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearsString : Unbounded_String; monthsString : Unbounded_String; daysString : Unbounded_String; hoursString : Unbounded_String; minutesString : Unbounded_String; secondsString : Unbounded_String);
   function getTotalTime (This : in out TimeUtil; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String) return Long_Long_Integer;
   procedure getTotalTime (This : in out TimeUtil; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String);

end org.allbinary.time.TimeUtil_Package;


