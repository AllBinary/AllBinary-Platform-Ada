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

package org.allbinary.game.physics.friction.FrictionData_Package is


   type FrictionData is tagged;
   type FrictionData_Access is access all FrictionData'Class;
   type FrictionData_Access_Array is array (Natural range <>) of FrictionData_Access;
   type FrictionData_Access_Array_Access is access all FrictionData_Access_Array;

   type FrictionData is new Java_Object with null record;
   FRICTION_DENOMINATOR : Integer;

   procedure Initialize (This : in out FrictionData'Class);
   function Create return FrictionData_Access;
   function getFrictionDenominator return Integer;

end org.allbinary.game.physics.friction.FrictionData_Package;


