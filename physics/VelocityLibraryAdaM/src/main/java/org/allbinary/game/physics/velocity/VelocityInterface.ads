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


   type VelocityInterface is interface and BasicVelocityInterface;
   type VelocityInterface_Access is access all VelocityInterface'Class;
   type VelocityInterface_Access_Array is array (Natural range <>) of VelocityInterface_Access;
   type VelocityInterface_Access_Array_Access is access all VelocityInterface_Access_Array;
   function getMaxForwardVelocity (This : in out VelocityInterface) return Integer is abstract;
   function getMaxReverseVelocity (This : in out VelocityInterface) return Integer is abstract;
   procedure limitMaxXYForwardVelocity (This : in out VelocityInterface) is abstract;
   procedure limitMaxXYReverseVelocity (This : in out VelocityInterface) is abstract;
   procedure limitXYToForwardAndReverseMaxVelocity (This : in out VelocityInterface) is abstract;
   procedure limitMaxXYVelocity (This : in out VelocityInterface; maxVelocity : Integer) is abstract;
   procedure setMaxForwardVelocity (This : in out VelocityInterface; maxForwardVelocity : Integer) is abstract;
   procedure setMaxReverseVelocity (This : in out VelocityInterface; maxReverseVelocity : Integer) is abstract;

end org.allbinary.game.physics.velocity.VelocityInterface_Package;


