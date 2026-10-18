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

package org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package is


   type BasicAccelerationProperties is tagged;
   type BasicAccelerationProperties_Access is access all BasicAccelerationProperties'Class;
   type BasicAccelerationProperties_Access_Array is array (Natural range <>) of BasicAccelerationProperties_Access;
   type BasicAccelerationProperties_Access_Array_Access is access all BasicAccelerationProperties_Access_Array;
   type BasicAccelerationProperties_Access_Array_Access_Array is array (Natural range <>) of BasicAccelerationProperties_Access_Array_Access;
   type BasicAccelerationProperties_Access_Array_Access_Array_Access is access all BasicAccelerationProperties_Access_Array_Access_Array;

   type BasicAccelerationProperties is new Java_Object with record
      forward : Integer;
      reverse_Id : Integer;
   end record;

   procedure Initialize (This : in out BasicAccelerationProperties'Class; forward : Integer; reverse_Id : Integer);
   function Create (forward : Integer; reverse_Id : Integer) return BasicAccelerationProperties_Access;
   procedure setReverse (This : in out BasicAccelerationProperties; reverse_Id : Integer);
   function getReverse (This : in out BasicAccelerationProperties) return Integer;
   procedure setForward (This : in out BasicAccelerationProperties; forward : Integer);
   function getForward (This : in out BasicAccelerationProperties) return Integer;

end org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package;


