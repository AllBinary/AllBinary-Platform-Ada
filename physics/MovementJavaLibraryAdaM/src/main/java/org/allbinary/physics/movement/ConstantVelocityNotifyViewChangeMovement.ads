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
limited with org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package;
package org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References is
   type ConstantVelocityNotifyViewChangeMovement_Access is access all org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package.ConstantVelocityNotifyViewChangeMovement'Class;
   type ConstantVelocityNotifyViewChangeMovement_Access_Array is array (Natural range <>) of ConstantVelocityNotifyViewChangeMovement_Access;
   type ConstantVelocityNotifyViewChangeMovement_Access_Array_Access is access all ConstantVelocityNotifyViewChangeMovement_Access_Array;
   type ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array is array (Natural range <>) of ConstantVelocityNotifyViewChangeMovement_Access_Array_Access;
   type ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access is access all ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array;
   type ConstantVelocityNotifyViewChangeMovement_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access;
   end record;
   function Java_Box (Value : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ConstantVelocityNotifyViewChangeMovement_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ConstantVelocityNotifyViewChangeMovement_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ConstantVelocityNotifyViewChangeMovement_Access_Array_Access is (if Value /= null and then Value.all in ConstantVelocityNotifyViewChangeMovement_Access_Array_Object'Class then ConstantVelocityNotifyViewChangeMovement_Access_Array_Object'Class (Value.all).Value else null);
   type ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Object'Class then ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References;

with org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
limited with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;

package org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
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


   subtype ConstantVelocityNotifyViewChangeMovement_Access is org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.ConstantVelocityNotifyViewChangeMovement_Access;
   function "=" (Left, Right : ConstantVelocityNotifyViewChangeMovement_Access) return Boolean renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References."=";
   subtype ConstantVelocityNotifyViewChangeMovement_Access_Array is org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.ConstantVelocityNotifyViewChangeMovement_Access_Array;
   function "=" (Left, Right : ConstantVelocityNotifyViewChangeMovement_Access_Array) return Boolean renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References."=";
   subtype ConstantVelocityNotifyViewChangeMovement_Access_Array_Access is org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.ConstantVelocityNotifyViewChangeMovement_Access_Array_Access;
   function "=" (Left, Right : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References."=";
   function Java_Box (Value : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.Java_Box;
   function Java_Unbox_ConstantVelocityNotifyViewChangeMovement_Access_Array (Value : access Java_Object'Class) return ConstantVelocityNotifyViewChangeMovement_Access_Array_Access renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.Java_Unbox_ConstantVelocityNotifyViewChangeMovement_Access_Array;
   subtype ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array is org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array;
   function "=" (Left, Right : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References."=";
   subtype ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References."=";
   function Java_Box (Value : ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.Java_Box;
   function Java_Unbox_ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array (Value : access Java_Object'Class) return ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array_Access renames org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package_References.Java_Unbox_ConstantVelocityNotifyViewChangeMovement_Access_Array_Access_Array;

   type ConstantVelocityNotifyViewChangeMovement is new Movement_Package.Movement with record
      basicVelocityProperties : BasicVelocityProperties_Access;
      speedBasicDecimal : BasicDecimal_Access;
      axisMathVectorUtil : AxisMathVectorUtil_Access;
   end record;

   procedure Initialize (This : in out ConstantVelocityNotifyViewChangeMovement'Class);
   function Create return ConstantVelocityNotifyViewChangeMovement_Access;
   procedure init (This : in out ConstantVelocityNotifyViewChangeMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer);
   procedure moveOutsideRadius (This : in out ConstantVelocityNotifyViewChangeMovement; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure process (This : in out ConstantVelocityNotifyViewChangeMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);
   procedure stop (This : in out ConstantVelocityNotifyViewChangeMovement);

end org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package;


