--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.logic.math.MathUtil_Package;
package org.allbinary.logic.math.MathUtil_Package_References is
   type MathUtil_Access is access all org.allbinary.logic.math.MathUtil_Package.MathUtil'Class;
   type MathUtil_Access_Array is array (Natural range <>) of MathUtil_Access;
   type MathUtil_Access_Array_Access is access all MathUtil_Access_Array;
   type MathUtil_Access_Array_Access_Array is array (Natural range <>) of MathUtil_Access_Array_Access;
   type MathUtil_Access_Array_Access_Array_Access is access all MathUtil_Access_Array_Access_Array;
   type MathUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MathUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : MathUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MathUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MathUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MathUtil_Access_Array_Access is (if Value /= null and then Value.all in MathUtil_Access_Array_Object'Class then MathUtil_Access_Array_Object'Class (Value.all).Value else null);
   type MathUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MathUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MathUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MathUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MathUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MathUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MathUtil_Access_Array_Access_Array_Object'Class then MathUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.MathUtil_Package_References;

with org.allbinary.logic.math.MathUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.math.MathUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   function "=" (Left, Right : MathUtil_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   function "=" (Left, Right : MathUtil_Access_Array) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   function "=" (Left, Right : MathUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   function Java_Box (Value : MathUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.MathUtil_Package_References.Java_Box;
   function Java_Unbox_MathUtil_Access_Array (Value : access Java_Object'Class) return MathUtil_Access_Array_Access renames org.allbinary.logic.math.MathUtil_Package_References.Java_Unbox_MathUtil_Access_Array;
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MathUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MathUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   function Java_Box (Value : MathUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.MathUtil_Package_References.Java_Box;
   function Java_Unbox_MathUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return MathUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.math.MathUtil_Package_References.Java_Unbox_MathUtil_Access_Array_Access_Array;

   type MathUtil is new Java_Object with record
      ACCURACY : Integer;
   end record;
   instance : MathUtil_Access;

   procedure Initialize (This : in out MathUtil'Class);
   function Create return MathUtil_Access;
   function getInstance return MathUtil_Access;
   function getTotalDigits (This : in out MathUtil; digits_Id_Param : Integer) return Integer;
   procedure getTotalDigits (This : in out MathUtil; digits_Id_Param : Integer);
   function sqrt (This : in out MathUtil; value : Integer) return Integer;
   procedure sqrt (This : in out MathUtil; value : Integer);
   function sqrtd (This : in out MathUtil; x : Integer) return Long_Float;
   procedure sqrtd (This : in out MathUtil; x : Integer);
   function abs_Id (This : in out MathUtil; value : Integer) return Integer;
   procedure abs_Id (This : in out MathUtil; value : Integer);
   function abslong (This : in out MathUtil; value : Long_Long_Integer) return Long_Long_Integer;
   procedure abslong (This : in out MathUtil; value : Long_Long_Integer);
   function min (This : in out MathUtil; value : Integer; value2 : Integer) return Integer;
   procedure min (This : in out MathUtil; value : Integer; value2 : Integer);
   function max (This : in out MathUtil; value : Integer; value2 : Integer) return Integer;
   procedure max (This : in out MathUtil; value : Integer; value2 : Integer);

end org.allbinary.logic.math.MathUtil_Package;


