--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.PGUtil_Package is


   type PGUtil is tagged;
   type PGUtil_Access is access all PGUtil'Class;
   type PGUtil_Access_Array is array (Natural range <>) of PGUtil_Access;
   type PGUtil_Access_Array_Access is access all PGUtil_Access_Array;
   type PGUtil_Access_Array_Access_Array is array (Natural range <>) of PGUtil_Access_Array_Access;
   type PGUtil_Access_Array_Access_Array_Access is access all PGUtil_Access_Array_Access_Array;

   type PGUtil is new Java_Object with null record;
   instance : PGUtil_Access;

   procedure Initialize (This : in out PGUtil'Class);
   function Create return PGUtil_Access;
   function getInstance return PGUtil_Access;
   procedure flattenCubicBezier (This : in out PGUtil; x0 : Integer; y0 : Integer; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer; x3 : Integer; y3 : Integer; outX : Integer_Array_Access; outY : Integer_Array_Access; count : Integer_Array_Access; maxPoints : Integer);

end org.allbinary.animation.PGUtil_Package;


