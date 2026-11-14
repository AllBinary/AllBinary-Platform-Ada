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
limited with org.allbinary.time.TimeDelayHelper_Package;
package org.allbinary.time.TimeDelayHelper_Package_References is
   type TimeDelayHelper_Access is access all org.allbinary.time.TimeDelayHelper_Package.TimeDelayHelper'Class;
   type TimeDelayHelper_Access_Array is array (Natural range <>) of TimeDelayHelper_Access;
   type TimeDelayHelper_Access_Array_Access is access all TimeDelayHelper_Access_Array;
   type TimeDelayHelper_Access_Array_Access_Array is array (Natural range <>) of TimeDelayHelper_Access_Array_Access;
   type TimeDelayHelper_Access_Array_Access_Array_Access is access all TimeDelayHelper_Access_Array_Access_Array;
   type TimeDelayHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeDelayHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeDelayHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeDelayHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeDelayHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeDelayHelper_Access_Array_Access is (if Value /= null and then Value.all in TimeDelayHelper_Access_Array_Object'Class then TimeDelayHelper_Access_Array_Object'Class (Value.all).Value else null);
   type TimeDelayHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeDelayHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeDelayHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeDelayHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeDelayHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeDelayHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeDelayHelper_Access_Array_Access_Array_Object'Class then TimeDelayHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.time.TimeDelayHelper_Package_References;

with org.allbinary.time.TimeDelayHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.time.TimeDelayHelper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   function Java_Box (Value : TimeDelayHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.TimeDelayHelper_Package_References.Java_Box;
   function Java_Unbox_TimeDelayHelper_Access_Array (Value : access Java_Object'Class) return TimeDelayHelper_Access_Array_Access renames org.allbinary.time.TimeDelayHelper_Package_References.Java_Unbox_TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   function Java_Box (Value : TimeDelayHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.TimeDelayHelper_Package_References.Java_Box;
   function Java_Unbox_TimeDelayHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeDelayHelper_Access_Array_Access_Array_Access renames org.allbinary.time.TimeDelayHelper_Package_References.Java_Unbox_TimeDelayHelper_Access_Array_Access_Array;

   type TimeDelayHelper is new Java_Object with record
      startTime : Long_Long_Integer;
      elapsedTimeAtPause : Long_Long_Integer;
      delay_Id : Integer;
   end record;

   procedure Initialize (This : in out TimeDelayHelper'Class; delay_Id : Integer);
   function Create (delay_Id : Integer) return TimeDelayHelper_Access;
   function isTimeTNT (This : in out TimeDelayHelper) return Boolean;
   function isTimeSinceTNT (This : in out TimeDelayHelper; delay_Id : Integer) return Boolean;
   procedure isTimeSinceTNT (This : in out TimeDelayHelper; delay_Id : Integer);
   function isTime (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Boolean;
   procedure isTime (This : in out TimeDelayHelper; currentTime : Long_Long_Integer);
   function isTimeWithoutReset (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Boolean;
   procedure isTimeWithoutReset (This : in out TimeDelayHelper; currentTime : Long_Long_Integer);
   function isTimeSince (This : in out TimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer) return Boolean;
   procedure isTimeSince (This : in out TimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer);
   function getElapsedTNT (This : in out TimeDelayHelper) return Long_Long_Integer;
   function getElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Long_Long_Integer;
   procedure getElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer);
   function isElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer; time : Long_Long_Integer) return Boolean;
   procedure isElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer; time : Long_Long_Integer);
   function isElapsedTNT (This : in out TimeDelayHelper; time : Long_Long_Integer) return Boolean;
   procedure isElapsedTNT (This : in out TimeDelayHelper; time : Long_Long_Integer);
   procedure setStartTime (This : in out TimeDelayHelper; startTime : Long_Long_Integer);
   function getStartTime (This : in out TimeDelayHelper) return Long_Long_Integer;
   procedure setStartTimeTNT (This : in out TimeDelayHelper);
   procedure pause (This : in out TimeDelayHelper);
   function resume (This : in out TimeDelayHelper) return Boolean;
   function toStringAt (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Unbounded_String;
   procedure toStringAt (This : in out TimeDelayHelper; currentTime : Long_Long_Integer);
   function toString (This : in out TimeDelayHelper) return Unbounded_String;

end org.allbinary.time.TimeDelayHelper_Package;


