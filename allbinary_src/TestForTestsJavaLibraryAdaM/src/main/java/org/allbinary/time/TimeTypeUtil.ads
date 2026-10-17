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
--  with java.util.TimeZone_Package; use java.util.TimeZone_Package;

package org.allbinary.time.TimeTypeUtil_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;

   type TimeTypeUtil is tagged;
   type TimeTypeUtil_Access is access all TimeTypeUtil'Class;
   type TimeTypeUtil_Access_Array is array (Natural range <>) of TimeTypeUtil_Access;
   type TimeTypeUtil_Access_Array_Access is access all TimeTypeUtil_Access_Array;

   type TimeTypeUtil is new Java_Object with record
      NIGHT : Unbounded_String;
      DAY : Unbounded_String;
   end record;
   instance : TimeTypeUtil_Access;

   procedure Initialize (This : in out TimeTypeUtil'Class);
   function Create return TimeTypeUtil_Access;
   function getInstance return TimeTypeUtil_Access;
   function isNight (This : in out TimeTypeUtil) return Boolean;
   function getHourOfDay (This : in out TimeTypeUtil) return Integer;
   function getNightOrDay (This : in out TimeTypeUtil) return Unbounded_String;
   function getHourOfDay (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) return Integer;
   procedure getHourOfDay (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer);
   function isNight (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) return Boolean;
   procedure isNight (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer);
   function getNightOrDay (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer) return Unbounded_String;
   procedure getNightOrDay (This : in out TimeTypeUtil; timeInMillis : Long_Long_Integer);

end org.allbinary.time.TimeTypeUtil_Package;


