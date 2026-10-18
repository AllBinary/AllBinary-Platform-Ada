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
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;

package org.allbinary.physics.movement.NoMovementFactory_Package is


   type NoMovementFactory is tagged;
   type NoMovementFactory_Access is access all NoMovementFactory'Class;
   type NoMovementFactory_Access_Array is array (Natural range <>) of NoMovementFactory_Access;
   type NoMovementFactory_Access_Array_Access is access all NoMovementFactory_Access_Array;
   type NoMovementFactory_Access_Array_Access_Array is array (Natural range <>) of NoMovementFactory_Access_Array_Access;
   type NoMovementFactory_Access_Array_Access_Array_Access is access all NoMovementFactory_Access_Array_Access_Array;

   type NoMovementFactory is new Java_Object with record
      movement : Movement_Access;
   end record;
   instance : NoMovementFactory_Access;

   procedure Initialize (This : in out NoMovementFactory'Class);
   function Create return NoMovementFactory_Access;
   function getInstance return NoMovementFactory_Access;
   function getMovmentInstance (This : in out NoMovementFactory) return Movement_Access;

end org.allbinary.physics.movement.NoMovementFactory_Package;


