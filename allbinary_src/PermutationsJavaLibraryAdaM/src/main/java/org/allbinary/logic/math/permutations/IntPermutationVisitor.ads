--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.math.permutations.IntPermutationVisitor_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package Visitor_Package renames org.allbinary.logic.util.visitor.Visitor_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type IntPermutationVisitor is tagged;
   type IntPermutationVisitor_Access is access all IntPermutationVisitor'Class;
   type IntPermutationVisitor_Access_Array is array (Natural range <>) of IntPermutationVisitor_Access;
   type IntPermutationVisitor_Access_Array_Access is access all IntPermutationVisitor_Access_Array;

   type IntPermutationVisitor is new Visitor with record
      data : Integer_Array_Access;
      stringBuilder : StringMaker_Access;
   end record;

   procedure Initialize (This : in out IntPermutationVisitor'Class; data : Integer_Array_Access);
   function Create (data : Integer_Array_Access) return IntPermutationVisitor_Access;
   function visit (This : in out IntPermutationVisitor; anyType : Java_Object_Access) return Java_Object_Access;
   procedure visit (This : in out IntPermutationVisitor; anyType : Java_Object_Access);
   procedure print (This : in out IntPermutationVisitor; data : Integer_Array_Access);
   procedure print (This : in out IntPermutationVisitor; data : Integer_Array_Access; stringBuilder : StringMaker_Access);

end org.allbinary.logic.math.permutations.IntPermutationVisitor_Package;


