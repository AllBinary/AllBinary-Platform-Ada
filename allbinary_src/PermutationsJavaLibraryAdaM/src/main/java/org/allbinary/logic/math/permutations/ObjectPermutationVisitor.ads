--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type ObjectPermutationVisitor is tagged;
   type ObjectPermutationVisitor_Access is access all ObjectPermutationVisitor'Class;
   type ObjectPermutationVisitor_Access_Array is array (Natural range <>) of ObjectPermutationVisitor_Access;
   type ObjectPermutationVisitor_Access_Array_Access is access all ObjectPermutationVisitor_Access_Array;

   type ObjectPermutationVisitor is new Visitor with record
      data : Java_Object_Access_Array_Access;
      stringBuilder : StringMaker_Access;
   end record;

   procedure Initialize (This : in out ObjectPermutationVisitor'Class; data : Java_Object_Access_Array_Access);
   function Create (data : Java_Object_Access_Array_Access) return ObjectPermutationVisitor_Access;
   function visit (This : in out ObjectPermutationVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out ObjectPermutationVisitor; anyType_Param : access Java_Object'Class);
   procedure print (This : in out ObjectPermutationVisitor; data : Java_Object_Access_Array_Access);
   procedure print (This : in out ObjectPermutationVisitor; data : Java_Object_Access_Array_Access; stringBuilder_Param : access StringMaker_Package.StringMaker'Class);

end org.allbinary.logic.math.permutations.ObjectPermutationVisitor_Package;


