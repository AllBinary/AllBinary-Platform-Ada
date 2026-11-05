--  Generated Code Do Not Modify

limited with org.allbinary.time.TimeTypeUtil_Package;
package org.allbinary.time.TimeTypeUtil_Package_References is
   type TimeTypeUtil_Access is access all org.allbinary.time.TimeTypeUtil_Package.TimeTypeUtil'Class;
   type TimeTypeUtil_Access_Array is array (Natural range <>) of TimeTypeUtil_Access;
   type TimeTypeUtil_Access_Array_Access is access all TimeTypeUtil_Access_Array;
   type TimeTypeUtil_Access_Array_Access_Array is array (Natural range <>) of TimeTypeUtil_Access_Array_Access;
   type TimeTypeUtil_Access_Array_Access_Array_Access is access all TimeTypeUtil_Access_Array_Access_Array;
end org.allbinary.time.TimeTypeUtil_Package_References;

with org.allbinary.time.TimeTypeUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.time.TimeTypeUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TimeTypeUtil_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access;
   function "=" (Left, Right : TimeTypeUtil_Access) return Boolean renames org.allbinary.time.TimeTypeUtil_Package_References."=";
   subtype TimeTypeUtil_Access_Array is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array;
   function "=" (Left, Right : TimeTypeUtil_Access_Array) return Boolean renames org.allbinary.time.TimeTypeUtil_Package_References."=";
   subtype TimeTypeUtil_Access_Array_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access;
   function "=" (Left, Right : TimeTypeUtil_Access_Array_Access) return Boolean renames org.allbinary.time.TimeTypeUtil_Package_References."=";
   subtype TimeTypeUtil_Access_Array_Access_Array is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TimeTypeUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeTypeUtil_Package_References."=";
   subtype TimeTypeUtil_Access_Array_Access_Array_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeTypeUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeTypeUtil_Package_References."=";

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


