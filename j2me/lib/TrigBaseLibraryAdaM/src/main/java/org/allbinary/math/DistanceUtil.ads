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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;

package org.allbinary.math.DistanceUtil_Package is

   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;

   type DistanceUtil is tagged;
   type DistanceUtil_Access is access all DistanceUtil'Class;
   type DistanceUtil_Access_Array is array (Natural range <>) of DistanceUtil_Access;
   type DistanceUtil_Access_Array_Access is access all DistanceUtil_Access_Array;

   type DistanceUtil is new Java_Object with record
      mathUtil : MathUtil_Access;
   end record;
   instance : DistanceUtil_Access;

   procedure Initialize (This : in out DistanceUtil'Class);
   function Create return DistanceUtil_Access;
   function getInstance return DistanceUtil_Access;
   procedure getInstance;
   function getDistance (This : in out DistanceUtil; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer) return Integer;
   procedure getDistance (This : in out DistanceUtil; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer);

end org.allbinary.math.DistanceUtil_Package;


