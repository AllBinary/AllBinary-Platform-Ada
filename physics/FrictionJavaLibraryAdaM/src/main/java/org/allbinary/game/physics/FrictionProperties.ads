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

limited with org.allbinary.game.physics.FrictionProperties_Package;
package org.allbinary.game.physics.FrictionProperties_Package_References is
   type FrictionProperties_Access is access all org.allbinary.game.physics.FrictionProperties_Package.FrictionProperties'Class;
   type FrictionProperties_Access_Array is array (Natural range <>) of FrictionProperties_Access;
   type FrictionProperties_Access_Array_Access is access all FrictionProperties_Access_Array;
   type FrictionProperties_Access_Array_Access_Array is array (Natural range <>) of FrictionProperties_Access_Array_Access;
   type FrictionProperties_Access_Array_Access_Array_Access is access all FrictionProperties_Access_Array_Access_Array;
end org.allbinary.game.physics.FrictionProperties_Package_References;

with org.allbinary.game.physics.FrictionProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package_References;

package org.allbinary.game.physics.FrictionProperties_Package is

   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package Reference_Types is
   subtype VelocityProperties_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access;
   use type VelocityProperties_Access;
   subtype VelocityProperties_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array;
   use type VelocityProperties_Access_Array;
   subtype VelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access;
   use type VelocityProperties_Access_Array_Access;
   subtype VelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array;
   use type VelocityProperties_Access_Array_Access_Array;
   subtype VelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array_Access;
   use type VelocityProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FrictionProperties_Access is org.allbinary.game.physics.FrictionProperties_Package_References.FrictionProperties_Access;
   function "=" (Left, Right : FrictionProperties_Access) return Boolean renames org.allbinary.game.physics.FrictionProperties_Package_References."=";
   subtype FrictionProperties_Access_Array is org.allbinary.game.physics.FrictionProperties_Package_References.FrictionProperties_Access_Array;
   function "=" (Left, Right : FrictionProperties_Access_Array) return Boolean renames org.allbinary.game.physics.FrictionProperties_Package_References."=";
   subtype FrictionProperties_Access_Array_Access is org.allbinary.game.physics.FrictionProperties_Package_References.FrictionProperties_Access_Array_Access;
   function "=" (Left, Right : FrictionProperties_Access_Array_Access) return Boolean renames org.allbinary.game.physics.FrictionProperties_Package_References."=";
   subtype FrictionProperties_Access_Array_Access_Array is org.allbinary.game.physics.FrictionProperties_Package_References.FrictionProperties_Access_Array_Access_Array;
   function "=" (Left, Right : FrictionProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.FrictionProperties_Package_References."=";
   subtype FrictionProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.FrictionProperties_Package_References.FrictionProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FrictionProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.FrictionProperties_Package_References."=";

   type FrictionProperties is new Java_Object with null record;

   procedure Initialize (This : in out FrictionProperties'Class);
   function Create return FrictionProperties_Access;
   procedure friction (This : in out FrictionProperties; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; nominator : Integer);

end org.allbinary.game.physics.FrictionProperties_Package;


