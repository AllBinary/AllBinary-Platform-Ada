-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;

package org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package is


   type VelocityBehaviorBase is tagged;
   type VelocityBehaviorBase_Access is access all VelocityBehaviorBase'Class;
   type VelocityBehaviorBase_Access_Array is array (Natural range <>) of VelocityBehaviorBase_Access;
   type VelocityBehaviorBase_Access_Array_Access is access all VelocityBehaviorBase_Access_Array;

   type VelocityBehaviorBase is new Java_Object with null record;

   procedure Initialize (This : in out VelocityBehaviorBase'Class);
   function Create return VelocityBehaviorBase_Access;
   procedure reduce (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer);
   procedure reduceX (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer);
   procedure reduceY (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer);

end org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package;


