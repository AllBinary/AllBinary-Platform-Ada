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

package org.allbinary.physics.movement.MovementCompositeInterface_Package is


   type MovementCompositeInterface is interface;
   type MovementCompositeInterface_Access is access all MovementCompositeInterface'Class;
   type MovementCompositeInterface_Access_Array is array (Natural range <>) of MovementCompositeInterface_Access;
   type MovementCompositeInterface_Access_Array_Access is access all MovementCompositeInterface_Access_Array;
   type MovementCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of MovementCompositeInterface_Access_Array_Access;
   type MovementCompositeInterface_Access_Array_Access_Array_Access is access all MovementCompositeInterface_Access_Array_Access_Array;
   function getMovement (This : in out MovementCompositeInterface) return Movement_Access is abstract;

end org.allbinary.physics.movement.MovementCompositeInterface_Package;


