--  Generated Code Do Not Modify

limited with org.allbinary.logic.math.permutations.IntPermutationVisitor_Package;
package org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References is
   type IntPermutationVisitor_Access is access all org.allbinary.logic.math.permutations.IntPermutationVisitor_Package.IntPermutationVisitor'Class;
   type IntPermutationVisitor_Access_Array is array (Natural range <>) of IntPermutationVisitor_Access;
   type IntPermutationVisitor_Access_Array_Access is access all IntPermutationVisitor_Access_Array;
   type IntPermutationVisitor_Access_Array_Access_Array is array (Natural range <>) of IntPermutationVisitor_Access_Array_Access;
   type IntPermutationVisitor_Access_Array_Access_Array_Access is access all IntPermutationVisitor_Access_Array_Access_Array;
end org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References;

with org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;

package org.allbinary.logic.math.permutations.IntPermutationVisitor_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype IntPermutationVisitor_Access is org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References.IntPermutationVisitor_Access;
   function "=" (Left, Right : IntPermutationVisitor_Access) return Boolean renames org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References."=";
   subtype IntPermutationVisitor_Access_Array is org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References.IntPermutationVisitor_Access_Array;
   function "=" (Left, Right : IntPermutationVisitor_Access_Array) return Boolean renames org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References."=";
   subtype IntPermutationVisitor_Access_Array_Access is org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References.IntPermutationVisitor_Access_Array_Access;
   function "=" (Left, Right : IntPermutationVisitor_Access_Array_Access) return Boolean renames org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References."=";
   subtype IntPermutationVisitor_Access_Array_Access_Array is org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References.IntPermutationVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : IntPermutationVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References."=";
   subtype IntPermutationVisitor_Access_Array_Access_Array_Access is org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References.IntPermutationVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IntPermutationVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.permutations.IntPermutationVisitor_Package_References."=";

   type IntPermutationVisitor is new Visitor with record
      data : Integer_Array_Access;
      stringBuilder : StringMaker_Access;
   end record;

   procedure Initialize (This : in out IntPermutationVisitor'Class; data : Integer_Array_Access);
   function Create (data : Integer_Array_Access) return IntPermutationVisitor_Access;
   function visit (This : in out IntPermutationVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out IntPermutationVisitor; anyType_Param : access Java_Object'Class);
   procedure print (This : in out IntPermutationVisitor; data : Integer_Array_Access);
   procedure print (This : in out IntPermutationVisitor; data : Integer_Array_Access; stringBuilder_Param : access StringMaker_Package.StringMaker'Class);
   function visit (This : in out IntPermutationVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out IntPermutationVisitor; Value : Unbounded_String);

end org.allbinary.logic.math.permutations.IntPermutationVisitor_Package;


