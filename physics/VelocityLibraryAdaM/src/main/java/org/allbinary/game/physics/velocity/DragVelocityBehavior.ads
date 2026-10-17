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
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package; use org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package;

package org.allbinary.game.physics.velocity.DragVelocityBehavior_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;

   type DragVelocityBehavior is tagged;
   type DragVelocityBehavior_Access is access all DragVelocityBehavior'Class;
   type DragVelocityBehavior_Access_Array is array (Natural range <>) of DragVelocityBehavior_Access;
   type DragVelocityBehavior_Access_Array_Access is access all DragVelocityBehavior_Access_Array;

   type DragVelocityBehavior is new VelocityBehaviorBase with null record;
   instance : DragVelocityBehavior_Access;

   procedure Initialize (This : in out DragVelocityBehavior'Class);
   function Create return DragVelocityBehavior_Access;
   procedure reduce (This : in out DragVelocityBehavior; velocityProperties : BasicVelocityProperties_Access; nominator : Integer; denominator : Integer);
   procedure reduceX (This : in out DragVelocityBehavior; velocityProperties : BasicVelocityProperties_Access; nominator : Integer; denominator : Integer);
   procedure reduceY (This : in out DragVelocityBehavior; velocityProperties : BasicVelocityProperties_Access; nominator : Integer; denominator : Integer);

end org.allbinary.game.physics.velocity.DragVelocityBehavior_Package;


