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

with AllBinary_Java;
limited with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;
package org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References is
   type BasicConstantVelocityMovement_Access is access all org.allbinary.physics.movement.BasicConstantVelocityMovement_Package.BasicConstantVelocityMovement'Class;
   type BasicConstantVelocityMovement_Access_Array is array (Natural range <>) of BasicConstantVelocityMovement_Access;
   type BasicConstantVelocityMovement_Access_Array_Access is access all BasicConstantVelocityMovement_Access_Array;
   type BasicConstantVelocityMovement_Access_Array_Access_Array is array (Natural range <>) of BasicConstantVelocityMovement_Access_Array_Access;
   type BasicConstantVelocityMovement_Access_Array_Access_Array_Access is access all BasicConstantVelocityMovement_Access_Array_Access_Array;
   type BasicConstantVelocityMovement_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicConstantVelocityMovement_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicConstantVelocityMovement_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicConstantVelocityMovement_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicConstantVelocityMovement_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicConstantVelocityMovement_Access_Array_Access is (if Value /= null and then Value.all in BasicConstantVelocityMovement_Access_Array_Object'Class then BasicConstantVelocityMovement_Access_Array_Object'Class (Value.all).Value else null);
   type BasicConstantVelocityMovement_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicConstantVelocityMovement_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicConstantVelocityMovement_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicConstantVelocityMovement_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicConstantVelocityMovement_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicConstantVelocityMovement_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicConstantVelocityMovement_Access_Array_Access_Array_Object'Class then BasicConstantVelocityMovement_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References;

with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References;
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
with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
limited with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;

package org.allbinary.physics.movement.BasicConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package VelocityInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package AxisMathVectorUtil_Package renames Standard.org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
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
   subtype AxisMathVectorUtil_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access;
   use type AxisMathVectorUtil_Access;
   subtype AxisMathVectorUtil_Access_Array is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array;
   use type AxisMathVectorUtil_Access_Array;
   subtype AxisMathVectorUtil_Access_Array_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access;
   use type AxisMathVectorUtil_Access_Array_Access;
   subtype AxisMathVectorUtil_Access_Array_Access_Array is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access_Array;
   use type AxisMathVectorUtil_Access_Array_Access_Array;
   subtype AxisMathVectorUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access_Array_Access;
   use type AxisMathVectorUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicConstantVelocityMovement_Access is org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.BasicConstantVelocityMovement_Access;
   function "=" (Left, Right : BasicConstantVelocityMovement_Access) return Boolean renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References."=";
   subtype BasicConstantVelocityMovement_Access_Array is org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.BasicConstantVelocityMovement_Access_Array;
   function "=" (Left, Right : BasicConstantVelocityMovement_Access_Array) return Boolean renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References."=";
   subtype BasicConstantVelocityMovement_Access_Array_Access is org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.BasicConstantVelocityMovement_Access_Array_Access;
   function "=" (Left, Right : BasicConstantVelocityMovement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References."=";
   function Java_Box (Value : BasicConstantVelocityMovement_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.Java_Box;
   function Java_Unbox_BasicConstantVelocityMovement_Access_Array (Value : access Java_Object'Class) return BasicConstantVelocityMovement_Access_Array_Access renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.Java_Unbox_BasicConstantVelocityMovement_Access_Array;
   subtype BasicConstantVelocityMovement_Access_Array_Access_Array is org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.BasicConstantVelocityMovement_Access_Array_Access_Array;
   function "=" (Left, Right : BasicConstantVelocityMovement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References."=";
   subtype BasicConstantVelocityMovement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.BasicConstantVelocityMovement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicConstantVelocityMovement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References."=";
   function Java_Box (Value : BasicConstantVelocityMovement_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.Java_Box;
   function Java_Unbox_BasicConstantVelocityMovement_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicConstantVelocityMovement_Access_Array_Access_Array_Access renames org.allbinary.physics.movement.BasicConstantVelocityMovement_Package_References.Java_Unbox_BasicConstantVelocityMovement_Access_Array_Access_Array;

   type BasicConstantVelocityMovement is new Movement_Package.Movement and VelocityInterfaceCompositeInterface with record
      velocityProperties : BasicVelocityProperties_Access;
      speedBasicDecimal : BasicDecimal_Access;
      axisMathVectorUtil : AxisMathVectorUtil_Access;
   end record;

   procedure Initialize (This : in out BasicConstantVelocityMovement'Class; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class);
   function Create (basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class) return BasicConstantVelocityMovement_Access;
   procedure init (This : in out BasicConstantVelocityMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer);
   procedure moveOutsideRadius (This : in out BasicConstantVelocityMovement; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure process (This : in out BasicConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);
   function toString (This : in out BasicConstantVelocityMovement) return Unbounded_String;
   procedure stop (This : in out BasicConstantVelocityMovement);
   function getVelocityProperties (This : in out BasicConstantVelocityMovement) return BasicVelocityProperties_Access;
   procedure setVelocityProperties (This : in out BasicConstantVelocityMovement; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class);
   procedure setSpeedBasicDecimal (This : in out BasicConstantVelocityMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   function getSpeedBasicDecimal (This : in out BasicConstantVelocityMovement) return BasicDecimal_Access;

end org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;


