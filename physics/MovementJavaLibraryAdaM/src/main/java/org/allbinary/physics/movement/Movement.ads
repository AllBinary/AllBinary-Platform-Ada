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
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.physics.movement.MovementInterface_Package; use org.allbinary.physics.movement.MovementInterface_Package;

package org.allbinary.physics.movement.Movement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;

   type Movement is tagged;
   type Movement_Access is access all Movement'Class;
   type Movement_Access_Array is array (Natural range <>) of Movement_Access;
   type Movement_Access_Array_Access is access all Movement_Access_Array;

   type Movement is new MovementInterface with null record;

   procedure Initialize (This : in out Movement'Class);
   function Create return Movement_Access;
   procedure init (This : in out Movement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer);
   procedure process (This : in out Movement; layer : AllBinaryGameLayer_Access);
   procedure stop (This : in out Movement);

end org.allbinary.physics.movement.Movement_Package;


