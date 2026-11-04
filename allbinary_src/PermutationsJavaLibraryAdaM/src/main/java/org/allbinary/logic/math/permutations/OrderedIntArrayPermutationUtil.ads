-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2011 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify

limited with org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package;
package org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References is
   type OrderedIntArrayPermutationUtil_Access is access all org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package.OrderedIntArrayPermutationUtil'Class;
   type OrderedIntArrayPermutationUtil_Access_Array is array (Natural range <>) of OrderedIntArrayPermutationUtil_Access;
   type OrderedIntArrayPermutationUtil_Access_Array_Access is access all OrderedIntArrayPermutationUtil_Access_Array;
   type OrderedIntArrayPermutationUtil_Access_Array_Access_Array is array (Natural range <>) of OrderedIntArrayPermutationUtil_Access_Array_Access;
   type OrderedIntArrayPermutationUtil_Access_Array_Access_Array_Access is access all OrderedIntArrayPermutationUtil_Access_Array_Access_Array;
end org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References;

with org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;

package org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package is

   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OrderedIntArrayPermutationUtil_Access is org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References.OrderedIntArrayPermutationUtil_Access;
   function "=" (Left, Right : OrderedIntArrayPermutationUtil_Access) return Boolean renames org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References."=";
   subtype OrderedIntArrayPermutationUtil_Access_Array is org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References.OrderedIntArrayPermutationUtil_Access_Array;
   function "=" (Left, Right : OrderedIntArrayPermutationUtil_Access_Array) return Boolean renames org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References."=";
   subtype OrderedIntArrayPermutationUtil_Access_Array_Access is org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References.OrderedIntArrayPermutationUtil_Access_Array_Access;
   function "=" (Left, Right : OrderedIntArrayPermutationUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References."=";
   subtype OrderedIntArrayPermutationUtil_Access_Array_Access_Array is org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References.OrderedIntArrayPermutationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OrderedIntArrayPermutationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References."=";
   subtype OrderedIntArrayPermutationUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References.OrderedIntArrayPermutationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderedIntArrayPermutationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package_References."=";

   type OrderedIntArrayPermutationUtil is new Java_Object with record
      TOTAL_ITERATIONS_TABLE : Unbounded_String;
      FINISHED : Unbounded_String;
   end record;
   instance : OrderedIntArrayPermutationUtil_Access;

   procedure Initialize (This : in out OrderedIntArrayPermutationUtil'Class);
   function Create return OrderedIntArrayPermutationUtil_Access;
   function getInstance return OrderedIntArrayPermutationUtil_Access;
   procedure getNext (This : in out OrderedIntArrayPermutationUtil; data : Integer_Array_Access);
   procedure swap (This : in out OrderedIntArrayPermutationUtil; data : Integer_Array_Access; a : Integer; b : Integer);
   function factorial (This : in out OrderedIntArrayPermutationUtil; dataLength : Integer) return Long_Long_Integer;
   procedure factorial (This : in out OrderedIntArrayPermutationUtil; dataLength : Integer);
   procedure generate (This : in out OrderedIntArrayPermutationUtil; data : Integer_Array_Access; visitor_Param : access Visitor_Package.Visitor'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil_Package;


