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
limited with org.allbinary.game.physics.velocity.VelocityProperties_Package;
package org.allbinary.game.physics.velocity.VelocityProperties_Package_References is
   type VelocityProperties_Access is access all org.allbinary.game.physics.velocity.VelocityProperties_Package.VelocityProperties'Class;
   type VelocityProperties_Access_Array is array (Natural range <>) of VelocityProperties_Access;
   type VelocityProperties_Access_Array_Access is access all VelocityProperties_Access_Array;
   type VelocityProperties_Access_Array_Access_Array is array (Natural range <>) of VelocityProperties_Access_Array_Access;
   type VelocityProperties_Access_Array_Access_Array_Access is access all VelocityProperties_Access_Array_Access_Array;
   type VelocityProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VelocityProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : VelocityProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VelocityProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VelocityProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VelocityProperties_Access_Array_Access is (if Value /= null and then Value.all in VelocityProperties_Access_Array_Object'Class then VelocityProperties_Access_Array_Object'Class (Value.all).Value else null);
   type VelocityProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VelocityProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VelocityProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VelocityProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VelocityProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VelocityProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VelocityProperties_Access_Array_Access_Array_Object'Class then VelocityProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.physics.velocity.VelocityProperties_Package_References;

with org.allbinary.game.physics.velocity.VelocityProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterface_Package;

package org.allbinary.game.physics.velocity.VelocityProperties_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype VelocityProperties_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access;
   function "=" (Left, Right : VelocityProperties_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array;
   function "=" (Left, Right : VelocityProperties_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   function Java_Box (Value : VelocityProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References.Java_Box;
   function Java_Unbox_VelocityProperties_Access_Array (Value : access Java_Object'Class) return VelocityProperties_Access_Array_Access renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References.Java_Unbox_VelocityProperties_Access_Array;
   subtype VelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   function Java_Box (Value : VelocityProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References.Java_Box;
   function Java_Unbox_VelocityProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return VelocityProperties_Access_Array_Access_Array_Access renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References.Java_Unbox_VelocityProperties_Access_Array_Access_Array;

   type VelocityProperties is new BasicVelocityProperties and VelocityInterface with record
      maxForwardVelocity : Integer;
      maxReverseVelocity : Integer;
   end record;
   NULL_VELOCITY_PROPERTIES : VelocityProperties_Access;

   procedure Initialize (This : in out VelocityProperties'Class; maxForwardVelocity : Integer; maxReverseVelocity : Integer);
   function Create (maxForwardVelocity : Integer; maxReverseVelocity : Integer) return VelocityProperties_Access;
   function getMaxForwardVelocity (This : in out VelocityProperties) return Integer;
   procedure setMaxForwardVelocity (This : in out VelocityProperties; maxForwardVelocity : Integer);
   function getMaxReverseVelocity (This : in out VelocityProperties) return Integer;
   procedure setMaxReverseVelocity (This : in out VelocityProperties; maxReverseVelocity : Integer);
   procedure limitMaxXYForwardVelocity (This : in out VelocityProperties);
   procedure limitMaxXYReverseVelocity (This : in out VelocityProperties);
   procedure limitMaxYForwardVelocity (This : in out VelocityProperties);
   procedure limitMaxYReverseVelocity (This : in out VelocityProperties);
   procedure limitMaxXForwardVelocity (This : in out VelocityProperties);
   procedure limitMaxXReverseVelocity (This : in out VelocityProperties);
   function isOverXYMaxForwardVelocity (This : in out VelocityProperties) return Boolean;
   function isOverXYMaxReverseVelocity (This : in out VelocityProperties) return Boolean;
   procedure limitXYToForwardAndReverseMaxVelocity (This : in out VelocityProperties);
   procedure limitMaxXYVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure limitMaxPositiveYVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure limitMaxNegativeYVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure limitMaxYVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure limitMaxXVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   function isOverXYMaxVelocity (This : in out VelocityProperties; maxVelocity : Integer) return Boolean;
   procedure isOverXYMaxVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure setVelocityi (This : in out VelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure addVelocityi (This : in out VelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer);

end org.allbinary.game.physics.velocity.VelocityProperties_Package;


