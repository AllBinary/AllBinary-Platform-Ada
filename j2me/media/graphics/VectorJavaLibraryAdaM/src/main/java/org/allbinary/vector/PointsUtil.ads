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

package org.allbinary.vector.PointsUtil_Package is


   type PointsUtil is tagged;
   type PointsUtil_Access is access all PointsUtil'Class;
   type PointsUtil_Access_Array is array (Natural range <>) of PointsUtil_Access;
   type PointsUtil_Access_Array_Access is access all PointsUtil_Access_Array;
   type PointsUtil_Access_Array_Access_Array is array (Natural range <>) of PointsUtil_Access_Array_Access;
   type PointsUtil_Access_Array_Access_Array_Access is access all PointsUtil_Access_Array_Access_Array;

   type PointsUtil is new Java_Object with null record;
   instance : PointsUtil_Access;

   procedure Initialize (This : in out PointsUtil'Class);
   function Create return PointsUtil_Access;
   function getInstance return PointsUtil_Access;
   function adjustXY (This : in out PointsUtil; points : Integer_Array_Access_Array_Access_Array_Access; x : Integer; y : Integer) return Integer_Array_Access_Array_Access_Array_Access;
   procedure adjustXY (This : in out PointsUtil; points : Integer_Array_Access_Array_Access_Array_Access; x : Integer; y : Integer);
   function adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; both : Integer) return Integer_Array_Access_Array_Access;
   procedure adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; both : Integer);
   function adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; x : Integer; y : Integer) return Integer_Array_Access_Array_Access;
   procedure adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; x : Integer; y : Integer);

end org.allbinary.vector.PointsUtil_Package;


