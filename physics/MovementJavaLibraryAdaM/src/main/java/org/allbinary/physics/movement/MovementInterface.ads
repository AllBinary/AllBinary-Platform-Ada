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
limited with org.allbinary.physics.movement.MovementInterface_Package;
package org.allbinary.physics.movement.MovementInterface_Package_References is
   type MovementInterface_Access is access all org.allbinary.physics.movement.MovementInterface_Package.MovementInterface'Class;
   type MovementInterface_Access_Array is array (Natural range <>) of MovementInterface_Access;
   type MovementInterface_Access_Array_Access is access all MovementInterface_Access_Array;
   type MovementInterface_Access_Array_Access_Array is array (Natural range <>) of MovementInterface_Access_Array_Access;
   type MovementInterface_Access_Array_Access_Array_Access is access all MovementInterface_Access_Array_Access_Array;
   type MovementInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MovementInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : MovementInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MovementInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MovementInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MovementInterface_Access_Array_Access is (if Value /= null and then Value.all in MovementInterface_Access_Array_Object'Class then MovementInterface_Access_Array_Object'Class (Value.all).Value else null);
   type MovementInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MovementInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MovementInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MovementInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MovementInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MovementInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MovementInterface_Access_Array_Access_Array_Object'Class then MovementInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.physics.movement.MovementInterface_Package_References;

with org.allbinary.physics.movement.MovementInterface_Package_References;
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

package org.allbinary.physics.movement.MovementInterface_Package is

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


   type MovementInterface is interface;
   subtype MovementInterface_Access is org.allbinary.physics.movement.MovementInterface_Package_References.MovementInterface_Access;
   function "=" (Left, Right : MovementInterface_Access) return Boolean renames org.allbinary.physics.movement.MovementInterface_Package_References."=";
   subtype MovementInterface_Access_Array is org.allbinary.physics.movement.MovementInterface_Package_References.MovementInterface_Access_Array;
   function "=" (Left, Right : MovementInterface_Access_Array) return Boolean renames org.allbinary.physics.movement.MovementInterface_Package_References."=";
   subtype MovementInterface_Access_Array_Access is org.allbinary.physics.movement.MovementInterface_Package_References.MovementInterface_Access_Array_Access;
   function "=" (Left, Right : MovementInterface_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.MovementInterface_Package_References."=";
   function Java_Box (Value : MovementInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.MovementInterface_Package_References.Java_Box;
   function Java_Unbox_MovementInterface_Access_Array (Value : access Java_Object'Class) return MovementInterface_Access_Array_Access renames org.allbinary.physics.movement.MovementInterface_Package_References.Java_Unbox_MovementInterface_Access_Array;
   subtype MovementInterface_Access_Array_Access_Array is org.allbinary.physics.movement.MovementInterface_Package_References.MovementInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MovementInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.MovementInterface_Package_References."=";
   subtype MovementInterface_Access_Array_Access_Array_Access is org.allbinary.physics.movement.MovementInterface_Package_References.MovementInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MovementInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.MovementInterface_Package_References."=";
   function Java_Box (Value : MovementInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.physics.movement.MovementInterface_Package_References.Java_Box;
   function Java_Unbox_MovementInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return MovementInterface_Access_Array_Access_Array_Access renames org.allbinary.physics.movement.MovementInterface_Package_References.Java_Unbox_MovementInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_MovementInterface (Value : MovementInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure init (This : in out MovementInterface; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer) is abstract;
   procedure process (This : in out MovementInterface; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is abstract;
   procedure stop (This : in out MovementInterface) is abstract;

end org.allbinary.physics.movement.MovementInterface_Package;


