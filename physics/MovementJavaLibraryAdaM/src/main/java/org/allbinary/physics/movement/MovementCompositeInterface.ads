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
limited with org.allbinary.physics.movement.MovementCompositeInterface_Package;
package org.allbinary.physics.movement.MovementCompositeInterface_Package_References is
   type MovementCompositeInterface_Access is access all org.allbinary.physics.movement.MovementCompositeInterface_Package.MovementCompositeInterface'Class;
   type MovementCompositeInterface_Access_Array is array (Natural range <>) of MovementCompositeInterface_Access;
   type MovementCompositeInterface_Access_Array_Access is access all MovementCompositeInterface_Access_Array;
   type MovementCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of MovementCompositeInterface_Access_Array_Access;
   type MovementCompositeInterface_Access_Array_Access_Array_Access is access all MovementCompositeInterface_Access_Array_Access_Array;
   type MovementCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MovementCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : MovementCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MovementCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MovementCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MovementCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in MovementCompositeInterface_Access_Array_Object'Class then MovementCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type MovementCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MovementCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MovementCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MovementCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MovementCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MovementCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MovementCompositeInterface_Access_Array_Access_Array_Object'Class then MovementCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.physics.movement.MovementCompositeInterface_Package_References;

with org.allbinary.physics.movement.MovementCompositeInterface_Package_References;
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

package org.allbinary.physics.movement.MovementCompositeInterface_Package is

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


   type MovementCompositeInterface is interface;
   subtype MovementCompositeInterface_Access is org.allbinary.physics.movement.MovementCompositeInterface_Package_References.MovementCompositeInterface_Access;
   function "=" (Left, Right : MovementCompositeInterface_Access) return Boolean renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References."=";
   subtype MovementCompositeInterface_Access_Array is org.allbinary.physics.movement.MovementCompositeInterface_Package_References.MovementCompositeInterface_Access_Array;
   function "=" (Left, Right : MovementCompositeInterface_Access_Array) return Boolean renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References."=";
   subtype MovementCompositeInterface_Access_Array_Access is org.allbinary.physics.movement.MovementCompositeInterface_Package_References.MovementCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : MovementCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References."=";
   function Java_Box (Value : MovementCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_MovementCompositeInterface_Access_Array (Value : access Java_Object'Class) return MovementCompositeInterface_Access_Array_Access renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References.Java_Unbox_MovementCompositeInterface_Access_Array;
   subtype MovementCompositeInterface_Access_Array_Access_Array is org.allbinary.physics.movement.MovementCompositeInterface_Package_References.MovementCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MovementCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References."=";
   subtype MovementCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.physics.movement.MovementCompositeInterface_Package_References.MovementCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MovementCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References."=";
   function Java_Box (Value : MovementCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_MovementCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return MovementCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.physics.movement.MovementCompositeInterface_Package_References.Java_Unbox_MovementCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_MovementCompositeInterface (Value : MovementCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMovement (This : in out MovementCompositeInterface) return Movement_Access is abstract;

end org.allbinary.physics.movement.MovementCompositeInterface_Package;


