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
limited with org.allbinary.game.physics.velocity.BasicVelocityInterface_Package;
package org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References is
   type BasicVelocityInterface_Access is access all org.allbinary.game.physics.velocity.BasicVelocityInterface_Package.BasicVelocityInterface'Class;
   type BasicVelocityInterface_Access_Array is array (Natural range <>) of BasicVelocityInterface_Access;
   type BasicVelocityInterface_Access_Array_Access is access all BasicVelocityInterface_Access_Array;
   type BasicVelocityInterface_Access_Array_Access_Array is array (Natural range <>) of BasicVelocityInterface_Access_Array_Access;
   type BasicVelocityInterface_Access_Array_Access_Array_Access is access all BasicVelocityInterface_Access_Array_Access_Array;
   type BasicVelocityInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicVelocityInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicVelocityInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicVelocityInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicVelocityInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicVelocityInterface_Access_Array_Access is (if Value /= null and then Value.all in BasicVelocityInterface_Access_Array_Object'Class then BasicVelocityInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BasicVelocityInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicVelocityInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicVelocityInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicVelocityInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicVelocityInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicVelocityInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicVelocityInterface_Access_Array_Access_Array_Object'Class then BasicVelocityInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References;

with org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;

package org.allbinary.game.physics.velocity.BasicVelocityInterface_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package Reference_Types is
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
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
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   use type Angle_Access;
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   use type Angle_Access_Array;
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   use type Angle_Access_Array_Access;
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   use type Angle_Access_Array_Access_Array;
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   use type Angle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BasicVelocityInterface is interface;
   subtype BasicVelocityInterface_Access is org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.BasicVelocityInterface_Access;
   function "=" (Left, Right : BasicVelocityInterface_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References."=";
   subtype BasicVelocityInterface_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.BasicVelocityInterface_Access_Array;
   function "=" (Left, Right : BasicVelocityInterface_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References."=";
   subtype BasicVelocityInterface_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.BasicVelocityInterface_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityInterface_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References."=";
   function Java_Box (Value : BasicVelocityInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.Java_Box;
   function Java_Unbox_BasicVelocityInterface_Access_Array (Value : access Java_Object'Class) return BasicVelocityInterface_Access_Array_Access renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.Java_Unbox_BasicVelocityInterface_Access_Array;
   subtype BasicVelocityInterface_Access_Array_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.BasicVelocityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicVelocityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References."=";
   subtype BasicVelocityInterface_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.BasicVelocityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References."=";
   function Java_Box (Value : BasicVelocityInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.Java_Box;
   function Java_Unbox_BasicVelocityInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicVelocityInterface_Access_Array_Access_Array_Access renames org.allbinary.game.physics.velocity.BasicVelocityInterface_Package_References.Java_Unbox_BasicVelocityInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BasicVelocityInterface (Value : BasicVelocityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getVelocityXBasicDecimalP (This : in out BasicVelocityInterface) return BasicDecimal_Access is abstract;
   function getVelocityYBasicDecimalP (This : in out BasicVelocityInterface) return BasicDecimal_Access is abstract;
   procedure zero (This : in out BasicVelocityInterface) is abstract;
   procedure setVelocityWithBigDecimalAndDirection (This : in out BasicVelocityInterface; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is abstract;
   procedure addVelocityWithBigDecimalAndDirection (This : in out BasicVelocityInterface; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is abstract;
   procedure setVelocityWithDirection (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is abstract;
   procedure addVelocityWithDirection (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is abstract;
   procedure setVelocityWithBigDecimal (This : in out BasicVelocityInterface; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure addVelocityWithBigDecimal (This : in out BasicVelocityInterface; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure setVelocity (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure addVelocity (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure addVelocityi (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer) is abstract;

end org.allbinary.game.physics.velocity.BasicVelocityInterface_Package;


