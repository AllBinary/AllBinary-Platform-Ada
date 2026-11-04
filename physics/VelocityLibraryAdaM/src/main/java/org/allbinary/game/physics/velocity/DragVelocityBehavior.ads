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

limited with org.allbinary.game.physics.velocity.DragVelocityBehavior_Package;
package org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References is
   type DragVelocityBehavior_Access is access all org.allbinary.game.physics.velocity.DragVelocityBehavior_Package.DragVelocityBehavior'Class;
   type DragVelocityBehavior_Access_Array is array (Natural range <>) of DragVelocityBehavior_Access;
   type DragVelocityBehavior_Access_Array_Access is access all DragVelocityBehavior_Access_Array;
   type DragVelocityBehavior_Access_Array_Access_Array is array (Natural range <>) of DragVelocityBehavior_Access_Array_Access;
   type DragVelocityBehavior_Access_Array_Access_Array_Access is access all DragVelocityBehavior_Access_Array_Access_Array;
end org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References;

with org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package; use org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package;
limited with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;

package org.allbinary.game.physics.velocity.DragVelocityBehavior_Package is

   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype DragVelocityBehavior_Access is org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References.DragVelocityBehavior_Access;
   function "=" (Left, Right : DragVelocityBehavior_Access) return Boolean renames org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References."=";
   subtype DragVelocityBehavior_Access_Array is org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References.DragVelocityBehavior_Access_Array;
   function "=" (Left, Right : DragVelocityBehavior_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References."=";
   subtype DragVelocityBehavior_Access_Array_Access is org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References.DragVelocityBehavior_Access_Array_Access;
   function "=" (Left, Right : DragVelocityBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References."=";
   subtype DragVelocityBehavior_Access_Array_Access_Array is org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References.DragVelocityBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : DragVelocityBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References."=";
   subtype DragVelocityBehavior_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References.DragVelocityBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DragVelocityBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.DragVelocityBehavior_Package_References."=";

   type DragVelocityBehavior is new VelocityBehaviorBase with null record;
   instance : DragVelocityBehavior_Access;

   procedure Initialize (This : in out DragVelocityBehavior'Class);
   function Create return DragVelocityBehavior_Access;
   procedure reduce (This : in out DragVelocityBehavior; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer);
   procedure reduceX (This : in out DragVelocityBehavior; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer);
   procedure reduceY (This : in out DragVelocityBehavior; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer);

end org.allbinary.game.physics.velocity.DragVelocityBehavior_Package;


