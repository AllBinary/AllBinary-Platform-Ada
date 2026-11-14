--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package;
package org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References is
   type PreciseConstantVelocityMovement_Access is access all org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package.PreciseConstantVelocityMovement'Class;
   type PreciseConstantVelocityMovement_Access_Array is array (Natural range <>) of PreciseConstantVelocityMovement_Access;
   type PreciseConstantVelocityMovement_Access_Array_Access is access all PreciseConstantVelocityMovement_Access_Array;
   type PreciseConstantVelocityMovement_Access_Array_Access_Array is array (Natural range <>) of PreciseConstantVelocityMovement_Access_Array_Access;
   type PreciseConstantVelocityMovement_Access_Array_Access_Array_Access is access all PreciseConstantVelocityMovement_Access_Array_Access_Array;
   type PreciseConstantVelocityMovement_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreciseConstantVelocityMovement_Access_Array_Access;
   end record;
   function Java_Box (Value : PreciseConstantVelocityMovement_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreciseConstantVelocityMovement_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreciseConstantVelocityMovement_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreciseConstantVelocityMovement_Access_Array_Access is (if Value /= null and then Value.all in PreciseConstantVelocityMovement_Access_Array_Object'Class then PreciseConstantVelocityMovement_Access_Array_Object'Class (Value.all).Value else null);
   type PreciseConstantVelocityMovement_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreciseConstantVelocityMovement_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PreciseConstantVelocityMovement_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreciseConstantVelocityMovement_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreciseConstantVelocityMovement_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreciseConstantVelocityMovement_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PreciseConstantVelocityMovement_Access_Array_Access_Array_Object'Class then PreciseConstantVelocityMovement_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References;

with org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References;
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
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype PreciseConstantVelocityMovement_Access is org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.PreciseConstantVelocityMovement_Access;
   function "=" (Left, Right : PreciseConstantVelocityMovement_Access) return Boolean renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References."=";
   subtype PreciseConstantVelocityMovement_Access_Array is org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.PreciseConstantVelocityMovement_Access_Array;
   function "=" (Left, Right : PreciseConstantVelocityMovement_Access_Array) return Boolean renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References."=";
   subtype PreciseConstantVelocityMovement_Access_Array_Access is org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.PreciseConstantVelocityMovement_Access_Array_Access;
   function "=" (Left, Right : PreciseConstantVelocityMovement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References."=";
   function Java_Box (Value : PreciseConstantVelocityMovement_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.Java_Box;
   function Java_Unbox_PreciseConstantVelocityMovement_Access_Array (Value : access Java_Object'Class) return PreciseConstantVelocityMovement_Access_Array_Access renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.Java_Unbox_PreciseConstantVelocityMovement_Access_Array;
   subtype PreciseConstantVelocityMovement_Access_Array_Access_Array is org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.PreciseConstantVelocityMovement_Access_Array_Access_Array;
   function "=" (Left, Right : PreciseConstantVelocityMovement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References."=";
   subtype PreciseConstantVelocityMovement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.PreciseConstantVelocityMovement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreciseConstantVelocityMovement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References."=";
   function Java_Box (Value : PreciseConstantVelocityMovement_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.Java_Box;
   function Java_Unbox_PreciseConstantVelocityMovement_Access_Array_Access_Array (Value : access Java_Object'Class) return PreciseConstantVelocityMovement_Access_Array_Access_Array_Access renames org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package_References.Java_Unbox_PreciseConstantVelocityMovement_Access_Array_Access_Array;

   type PreciseConstantVelocityMovement is new BasicConstantVelocityMovement with record
      accumulatedX : Integer;
      accumulatedY : Integer;
      accumulatedZ : Integer;
      factorValue : Integer;
   end record;

   procedure Initialize (This : in out PreciseConstantVelocityMovement'Class; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class);
   function Create (basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class) return PreciseConstantVelocityMovement_Access;
   procedure init (This : in out PreciseConstantVelocityMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer);
   procedure process (This : in out PreciseConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);

end org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package;


