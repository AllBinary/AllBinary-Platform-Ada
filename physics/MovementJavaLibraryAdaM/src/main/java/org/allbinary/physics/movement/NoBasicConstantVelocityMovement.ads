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
limited with org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package;
package org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References is
   type NoBasicConstantVelocityMovement_Access is access all org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package.NoBasicConstantVelocityMovement'Class;
   type NoBasicConstantVelocityMovement_Access_Array is array (Natural range <>) of NoBasicConstantVelocityMovement_Access;
   type NoBasicConstantVelocityMovement_Access_Array_Access is access all NoBasicConstantVelocityMovement_Access_Array;
   type NoBasicConstantVelocityMovement_Access_Array_Access_Array is array (Natural range <>) of NoBasicConstantVelocityMovement_Access_Array_Access;
   type NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access is access all NoBasicConstantVelocityMovement_Access_Array_Access_Array;
   type NoBasicConstantVelocityMovement_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoBasicConstantVelocityMovement_Access_Array_Access;
   end record;
   function Java_Box (Value : NoBasicConstantVelocityMovement_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoBasicConstantVelocityMovement_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoBasicConstantVelocityMovement_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoBasicConstantVelocityMovement_Access_Array_Access is (if Value /= null and then Value.all in NoBasicConstantVelocityMovement_Access_Array_Object'Class then NoBasicConstantVelocityMovement_Access_Array_Object'Class (Value.all).Value else null);
   type NoBasicConstantVelocityMovement_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoBasicConstantVelocityMovement_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoBasicConstantVelocityMovement_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoBasicConstantVelocityMovement_Access_Array_Access_Array_Object'Class then NoBasicConstantVelocityMovement_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References;

with org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References;
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
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype NoBasicConstantVelocityMovement_Access is org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.NoBasicConstantVelocityMovement_Access;
   function "=" (Left, Right : NoBasicConstantVelocityMovement_Access) return Boolean renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References."=";
   subtype NoBasicConstantVelocityMovement_Access_Array is org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.NoBasicConstantVelocityMovement_Access_Array;
   function "=" (Left, Right : NoBasicConstantVelocityMovement_Access_Array) return Boolean renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References."=";
   subtype NoBasicConstantVelocityMovement_Access_Array_Access is org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.NoBasicConstantVelocityMovement_Access_Array_Access;
   function "=" (Left, Right : NoBasicConstantVelocityMovement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References."=";
   function Java_Box (Value : NoBasicConstantVelocityMovement_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.Java_Box;
   function Java_Unbox_NoBasicConstantVelocityMovement_Access_Array (Value : access Java_Object'Class) return NoBasicConstantVelocityMovement_Access_Array_Access renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.Java_Unbox_NoBasicConstantVelocityMovement_Access_Array;
   subtype NoBasicConstantVelocityMovement_Access_Array_Access_Array is org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.NoBasicConstantVelocityMovement_Access_Array_Access_Array;
   function "=" (Left, Right : NoBasicConstantVelocityMovement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References."=";
   subtype NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References."=";
   function Java_Box (Value : NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.Java_Box;
   function Java_Unbox_NoBasicConstantVelocityMovement_Access_Array_Access_Array (Value : access Java_Object'Class) return NoBasicConstantVelocityMovement_Access_Array_Access_Array_Access renames org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package_References.Java_Unbox_NoBasicConstantVelocityMovement_Access_Array_Access_Array;

   type NoBasicConstantVelocityMovement is new BasicConstantVelocityMovement with null record;

   procedure Initialize (This : in out NoBasicConstantVelocityMovement'Class);
   function Create return NoBasicConstantVelocityMovement_Access;
   procedure process (This : in out NoBasicConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);

end org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package;


