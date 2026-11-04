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

limited with org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package;
package org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References is
   type DelayedConstantVelocityMovement_Access is access all org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package.DelayedConstantVelocityMovement'Class;
   type DelayedConstantVelocityMovement_Access_Array is array (Natural range <>) of DelayedConstantVelocityMovement_Access;
   type DelayedConstantVelocityMovement_Access_Array_Access is access all DelayedConstantVelocityMovement_Access_Array;
   type DelayedConstantVelocityMovement_Access_Array_Access_Array is array (Natural range <>) of DelayedConstantVelocityMovement_Access_Array_Access;
   type DelayedConstantVelocityMovement_Access_Array_Access_Array_Access is access all DelayedConstantVelocityMovement_Access_Array_Access_Array;
end org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References;

with org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package_References;
limited with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype AllBinaryGameLayer_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access;
   use type AllBinaryGameLayer_Access;
   subtype AllBinaryGameLayer_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array;
   use type AllBinaryGameLayer_Access_Array;
   subtype AllBinaryGameLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access;
   use type AllBinaryGameLayer_Access_Array_Access;
   subtype AllBinaryGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array;
   use type AllBinaryGameLayer_Access_Array_Access_Array;
   subtype AllBinaryGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayer_Access_Array_Access_Array_Access;
   subtype BasicVelocityProperties_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access;
   use type BasicVelocityProperties_Access;
   subtype BasicVelocityProperties_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array;
   use type BasicVelocityProperties_Access_Array;
   subtype BasicVelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access;
   use type BasicVelocityProperties_Access_Array_Access;
   subtype BasicVelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array;
   use type BasicVelocityProperties_Access_Array_Access_Array;
   subtype BasicVelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array_Access;
   use type BasicVelocityProperties_Access_Array_Access_Array_Access;
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DelayedConstantVelocityMovement_Access is org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References.DelayedConstantVelocityMovement_Access;
   function "=" (Left, Right : DelayedConstantVelocityMovement_Access) return Boolean renames org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References."=";
   subtype DelayedConstantVelocityMovement_Access_Array is org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References.DelayedConstantVelocityMovement_Access_Array;
   function "=" (Left, Right : DelayedConstantVelocityMovement_Access_Array) return Boolean renames org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References."=";
   subtype DelayedConstantVelocityMovement_Access_Array_Access is org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References.DelayedConstantVelocityMovement_Access_Array_Access;
   function "=" (Left, Right : DelayedConstantVelocityMovement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References."=";
   subtype DelayedConstantVelocityMovement_Access_Array_Access_Array is org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References.DelayedConstantVelocityMovement_Access_Array_Access_Array;
   function "=" (Left, Right : DelayedConstantVelocityMovement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References."=";
   subtype DelayedConstantVelocityMovement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References.DelayedConstantVelocityMovement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DelayedConstantVelocityMovement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package_References."=";

   type DelayedConstantVelocityMovement is new BasicConstantVelocityMovement with record
      timeDelayHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out DelayedConstantVelocityMovement'Class; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class);
   function Create (basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class) return DelayedConstantVelocityMovement_Access;
   procedure init (This : in out DelayedConstantVelocityMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer);
   procedure process (This : in out DelayedConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);

end org.allbinary.physics.movement.DelayedConstantVelocityMovement_Package;


