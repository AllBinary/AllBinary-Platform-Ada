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
limited with org.allbinary.physics.movement.OscillateVelocityMovement_Package;
package org.allbinary.physics.movement.OscillateVelocityMovement_Package_References is
   type OscillateVelocityMovement_Access is access all org.allbinary.physics.movement.OscillateVelocityMovement_Package.OscillateVelocityMovement'Class;
   type OscillateVelocityMovement_Access_Array is array (Natural range <>) of OscillateVelocityMovement_Access;
   type OscillateVelocityMovement_Access_Array_Access is access all OscillateVelocityMovement_Access_Array;
   type OscillateVelocityMovement_Access_Array_Access_Array is array (Natural range <>) of OscillateVelocityMovement_Access_Array_Access;
   type OscillateVelocityMovement_Access_Array_Access_Array_Access is access all OscillateVelocityMovement_Access_Array_Access_Array;
   type OscillateVelocityMovement_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OscillateVelocityMovement_Access_Array_Access;
   end record;
   function Java_Box (Value : OscillateVelocityMovement_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OscillateVelocityMovement_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OscillateVelocityMovement_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OscillateVelocityMovement_Access_Array_Access is (if Value /= null and then Value.all in OscillateVelocityMovement_Access_Array_Object'Class then OscillateVelocityMovement_Access_Array_Object'Class (Value.all).Value else null);
   type OscillateVelocityMovement_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OscillateVelocityMovement_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OscillateVelocityMovement_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OscillateVelocityMovement_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OscillateVelocityMovement_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OscillateVelocityMovement_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OscillateVelocityMovement_Access_Array_Access_Array_Object'Class then OscillateVelocityMovement_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.physics.movement.OscillateVelocityMovement_Package_References;

with org.allbinary.physics.movement.OscillateVelocityMovement_Package_References;
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
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.OscillateVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
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


   subtype OscillateVelocityMovement_Access is org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.OscillateVelocityMovement_Access;
   function "=" (Left, Right : OscillateVelocityMovement_Access) return Boolean renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References."=";
   subtype OscillateVelocityMovement_Access_Array is org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.OscillateVelocityMovement_Access_Array;
   function "=" (Left, Right : OscillateVelocityMovement_Access_Array) return Boolean renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References."=";
   subtype OscillateVelocityMovement_Access_Array_Access is org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.OscillateVelocityMovement_Access_Array_Access;
   function "=" (Left, Right : OscillateVelocityMovement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References."=";
   function Java_Box (Value : OscillateVelocityMovement_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.Java_Box;
   function Java_Unbox_OscillateVelocityMovement_Access_Array (Value : access Java_Object'Class) return OscillateVelocityMovement_Access_Array_Access renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.Java_Unbox_OscillateVelocityMovement_Access_Array;
   subtype OscillateVelocityMovement_Access_Array_Access_Array is org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.OscillateVelocityMovement_Access_Array_Access_Array;
   function "=" (Left, Right : OscillateVelocityMovement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References."=";
   subtype OscillateVelocityMovement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.OscillateVelocityMovement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OscillateVelocityMovement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References."=";
   function Java_Box (Value : OscillateVelocityMovement_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.Java_Box;
   function Java_Unbox_OscillateVelocityMovement_Access_Array_Access_Array (Value : access Java_Object'Class) return OscillateVelocityMovement_Access_Array_Access_Array_Access renames org.allbinary.physics.movement.OscillateVelocityMovement_Package_References.Java_Unbox_OscillateVelocityMovement_Access_Array_Access_Array;

   type OscillateVelocityMovement is new BasicConstantVelocityMovement with record
      oscillateMin : Integer;
      oscillateMax : Integer;
      oscillate : Integer;
      oscillatePositive : Boolean;
   end record;

   procedure Initialize (This : in out OscillateVelocityMovement'Class; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; oscillateMin : Integer; oscillateMax : Integer);
   function Create (speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; oscillateMin : Integer; oscillateMax : Integer) return OscillateVelocityMovement_Access;
   procedure process (This : in out OscillateVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);

end org.allbinary.physics.movement.OscillateVelocityMovement_Package;


