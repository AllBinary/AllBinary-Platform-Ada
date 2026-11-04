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

limited with org.allbinary.game.physics.acceleration.AccelerateableInterface_Package;
package org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References is
   type AccelerateableInterface_Access is access all org.allbinary.game.physics.acceleration.AccelerateableInterface_Package.AccelerateableInterface'Class;
   type AccelerateableInterface_Access_Array is array (Natural range <>) of AccelerateableInterface_Access;
   type AccelerateableInterface_Access_Array_Access is access all AccelerateableInterface_Access_Array;
   type AccelerateableInterface_Access_Array_Access_Array is array (Natural range <>) of AccelerateableInterface_Access_Array_Access;
   type AccelerateableInterface_Access_Array_Access_Array_Access is access all AccelerateableInterface_Access_Array_Access_Array;
end org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References;

with org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;

package org.allbinary.game.physics.acceleration.AccelerateableInterface_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package Reference_Types is
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


   type AccelerateableInterface is interface;
   subtype AccelerateableInterface_Access is org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References.AccelerateableInterface_Access;
   function "=" (Left, Right : AccelerateableInterface_Access) return Boolean renames org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References."=";
   subtype AccelerateableInterface_Access_Array is org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References.AccelerateableInterface_Access_Array;
   function "=" (Left, Right : AccelerateableInterface_Access_Array) return Boolean renames org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References."=";
   subtype AccelerateableInterface_Access_Array_Access is org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References.AccelerateableInterface_Access_Array_Access;
   function "=" (Left, Right : AccelerateableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References."=";
   subtype AccelerateableInterface_Access_Array_Access_Array is org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References.AccelerateableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AccelerateableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References."=";
   subtype AccelerateableInterface_Access_Array_Access_Array_Access is org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References.AccelerateableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AccelerateableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.acceleration.AccelerateableInterface_Package_References."=";
   function Java_Object_Access_From_AccelerateableInterface (Value : AccelerateableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure accelerate (This : in out AccelerateableInterface; accelerate_Param : access BasicDecimal_Package.BasicDecimal'Class) is abstract;

end org.allbinary.game.physics.acceleration.AccelerateableInterface_Package;


