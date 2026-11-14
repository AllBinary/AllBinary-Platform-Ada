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
limited with org.allbinary.physics.movement.NoMovementFactory_Package;
package org.allbinary.physics.movement.NoMovementFactory_Package_References is
   type NoMovementFactory_Access is access all org.allbinary.physics.movement.NoMovementFactory_Package.NoMovementFactory'Class;
   type NoMovementFactory_Access_Array is array (Natural range <>) of NoMovementFactory_Access;
   type NoMovementFactory_Access_Array_Access is access all NoMovementFactory_Access_Array;
   type NoMovementFactory_Access_Array_Access_Array is array (Natural range <>) of NoMovementFactory_Access_Array_Access;
   type NoMovementFactory_Access_Array_Access_Array_Access is access all NoMovementFactory_Access_Array_Access_Array;
   type NoMovementFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoMovementFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : NoMovementFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoMovementFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoMovementFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoMovementFactory_Access_Array_Access is (if Value /= null and then Value.all in NoMovementFactory_Access_Array_Object'Class then NoMovementFactory_Access_Array_Object'Class (Value.all).Value else null);
   type NoMovementFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoMovementFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoMovementFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoMovementFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoMovementFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoMovementFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoMovementFactory_Access_Array_Access_Array_Object'Class then NoMovementFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.physics.movement.NoMovementFactory_Package_References;

with org.allbinary.physics.movement.NoMovementFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.physics.movement.Movement_Package;
with org.allbinary.physics.movement.Movement_Package_References;

package org.allbinary.physics.movement.NoMovementFactory_Package is

   package Reference_Types is
   subtype Movement_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access;
   use type Movement_Access;
   subtype Movement_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array;
   use type Movement_Access_Array;
   subtype Movement_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access;
   use type Movement_Access_Array_Access;
   subtype Movement_Access_Array_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array;
   use type Movement_Access_Array_Access_Array;
   subtype Movement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array_Access;
   use type Movement_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoMovementFactory_Access is org.allbinary.physics.movement.NoMovementFactory_Package_References.NoMovementFactory_Access;
   function "=" (Left, Right : NoMovementFactory_Access) return Boolean renames org.allbinary.physics.movement.NoMovementFactory_Package_References."=";
   subtype NoMovementFactory_Access_Array is org.allbinary.physics.movement.NoMovementFactory_Package_References.NoMovementFactory_Access_Array;
   function "=" (Left, Right : NoMovementFactory_Access_Array) return Boolean renames org.allbinary.physics.movement.NoMovementFactory_Package_References."=";
   subtype NoMovementFactory_Access_Array_Access is org.allbinary.physics.movement.NoMovementFactory_Package_References.NoMovementFactory_Access_Array_Access;
   function "=" (Left, Right : NoMovementFactory_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.NoMovementFactory_Package_References."=";
   function Java_Box (Value : NoMovementFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.NoMovementFactory_Package_References.Java_Box;
   function Java_Unbox_NoMovementFactory_Access_Array (Value : access Java_Object'Class) return NoMovementFactory_Access_Array_Access renames org.allbinary.physics.movement.NoMovementFactory_Package_References.Java_Unbox_NoMovementFactory_Access_Array;
   subtype NoMovementFactory_Access_Array_Access_Array is org.allbinary.physics.movement.NoMovementFactory_Package_References.NoMovementFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NoMovementFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.NoMovementFactory_Package_References."=";
   subtype NoMovementFactory_Access_Array_Access_Array_Access is org.allbinary.physics.movement.NoMovementFactory_Package_References.NoMovementFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoMovementFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.NoMovementFactory_Package_References."=";
   function Java_Box (Value : NoMovementFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.NoMovementFactory_Package_References.Java_Box;
   function Java_Unbox_NoMovementFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return NoMovementFactory_Access_Array_Access_Array_Access renames org.allbinary.physics.movement.NoMovementFactory_Package_References.Java_Unbox_NoMovementFactory_Access_Array_Access_Array;

   type NoMovementFactory is new Java_Object with record
      movement : Movement_Access;
   end record;
   instance : NoMovementFactory_Access;

   procedure Initialize (This : in out NoMovementFactory'Class);
   function Create return NoMovementFactory_Access;
   function getInstance return NoMovementFactory_Access;
   function getMovmentInstance (This : in out NoMovementFactory) return Movement_Access;

end org.allbinary.physics.movement.NoMovementFactory_Package;


