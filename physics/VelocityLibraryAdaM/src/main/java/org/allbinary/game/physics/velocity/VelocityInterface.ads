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

limited with org.allbinary.game.physics.velocity.VelocityInterface_Package;
package org.allbinary.game.physics.velocity.VelocityInterface_Package_References is
   type VelocityInterface_Access is access all org.allbinary.game.physics.velocity.VelocityInterface_Package.VelocityInterface'Class;
   type VelocityInterface_Access_Array is array (Natural range <>) of VelocityInterface_Access;
   type VelocityInterface_Access_Array_Access is access all VelocityInterface_Access_Array;
   type VelocityInterface_Access_Array_Access_Array is array (Natural range <>) of VelocityInterface_Access_Array_Access;
   type VelocityInterface_Access_Array_Access_Array_Access is access all VelocityInterface_Access_Array_Access_Array;
end org.allbinary.game.physics.velocity.VelocityInterface_Package_References;

with org.allbinary.game.physics.velocity.VelocityInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.physics.velocity.BasicVelocityInterface_Package; use org.allbinary.game.physics.velocity.BasicVelocityInterface_Package;

package org.allbinary.game.physics.velocity.VelocityInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type VelocityInterface is interface and BasicVelocityInterface;
   subtype VelocityInterface_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access;
   function "=" (Left, Right : VelocityInterface_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   subtype VelocityInterface_Access_Array is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array;
   function "=" (Left, Right : VelocityInterface_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   subtype VelocityInterface_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access;
   function "=" (Left, Right : VelocityInterface_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   subtype VelocityInterface_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VelocityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   subtype VelocityInterface_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VelocityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityInterface_Package_References."=";
   function Java_Object_Access_From_VelocityInterface (Value : VelocityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMaxForwardVelocity (This : in out VelocityInterface) return Integer is abstract;
   function getMaxReverseVelocity (This : in out VelocityInterface) return Integer is abstract;
   procedure limitMaxXYForwardVelocity (This : in out VelocityInterface) is abstract;
   procedure limitMaxXYReverseVelocity (This : in out VelocityInterface) is abstract;
   procedure limitXYToForwardAndReverseMaxVelocity (This : in out VelocityInterface) is abstract;
   procedure limitMaxXYVelocity (This : in out VelocityInterface; maxVelocity : Integer) is abstract;
   procedure setMaxForwardVelocity (This : in out VelocityInterface; maxForwardVelocity : Integer) is abstract;
   procedure setMaxReverseVelocity (This : in out VelocityInterface; maxReverseVelocity : Integer) is abstract;

end org.allbinary.game.physics.velocity.VelocityInterface_Package;


