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

limited with org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package;
package org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References is
   type NumberInSameGroupSequence_Access is access all org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package.NumberInSameGroupSequence'Class;
   type NumberInSameGroupSequence_Access_Array is array (Natural range <>) of NumberInSameGroupSequence_Access;
   type NumberInSameGroupSequence_Access_Array_Access is access all NumberInSameGroupSequence_Access_Array;
   type NumberInSameGroupSequence_Access_Array_Access_Array is array (Natural range <>) of NumberInSameGroupSequence_Access_Array_Access;
   type NumberInSameGroupSequence_Access_Array_Access_Array_Access is access all NumberInSameGroupSequence_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References;

with org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NumberInSameGroupSequence_Access is org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References.NumberInSameGroupSequence_Access;
   function "=" (Left, Right : NumberInSameGroupSequence_Access) return Boolean renames org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References."=";
   subtype NumberInSameGroupSequence_Access_Array is org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References.NumberInSameGroupSequence_Access_Array;
   function "=" (Left, Right : NumberInSameGroupSequence_Access_Array) return Boolean renames org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References."=";
   subtype NumberInSameGroupSequence_Access_Array_Access is org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References.NumberInSameGroupSequence_Access_Array_Access;
   function "=" (Left, Right : NumberInSameGroupSequence_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References."=";
   subtype NumberInSameGroupSequence_Access_Array_Access_Array is org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References.NumberInSameGroupSequence_Access_Array_Access_Array;
   function "=" (Left, Right : NumberInSameGroupSequence_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References."=";
   subtype NumberInSameGroupSequence_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References.NumberInSameGroupSequence_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NumberInSameGroupSequence_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package_References."=";

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

end org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package;


