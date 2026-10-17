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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.animation.VectorAnimationUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type VectorAnimationUtil is tagged;
   type VectorAnimationUtil_Access is access all VectorAnimationUtil'Class;
   type VectorAnimationUtil_Access_Array is array (Natural range <>) of VectorAnimationUtil_Access;
   type VectorAnimationUtil_Access_Array_Access is access all VectorAnimationUtil_Access_Array;

   type VectorAnimationUtil is new Java_Object with null record;
   instance : VectorAnimationUtil_Access;

   procedure Initialize (This : in out VectorAnimationUtil'Class);
   function Create return VectorAnimationUtil_Access;
   function getInstance return VectorAnimationUtil_Access;
   function toAnimationArrayFromListOfPointListWithPointsPerFrame (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList'Class; pointsPerFrame : Integer) return Integer_Array_Access_Array_Access_Array_Access;
   procedure toAnimationArrayFromListOfPointListWithPointsPerFrame (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList'Class; pointsPerFrame : Integer);
   function toAnimationArrayFromListOfPointList (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList'Class) return Integer_Array_Access_Array_Access_Array_Access;
   procedure toAnimationArrayFromListOfPointList (This : in out VectorAnimationUtil; vector_Param : access BasicArrayList'Class);
   function toFrameArrayFromPointBasicArrayList (This : in out VectorAnimationUtil; list_Param : access BasicArrayList'Class) return Integer_Array_Access_Array_Access;
   procedure toFrameArrayFromPointBasicArrayList (This : in out VectorAnimationUtil; list_Param : access BasicArrayList'Class);

end org.allbinary.animation.VectorAnimationUtil_Package;


