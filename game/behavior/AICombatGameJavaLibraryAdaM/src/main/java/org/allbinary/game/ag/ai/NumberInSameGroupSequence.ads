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
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

package org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package is

   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

   type NumberInSameGroupSequence is tagged;
   type NumberInSameGroupSequence_Access is access all NumberInSameGroupSequence'Class;
   type NumberInSameGroupSequence_Access_Array is array (Natural range <>) of NumberInSameGroupSequence_Access;
   type NumberInSameGroupSequence_Access_Array_Access is access all NumberInSameGroupSequence_Access_Array;

   type NumberInSameGroupSequence is new Java_Object with record
      NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_ONE : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_TWO : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_THREE : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_SIX : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE_NINE : Integer;
      NUMBER_ON_SAME_TEAM_SEQUENCE : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out NumberInSameGroupSequence'Class);
   function Create return NumberInSameGroupSequence_Access;
   function getInstance return NumberInSameGroupSequence_Access;
   procedure getInstance;

end org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package;


