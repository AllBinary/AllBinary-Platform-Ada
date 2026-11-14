--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.animation.FixedPoint_Package;
package org.allbinary.animation.FixedPoint_Package_References is
   type FixedPoint_Access is access all org.allbinary.animation.FixedPoint_Package.FixedPoint'Class;
   type FixedPoint_Access_Array is array (Natural range <>) of FixedPoint_Access;
   type FixedPoint_Access_Array_Access is access all FixedPoint_Access_Array;
   type FixedPoint_Access_Array_Access_Array is array (Natural range <>) of FixedPoint_Access_Array_Access;
   type FixedPoint_Access_Array_Access_Array_Access is access all FixedPoint_Access_Array_Access_Array;
   type FixedPoint_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FixedPoint_Access_Array_Access;
   end record;
   function Java_Box (Value : FixedPoint_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FixedPoint_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FixedPoint_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FixedPoint_Access_Array_Access is (if Value /= null and then Value.all in FixedPoint_Access_Array_Object'Class then FixedPoint_Access_Array_Object'Class (Value.all).Value else null);
   type FixedPoint_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FixedPoint_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FixedPoint_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FixedPoint_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FixedPoint_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FixedPoint_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FixedPoint_Access_Array_Access_Array_Object'Class then FixedPoint_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.FixedPoint_Package_References;

with org.allbinary.animation.FixedPoint_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.FixedPoint_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FixedPoint_Access is org.allbinary.animation.FixedPoint_Package_References.FixedPoint_Access;
   function "=" (Left, Right : FixedPoint_Access) return Boolean renames org.allbinary.animation.FixedPoint_Package_References."=";
   subtype FixedPoint_Access_Array is org.allbinary.animation.FixedPoint_Package_References.FixedPoint_Access_Array;
   function "=" (Left, Right : FixedPoint_Access_Array) return Boolean renames org.allbinary.animation.FixedPoint_Package_References."=";
   subtype FixedPoint_Access_Array_Access is org.allbinary.animation.FixedPoint_Package_References.FixedPoint_Access_Array_Access;
   function "=" (Left, Right : FixedPoint_Access_Array_Access) return Boolean renames org.allbinary.animation.FixedPoint_Package_References."=";
   function Java_Box (Value : FixedPoint_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.FixedPoint_Package_References.Java_Box;
   function Java_Unbox_FixedPoint_Access_Array (Value : access Java_Object'Class) return FixedPoint_Access_Array_Access renames org.allbinary.animation.FixedPoint_Package_References.Java_Unbox_FixedPoint_Access_Array;
   subtype FixedPoint_Access_Array_Access_Array is org.allbinary.animation.FixedPoint_Package_References.FixedPoint_Access_Array_Access_Array;
   function "=" (Left, Right : FixedPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.FixedPoint_Package_References."=";
   subtype FixedPoint_Access_Array_Access_Array_Access is org.allbinary.animation.FixedPoint_Package_References.FixedPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FixedPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.FixedPoint_Package_References."=";
   function Java_Box (Value : FixedPoint_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.FixedPoint_Package_References.Java_Box;
   function Java_Unbox_FixedPoint_Access_Array_Access_Array (Value : access Java_Object'Class) return FixedPoint_Access_Array_Access_Array_Access renames org.allbinary.animation.FixedPoint_Package_References.Java_Unbox_FixedPoint_Access_Array_Access_Array;

   type FixedPoint is new Java_Object with record
      ONE : Integer;
   end record;
   instance : FixedPoint_Access;

   procedure Initialize (This : in out FixedPoint'Class);
   function Create return FixedPoint_Access;
   function getInstance return FixedPoint_Access;
   function toFixed (This : in out FixedPoint; val : Long_Float) return Integer;
   procedure toFixed (This : in out FixedPoint; val : Long_Float);
   function toFixed (This : in out FixedPoint; val : Float) return Integer;
   procedure toFixed (This : in out FixedPoint; val : Float);
   function mul (This : in out FixedPoint; a : Integer; b : Integer) return Integer;
   procedure mul (This : in out FixedPoint; a : Integer; b : Integer);
   function div (This : in out FixedPoint; a : Integer; b : Integer) return Integer;
   procedure div (This : in out FixedPoint; a : Integer; b : Integer);
   function toInt (This : in out FixedPoint; fixed : Integer) return Integer;
   procedure toInt (This : in out FixedPoint; fixed : Integer);

end org.allbinary.animation.FixedPoint_Package;


