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

limited with org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package;
package org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References is
   type BasicGravityConstantVelocityMovement_Access is access all org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package.BasicGravityConstantVelocityMovement'Class;
   type BasicGravityConstantVelocityMovement_Access_Array is array (Natural range <>) of BasicGravityConstantVelocityMovement_Access;
   type BasicGravityConstantVelocityMovement_Access_Array_Access is access all BasicGravityConstantVelocityMovement_Access_Array;
   type BasicGravityConstantVelocityMovement_Access_Array_Access_Array is array (Natural range <>) of BasicGravityConstantVelocityMovement_Access_Array_Access;
   type BasicGravityConstantVelocityMovement_Access_Array_Access_Array_Access is access all BasicGravityConstantVelocityMovement_Access_Array_Access_Array;
end org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References;

with org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References;
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
limited with org.allbinary.game.physics.acceleration.GravityUtil_Package;
with org.allbinary.game.physics.acceleration.GravityUtil_Package_References;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package GravityUtil_Package renames Standard.org.allbinary.game.physics.acceleration.GravityUtil_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
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
   subtype GravityUtil_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access;
   use type GravityUtil_Access;
   subtype GravityUtil_Access_Array is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array;
   use type GravityUtil_Access_Array;
   subtype GravityUtil_Access_Array_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access;
   use type GravityUtil_Access_Array_Access;
   subtype GravityUtil_Access_Array_Access_Array is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access_Array;
   use type GravityUtil_Access_Array_Access_Array;
   subtype GravityUtil_Access_Array_Access_Array_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access_Array_Access;
   use type GravityUtil_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicGravityConstantVelocityMovement_Access is org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References.BasicGravityConstantVelocityMovement_Access;
   function "=" (Left, Right : BasicGravityConstantVelocityMovement_Access) return Boolean renames org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References."=";
   subtype BasicGravityConstantVelocityMovement_Access_Array is org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References.BasicGravityConstantVelocityMovement_Access_Array;
   function "=" (Left, Right : BasicGravityConstantVelocityMovement_Access_Array) return Boolean renames org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References."=";
   subtype BasicGravityConstantVelocityMovement_Access_Array_Access is org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References.BasicGravityConstantVelocityMovement_Access_Array_Access;
   function "=" (Left, Right : BasicGravityConstantVelocityMovement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References."=";
   subtype BasicGravityConstantVelocityMovement_Access_Array_Access_Array is org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References.BasicGravityConstantVelocityMovement_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGravityConstantVelocityMovement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References."=";
   subtype BasicGravityConstantVelocityMovement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References.BasicGravityConstantVelocityMovement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGravityConstantVelocityMovement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package_References."=";

   type BasicGravityConstantVelocityMovement is new BasicConstantVelocityMovement with record
      gravityUtil : GravityUtil_Access;
   end record;

   procedure Initialize (This : in out BasicGravityConstantVelocityMovement'Class; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   function Create (speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) return BasicGravityConstantVelocityMovement_Access;
   procedure process (This : in out BasicGravityConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);

end org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package;


