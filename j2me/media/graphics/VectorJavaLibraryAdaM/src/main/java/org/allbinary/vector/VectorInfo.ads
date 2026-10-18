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

package org.allbinary.vector.VectorInfo_Package is


   type VectorInfo is tagged;
   type VectorInfo_Access is access all VectorInfo'Class;
   type VectorInfo_Access_Array is array (Natural range <>) of VectorInfo_Access;
   type VectorInfo_Access_Array_Access is access all VectorInfo_Access_Array;
   type VectorInfo_Access_Array_Access_Array is array (Natural range <>) of VectorInfo_Access_Array_Access;
   type VectorInfo_Access_Array_Access_Array_Access is access all VectorInfo_Access_Array_Access_Array;

   type VectorInfo is new Java_Object with record
      width : Integer;
      height : Integer;
      points : Integer_Array_Access_Array_Access;
      totalFrames : Integer;
   end record;

   procedure Initialize (This : in out VectorInfo'Class; width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; totalFrames : Integer);
   function Create (width : Integer; height : Integer; points : Integer_Array_Access_Array_Access; totalFrames : Integer) return VectorInfo_Access;
   function getWidth (This : in out VectorInfo) return Integer;
   procedure setWidth (This : in out VectorInfo; width : Integer);
   function getHeight (This : in out VectorInfo) return Integer;
   procedure setHeight (This : in out VectorInfo; height : Integer);
   function getPoints (This : in out VectorInfo) return Integer_Array_Access_Array_Access;
   procedure setPoints (This : in out VectorInfo; points : Integer_Array_Access_Array_Access);
   function getTotalFrames (This : in out VectorInfo) return Integer;
   procedure setTotalFrames (This : in out VectorInfo; totalFrames : Integer);

end org.allbinary.vector.VectorInfo_Package;


