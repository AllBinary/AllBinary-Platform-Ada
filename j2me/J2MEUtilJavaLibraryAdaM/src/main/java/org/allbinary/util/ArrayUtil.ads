--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.util.ArrayUtil_Package;
package org.allbinary.util.ArrayUtil_Package_References is
   type ArrayUtil_Access is access all org.allbinary.util.ArrayUtil_Package.ArrayUtil'Class;
   type ArrayUtil_Access_Array is array (Natural range <>) of ArrayUtil_Access;
   type ArrayUtil_Access_Array_Access is access all ArrayUtil_Access_Array;
   type ArrayUtil_Access_Array_Access_Array is array (Natural range <>) of ArrayUtil_Access_Array_Access;
   type ArrayUtil_Access_Array_Access_Array_Access is access all ArrayUtil_Access_Array_Access_Array;
   type ArrayUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArrayUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ArrayUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArrayUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArrayUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArrayUtil_Access_Array_Access is (if Value /= null and then Value.all in ArrayUtil_Access_Array_Object'Class then ArrayUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ArrayUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArrayUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ArrayUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArrayUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArrayUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArrayUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ArrayUtil_Access_Array_Access_Array_Object'Class then ArrayUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.ArrayUtil_Package_References;

with org.allbinary.util.ArrayUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;

package org.allbinary.util.ArrayUtil_Package is

   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package Reference_Types is
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   use type MathUtil_Access;
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   use type MathUtil_Access_Array;
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   use type MathUtil_Access_Array_Access;
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   use type MathUtil_Access_Array_Access_Array;
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   use type MathUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ArrayUtil_Access is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access;
   function "=" (Left, Right : ArrayUtil_Access) return Boolean renames org.allbinary.util.ArrayUtil_Package_References."=";
   subtype ArrayUtil_Access_Array is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access_Array;
   function "=" (Left, Right : ArrayUtil_Access_Array) return Boolean renames org.allbinary.util.ArrayUtil_Package_References."=";
   subtype ArrayUtil_Access_Array_Access is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access_Array_Access;
   function "=" (Left, Right : ArrayUtil_Access_Array_Access) return Boolean renames org.allbinary.util.ArrayUtil_Package_References."=";
   function Java_Box (Value : ArrayUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.ArrayUtil_Package_References.Java_Box;
   function Java_Unbox_ArrayUtil_Access_Array (Value : access Java_Object'Class) return ArrayUtil_Access_Array_Access renames org.allbinary.util.ArrayUtil_Package_References.Java_Unbox_ArrayUtil_Access_Array;
   subtype ArrayUtil_Access_Array_Access_Array is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ArrayUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ArrayUtil_Package_References."=";
   subtype ArrayUtil_Access_Array_Access_Array_Access is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArrayUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ArrayUtil_Package_References."=";
   function Java_Box (Value : ArrayUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.ArrayUtil_Package_References.Java_Box;
   function Java_Unbox_ArrayUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ArrayUtil_Access_Array_Access_Array_Access renames org.allbinary.util.ArrayUtil_Package_References.Java_Unbox_ArrayUtil_Access_Array_Access_Array;

   type ArrayUtil is new Java_Object with record
      mathUtil : MathUtil_Access;
   end record;
   instance : ArrayUtil_Access;

   procedure Initialize (This : in out ArrayUtil'Class);
   function Create return ArrayUtil_Access;
   function getInstance return ArrayUtil_Access;
   function copyOf (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer) return Java_Object_Access_Array_Access;
   procedure copyOf (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer);
   function copyOfType (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer; newType : Ada.Tags.Tag) return Java_Object_Access_Array_Access;
   procedure copyOfType (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer; newType : Ada.Tags.Tag);
   function copyOfbyte (This : in out ArrayUtil; original : Short_Short_Integer_Array_Access; newLength : Integer) return Short_Short_Integer_Array_Access;
   procedure copyOfbyte (This : in out ArrayUtil; original : Short_Short_Integer_Array_Access; newLength : Integer);
   function copyOfshort (This : in out ArrayUtil; original : Short_Integer_Array_Access; newLength : Integer) return Short_Integer_Array_Access;
   procedure copyOfshort (This : in out ArrayUtil; original : Short_Integer_Array_Access; newLength : Integer);
   function copyOfint (This : in out ArrayUtil; original : Integer_Array_Access; newLength : Integer) return Integer_Array_Access;
   procedure copyOfint (This : in out ArrayUtil; original : Integer_Array_Access; newLength : Integer);
   function copyOflong (This : in out ArrayUtil; original : Long_Long_Integer_Array_Access; newLength : Integer) return Long_Long_Integer_Array_Access;
   procedure copyOflong (This : in out ArrayUtil; original : Long_Long_Integer_Array_Access; newLength : Integer);
   function copyOfchar (This : in out ArrayUtil; original : Character_Array_Access; newLength : Integer) return Character_Array_Access;
   procedure copyOfchar (This : in out ArrayUtil; original : Character_Array_Access; newLength : Integer);
   function copyOffloat (This : in out ArrayUtil; original : Float_Array_Access; newLength : Integer) return Float_Array_Access;
   procedure copyOffloat (This : in out ArrayUtil; original : Float_Array_Access; newLength : Integer);
   function copyOfdouble (This : in out ArrayUtil; original : Long_Float_Array_Access; newLength : Integer) return Long_Float_Array_Access;
   procedure copyOfdouble (This : in out ArrayUtil; original : Long_Float_Array_Access; newLength : Integer);
   function copyOfboolean (This : in out ArrayUtil; original : Boolean_Array_Access; newLength : Integer) return Boolean_Array_Access;
   procedure copyOfboolean (This : in out ArrayUtil; original : Boolean_Array_Access; newLength : Integer);
   procedure reverse_Id (This : in out ArrayUtil; intArray : Integer_Array_Access);
   procedure flip (This : in out ArrayUtil; intArray : Integer_Array_Access; width : Integer; height : Integer);
   function toStringFromTwoDimensionaArray (This : in out ArrayUtil; twoDimensionalIntArray : Integer_Array_Access_Array_Access) return Unbounded_String;
   procedure toStringFromTwoDimensionaArray (This : in out ArrayUtil; twoDimensionalIntArray : Integer_Array_Access_Array_Access);
   function toStringFromObjectArray (This : in out ArrayUtil; objectArray : Java_Object_Access_Array_Access) return Unbounded_String;
   procedure toStringFromObjectArray (This : in out ArrayUtil; objectArray : Java_Object_Access_Array_Access);
   function toStringFromByteArray (This : in out ArrayUtil; byteArray : Short_Short_Integer_Array_Access) return Unbounded_String;
   procedure toStringFromByteArray (This : in out ArrayUtil; byteArray : Short_Short_Integer_Array_Access);

end org.allbinary.util.ArrayUtil_Package;


