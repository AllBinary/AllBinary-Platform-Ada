--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.animation.PGUtil_Package;
package org.allbinary.animation.PGUtil_Package_References is
   type PGUtil_Access is access all org.allbinary.animation.PGUtil_Package.PGUtil'Class;
   type PGUtil_Access_Array is array (Natural range <>) of PGUtil_Access;
   type PGUtil_Access_Array_Access is access all PGUtil_Access_Array;
   type PGUtil_Access_Array_Access_Array is array (Natural range <>) of PGUtil_Access_Array_Access;
   type PGUtil_Access_Array_Access_Array_Access is access all PGUtil_Access_Array_Access_Array;
   type PGUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PGUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PGUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PGUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PGUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PGUtil_Access_Array_Access is (if Value /= null and then Value.all in PGUtil_Access_Array_Object'Class then PGUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PGUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PGUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PGUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PGUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PGUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PGUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PGUtil_Access_Array_Access_Array_Object'Class then PGUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.PGUtil_Package_References;

with org.allbinary.animation.PGUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.PGUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PGUtil_Access is org.allbinary.animation.PGUtil_Package_References.PGUtil_Access;
   function "=" (Left, Right : PGUtil_Access) return Boolean renames org.allbinary.animation.PGUtil_Package_References."=";
   subtype PGUtil_Access_Array is org.allbinary.animation.PGUtil_Package_References.PGUtil_Access_Array;
   function "=" (Left, Right : PGUtil_Access_Array) return Boolean renames org.allbinary.animation.PGUtil_Package_References."=";
   subtype PGUtil_Access_Array_Access is org.allbinary.animation.PGUtil_Package_References.PGUtil_Access_Array_Access;
   function "=" (Left, Right : PGUtil_Access_Array_Access) return Boolean renames org.allbinary.animation.PGUtil_Package_References."=";
   function Java_Box (Value : PGUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.PGUtil_Package_References.Java_Box;
   function Java_Unbox_PGUtil_Access_Array (Value : access Java_Object'Class) return PGUtil_Access_Array_Access renames org.allbinary.animation.PGUtil_Package_References.Java_Unbox_PGUtil_Access_Array;
   subtype PGUtil_Access_Array_Access_Array is org.allbinary.animation.PGUtil_Package_References.PGUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PGUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.PGUtil_Package_References."=";
   subtype PGUtil_Access_Array_Access_Array_Access is org.allbinary.animation.PGUtil_Package_References.PGUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PGUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.PGUtil_Package_References."=";
   function Java_Box (Value : PGUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.PGUtil_Package_References.Java_Box;
   function Java_Unbox_PGUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PGUtil_Access_Array_Access_Array_Access renames org.allbinary.animation.PGUtil_Package_References.Java_Unbox_PGUtil_Access_Array_Access_Array;

   type PGUtil is new Java_Object with null record;
   instance : PGUtil_Access;

   procedure Initialize (This : in out PGUtil'Class);
   function Create return PGUtil_Access;
   function getInstance return PGUtil_Access;
   procedure flattenCubicBezier (This : in out PGUtil; x0 : Integer; y0 : Integer; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer; x3 : Integer; y3 : Integer; outX : Integer_Array_Access; outY : Integer_Array_Access; count : Integer_Array_Access; maxPoints : Integer);

end org.allbinary.animation.PGUtil_Package;


