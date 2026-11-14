--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
package org.allbinary.logic.string_Id.StringMaker_Package_References is
   type StringMaker_Access is access all org.allbinary.logic.string_Id.StringMaker_Package.StringMaker'Class;
   type StringMaker_Access_Array is array (Natural range <>) of StringMaker_Access;
   type StringMaker_Access_Array_Access is access all StringMaker_Access_Array;
   type StringMaker_Access_Array_Access_Array is array (Natural range <>) of StringMaker_Access_Array_Access;
   type StringMaker_Access_Array_Access_Array_Access is access all StringMaker_Access_Array_Access_Array;
   type StringMaker_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StringMaker_Access_Array_Access;
   end record;
   function Java_Box (Value : StringMaker_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StringMaker_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StringMaker_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StringMaker_Access_Array_Access is (if Value /= null and then Value.all in StringMaker_Access_Array_Object'Class then StringMaker_Access_Array_Object'Class (Value.all).Value else null);
   type StringMaker_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StringMaker_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StringMaker_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StringMaker_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StringMaker_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StringMaker_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StringMaker_Access_Array_Access_Array_Object'Class then StringMaker_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.string_Id.StringMaker_Package_References;

with org.allbinary.logic.string_Id.StringMaker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.string_Id.StringMaker_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   function "=" (Left, Right : StringMaker_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   function Java_Box (Value : StringMaker_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.string_Id.StringMaker_Package_References.Java_Box;
   function Java_Unbox_StringMaker_Access_Array (Value : access Java_Object'Class) return StringMaker_Access_Array_Access renames org.allbinary.logic.string_Id.StringMaker_Package_References.Java_Unbox_StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   function Java_Box (Value : StringMaker_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.string_Id.StringMaker_Package_References.Java_Box;
   function Java_Unbox_StringMaker_Access_Array_Access_Array (Value : access Java_Object'Class) return StringMaker_Access_Array_Access_Array_Access renames org.allbinary.logic.string_Id.StringMaker_Package_References.Java_Unbox_StringMaker_Access_Array_Access_Array;

   type StringMaker is new Java_Object with record
      charArray : Character_Array_Access;
      currentLength : Integer;
   end record;

   procedure Initialize (This : in out StringMaker'Class);
   function Create return StringMaker_Access;
   function append (This : in out StringMaker; string_Id : Unbounded_String) return StringMaker_Access;
   procedure append (This : in out StringMaker; string_Id : Unbounded_String);
   function appendchar (This : in out StringMaker; c : Character) return StringMaker_Access;
   procedure appendchar (This : in out StringMaker; c : Character);
   function appendCharArray (This : in out StringMaker; charArray : Character_Array_Access; start : Integer; end_Id : Integer) return StringMaker_Access;
   procedure appendCharArray (This : in out StringMaker; charArray : Character_Array_Access; start : Integer; end_Id : Integer);
   function appendbyte (This : in out StringMaker; b : Short_Short_Integer) return StringMaker_Access;
   procedure appendbyte (This : in out StringMaker; b : Short_Short_Integer);
   function appendshort (This : in out StringMaker; b : Short_Integer) return StringMaker_Access;
   procedure appendshort (This : in out StringMaker; b : Short_Integer);
   function appendint (This : in out StringMaker; i : Integer) return StringMaker_Access;
   procedure appendint (This : in out StringMaker; i : Integer);
   function appendlong (This : in out StringMaker; l : Long_Long_Integer) return StringMaker_Access;
   procedure appendlong (This : in out StringMaker; l : Long_Long_Integer);
   function appendfloat (This : in out StringMaker; f : Float) return StringMaker_Access;
   procedure appendfloat (This : in out StringMaker; f : Float);
   function appendboolean (This : in out StringMaker; bool : Boolean) return StringMaker_Access;
   procedure appendboolean (This : in out StringMaker; bool : Boolean);
   procedure ensureCapacity (This : in out StringMaker; minSize : Integer);
   function min (This : in out StringMaker; value : Integer; value2 : Integer) return Integer;
   procedure min (This : in out StringMaker; value : Integer; value2 : Integer);
   function delete (This : in out StringMaker; start : Integer; end_Id : Integer) return StringMaker_Access;
   procedure delete (This : in out StringMaker; start : Integer; end_Id : Integer);
   function length (This : in out StringMaker) return Integer;
   function toString (This : in out StringMaker) return Unbounded_String;

end org.allbinary.logic.string_Id.StringMaker_Package;


