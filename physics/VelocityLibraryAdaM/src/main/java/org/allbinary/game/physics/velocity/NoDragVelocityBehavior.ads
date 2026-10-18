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
with org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package; use org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package;

package org.allbinary.game.physics.velocity.NoDragVelocityBehavior_Package is


   type NoDragVelocityBehavior is tagged;
   type NoDragVelocityBehavior_Access is access all NoDragVelocityBehavior'Class;
   type NoDragVelocityBehavior_Access_Array is array (Natural range <>) of NoDragVelocityBehavior_Access;
   type NoDragVelocityBehavior_Access_Array_Access is access all NoDragVelocityBehavior_Access_Array;
   type NoDragVelocityBehavior_Access_Array_Access_Array is array (Natural range <>) of NoDragVelocityBehavior_Access_Array_Access;
   type NoDragVelocityBehavior_Access_Array_Access_Array_Access is access all NoDragVelocityBehavior_Access_Array_Access_Array;

   type NoDragVelocityBehavior is new VelocityBehaviorBase with null record;
   instance : NoDragVelocityBehavior_Access;

   procedure Initialize (This : in out NoDragVelocityBehavior'Class);
   function Create return NoDragVelocityBehavior_Access;

end org.allbinary.game.physics.velocity.NoDragVelocityBehavior_Package;


