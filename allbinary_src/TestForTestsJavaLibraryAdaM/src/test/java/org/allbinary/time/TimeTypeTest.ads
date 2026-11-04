--  Generated Code Do Not Modify

limited with org.allbinary.time.TimeTypeTest_Package;
package org.allbinary.time.TimeTypeTest_Package_References is
   type TimeTypeTest_Access is access all org.allbinary.time.TimeTypeTest_Package.TimeTypeTest'Class;
   type TimeTypeTest_Access_Array is array (Natural range <>) of TimeTypeTest_Access;
   type TimeTypeTest_Access_Array_Access is access all TimeTypeTest_Access_Array;
   type TimeTypeTest_Access_Array_Access_Array is array (Natural range <>) of TimeTypeTest_Access_Array_Access;
   type TimeTypeTest_Access_Array_Access_Array_Access is access all TimeTypeTest_Access_Array_Access_Array;
end org.allbinary.time.TimeTypeTest_Package_References;

with org.allbinary.time.TimeTypeTest_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.TimeTypeUtil_Package;
with org.allbinary.time.TimeTypeUtil_Package_References;

package org.allbinary.time.TimeTypeTest_Package is

   package Reference_Types is
   subtype TimeTypeUtil_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access;
   use type TimeTypeUtil_Access;
   subtype TimeTypeUtil_Access_Array is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array;
   use type TimeTypeUtil_Access_Array;
   subtype TimeTypeUtil_Access_Array_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access;
   use type TimeTypeUtil_Access_Array_Access;
   subtype TimeTypeUtil_Access_Array_Access_Array is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access_Array;
   use type TimeTypeUtil_Access_Array_Access_Array;
   subtype TimeTypeUtil_Access_Array_Access_Array_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access_Array_Access;
   use type TimeTypeUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TimeTypeTest_Access is org.allbinary.time.TimeTypeTest_Package_References.TimeTypeTest_Access;
   function "=" (Left, Right : TimeTypeTest_Access) return Boolean renames org.allbinary.time.TimeTypeTest_Package_References."=";
   subtype TimeTypeTest_Access_Array is org.allbinary.time.TimeTypeTest_Package_References.TimeTypeTest_Access_Array;
   function "=" (Left, Right : TimeTypeTest_Access_Array) return Boolean renames org.allbinary.time.TimeTypeTest_Package_References."=";
   subtype TimeTypeTest_Access_Array_Access is org.allbinary.time.TimeTypeTest_Package_References.TimeTypeTest_Access_Array_Access;
   function "=" (Left, Right : TimeTypeTest_Access_Array_Access) return Boolean renames org.allbinary.time.TimeTypeTest_Package_References."=";
   subtype TimeTypeTest_Access_Array_Access_Array is org.allbinary.time.TimeTypeTest_Package_References.TimeTypeTest_Access_Array_Access_Array;
   function "=" (Left, Right : TimeTypeTest_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeTypeTest_Package_References."=";
   subtype TimeTypeTest_Access_Array_Access_Array_Access is org.allbinary.time.TimeTypeTest_Package_References.TimeTypeTest_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeTypeTest_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeTypeTest_Package_References."=";

   type TimeTypeTest is new Java_Object with null record;

   procedure Initialize (This : in out TimeTypeTest'Class);
   function Create return TimeTypeTest_Access;
   function millisForHourLocal (hour : Integer) return Long_Long_Integer;
   procedure millisForHourLocal (hour : Integer);
   procedure isNight_returnsTrue_for_hours_less_than_6 (This : in out TimeTypeTest);
   procedure isNight_returnsTrue_for_hours_greater_than_18 (This : in out TimeTypeTest);
   procedure isNight_returnsFalse_for_boundary_hours_6_and_18 (This : in out TimeTypeTest);
   procedure getNightOrDay_returns_expected_label (This : in out TimeTypeTest);
   procedure getHourOfDay_long_converts_epoch_to_local_hour (This : in out TimeTypeTest);
   procedure isNight_long_expected_ranges (This : in out TimeTypeTest);
   procedure getNightOrDay_long_consistency (This : in out TimeTypeTest);
   procedure boundaries_day_for_long_based_api (This : in out TimeTypeTest);
   procedure constants_accessible_and_stable (This : in out TimeTypeTest);
   procedure getInstance_returns_same_singleton (This : in out TimeTypeTest);

end org.allbinary.time.TimeTypeTest_Package;

limited with org.allbinary.time.TestableTimeTypeUtil_Package;
package org.allbinary.time.TestableTimeTypeUtil_Package_References is
   type TestableTimeTypeUtil_Access is access all org.allbinary.time.TestableTimeTypeUtil_Package.TestableTimeTypeUtil'Class;
   type TestableTimeTypeUtil_Access_Array is array (Natural range <>) of TestableTimeTypeUtil_Access;
   type TestableTimeTypeUtil_Access_Array_Access is access all TestableTimeTypeUtil_Access_Array;
   type TestableTimeTypeUtil_Access_Array_Access_Array is array (Natural range <>) of TestableTimeTypeUtil_Access_Array_Access;
   type TestableTimeTypeUtil_Access_Array_Access_Array_Access is access all TestableTimeTypeUtil_Access_Array_Access_Array;
end org.allbinary.time.TestableTimeTypeUtil_Package_References;

with org.allbinary.time.TestableTimeTypeUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.TimeTypeUtil_Package;
with org.allbinary.time.TimeTypeUtil_Package_References;

package org.allbinary.time.TestableTimeTypeUtil_Package is

   package Reference_Types is
   subtype TimeTypeUtil_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access;
   use type TimeTypeUtil_Access;
   subtype TimeTypeUtil_Access_Array is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array;
   use type TimeTypeUtil_Access_Array;
   subtype TimeTypeUtil_Access_Array_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access;
   use type TimeTypeUtil_Access_Array_Access;
   subtype TimeTypeUtil_Access_Array_Access_Array is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access_Array;
   use type TimeTypeUtil_Access_Array_Access_Array;
   subtype TimeTypeUtil_Access_Array_Access_Array_Access is org.allbinary.time.TimeTypeUtil_Package_References.TimeTypeUtil_Access_Array_Access_Array_Access;
   use type TimeTypeUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TestableTimeTypeUtil_Access is org.allbinary.time.TestableTimeTypeUtil_Package_References.TestableTimeTypeUtil_Access;
   function "=" (Left, Right : TestableTimeTypeUtil_Access) return Boolean renames org.allbinary.time.TestableTimeTypeUtil_Package_References."=";
   subtype TestableTimeTypeUtil_Access_Array is org.allbinary.time.TestableTimeTypeUtil_Package_References.TestableTimeTypeUtil_Access_Array;
   function "=" (Left, Right : TestableTimeTypeUtil_Access_Array) return Boolean renames org.allbinary.time.TestableTimeTypeUtil_Package_References."=";
   subtype TestableTimeTypeUtil_Access_Array_Access is org.allbinary.time.TestableTimeTypeUtil_Package_References.TestableTimeTypeUtil_Access_Array_Access;
   function "=" (Left, Right : TestableTimeTypeUtil_Access_Array_Access) return Boolean renames org.allbinary.time.TestableTimeTypeUtil_Package_References."=";
   subtype TestableTimeTypeUtil_Access_Array_Access_Array is org.allbinary.time.TestableTimeTypeUtil_Package_References.TestableTimeTypeUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TestableTimeTypeUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TestableTimeTypeUtil_Package_References."=";
   subtype TestableTimeTypeUtil_Access_Array_Access_Array_Access is org.allbinary.time.TestableTimeTypeUtil_Package_References.TestableTimeTypeUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestableTimeTypeUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TestableTimeTypeUtil_Package_References."=";

   type TestableTimeTypeUtil is new TimeTypeUtil with record
      hour : Integer;
   end record;

   procedure Initialize (This : in out TestableTimeTypeUtil'Class; hour : Integer);
   function Create (hour : Integer) return TestableTimeTypeUtil_Access;
   function getHourOfDay (This : in out TestableTimeTypeUtil) return Integer;

end org.allbinary.time.TestableTimeTypeUtil_Package;


