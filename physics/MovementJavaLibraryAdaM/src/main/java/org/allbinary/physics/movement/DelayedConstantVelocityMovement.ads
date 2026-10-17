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
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package BasicDecimal_Package renames org.allbinary.logic.math.BasicDecimal_Package;
   package GameTickTimeDelayHelperFactory_Package renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames org.allbinary.time.TimeDelayHelper_Package;

   type DelayedConstantVelocityMovement is tagged;
   type DelayedConstantVelocityMovement_Access is access all DelayedConstantVelocityMovement'Class;
   type DelayedConstantVelocityMovement_Access_Array is array (Natural range <>) of DelayedConstantVelocityMovement_Access;
   type DelayedConstantVelocityMovement_Access_Array_Access is access all DelayedConstantVelocityMovement_Access_Array;

   type DelayedConstantVelocityMovement is new BasicConstantVelocityMovement with record
      timeDelayHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out DelayedConstantVelocityMovement'Class; basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access);
   function Create (basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) return DelayedConstantVelocityMovement_Access;
   procedure init (This : in out DelayedConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer);
   procedure process (This : in out DelayedConstantVelocityMovement; layer : AllBinaryGameLayer_Access);

end org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package;


