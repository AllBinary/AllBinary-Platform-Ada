--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.animation.PathParser_Package;
package org.allbinary.animation.PathParser_Package_References is
   type PathParser_Access is access all org.allbinary.animation.PathParser_Package.PathParser'Class;
   type PathParser_Access_Array is array (Natural range <>) of PathParser_Access;
   type PathParser_Access_Array_Access is access all PathParser_Access_Array;
   type PathParser_Access_Array_Access_Array is array (Natural range <>) of PathParser_Access_Array_Access;
   type PathParser_Access_Array_Access_Array_Access is access all PathParser_Access_Array_Access_Array;
   type PathParser_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathParser_Access_Array_Access;
   end record;
   function Java_Box (Value : PathParser_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathParser_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathParser_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathParser_Access_Array_Access is (if Value /= null and then Value.all in PathParser_Access_Array_Object'Class then PathParser_Access_Array_Object'Class (Value.all).Value else null);
   type PathParser_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathParser_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathParser_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathParser_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathParser_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathParser_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathParser_Access_Array_Access_Array_Object'Class then PathParser_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.PathParser_Package_References;

with org.allbinary.animation.PathParser_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.PathParser_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PathParser_Access is org.allbinary.animation.PathParser_Package_References.PathParser_Access;
   function "=" (Left, Right : PathParser_Access) return Boolean renames org.allbinary.animation.PathParser_Package_References."=";
   subtype PathParser_Access_Array is org.allbinary.animation.PathParser_Package_References.PathParser_Access_Array;
   function "=" (Left, Right : PathParser_Access_Array) return Boolean renames org.allbinary.animation.PathParser_Package_References."=";
   subtype PathParser_Access_Array_Access is org.allbinary.animation.PathParser_Package_References.PathParser_Access_Array_Access;
   function "=" (Left, Right : PathParser_Access_Array_Access) return Boolean renames org.allbinary.animation.PathParser_Package_References."=";
   function Java_Box (Value : PathParser_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.PathParser_Package_References.Java_Box;
   function Java_Unbox_PathParser_Access_Array (Value : access Java_Object'Class) return PathParser_Access_Array_Access renames org.allbinary.animation.PathParser_Package_References.Java_Unbox_PathParser_Access_Array;
   subtype PathParser_Access_Array_Access_Array is org.allbinary.animation.PathParser_Package_References.PathParser_Access_Array_Access_Array;
   function "=" (Left, Right : PathParser_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.PathParser_Package_References."=";
   subtype PathParser_Access_Array_Access_Array_Access is org.allbinary.animation.PathParser_Package_References.PathParser_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathParser_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.PathParser_Package_References."=";
   function Java_Box (Value : PathParser_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.PathParser_Package_References.Java_Box;
   function Java_Unbox_PathParser_Access_Array_Access_Array (Value : access Java_Object'Class) return PathParser_Access_Array_Access_Array_Access renames org.allbinary.animation.PathParser_Package_References.Java_Unbox_PathParser_Access_Array_Access_Array;

   type PathParser is new Java_Object with null record;

   procedure Initialize (This : in out PathParser'Class);
   function Create return PathParser_Access;
   function tokenize (d : Unbounded_String) return Unbounded_String_Array_Access;
   procedure tokenize (d : Unbounded_String);
   function parsePath (d : Unbounded_String; outX : Integer_Array_Access; outY : Integer_Array_Access; maxPoints : Integer) return Integer;
   procedure parsePath (d : Unbounded_String; outX : Integer_Array_Access; outY : Integer_Array_Access; maxPoints : Integer);
   function isCommand (tok : Unbounded_String) return Boolean;
   procedure isCommand (tok : Unbounded_String);

end org.allbinary.animation.PathParser_Package;


