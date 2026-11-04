--  Generated Code Do Not Modify

limited with BooleanTest_Package;
package BooleanTest_Package_References is
   type BooleanTest_Access is access all BooleanTest_Package.BooleanTest'Class;
   type BooleanTest_Access_Array is array (Natural range <>) of BooleanTest_Access;
   type BooleanTest_Access_Array_Access is access all BooleanTest_Access_Array;
   type BooleanTest_Access_Array_Access_Array is array (Natural range <>) of BooleanTest_Access_Array_Access;
   type BooleanTest_Access_Array_Access_Array_Access is access all BooleanTest_Access_Array_Access_Array;
end BooleanTest_Package_References;

with BooleanTest_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package BooleanTest_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BooleanTest_Access is BooleanTest_Package_References.BooleanTest_Access;
   function "=" (Left, Right : BooleanTest_Access) return Boolean renames BooleanTest_Package_References."=";
   subtype BooleanTest_Access_Array is BooleanTest_Package_References.BooleanTest_Access_Array;
   function "=" (Left, Right : BooleanTest_Access_Array) return Boolean renames BooleanTest_Package_References."=";
   subtype BooleanTest_Access_Array_Access is BooleanTest_Package_References.BooleanTest_Access_Array_Access;
   function "=" (Left, Right : BooleanTest_Access_Array_Access) return Boolean renames BooleanTest_Package_References."=";
   subtype BooleanTest_Access_Array_Access_Array is BooleanTest_Package_References.BooleanTest_Access_Array_Access_Array;
   function "=" (Left, Right : BooleanTest_Access_Array_Access_Array) return Boolean renames BooleanTest_Package_References."=";
   subtype BooleanTest_Access_Array_Access_Array_Access is BooleanTest_Package_References.BooleanTest_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BooleanTest_Access_Array_Access_Array_Access) return Boolean renames BooleanTest_Package_References."=";

   type BooleanTest is new Java_Object with null record;

   procedure Initialize (This : in out BooleanTest'Class);
   function Create return BooleanTest_Access;

end BooleanTest_Package;


