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
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.ag.ai.InputProbability_Package is

   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type InputProbability is tagged;
   type InputProbability_Access is access all InputProbability'Class;
   type InputProbability_Access_Array is array (Natural range <>) of InputProbability_Access;
   type InputProbability_Access_Array_Access is access all InputProbability_Access_Array;
   type InputProbability_Access_Array_Access_Array is array (Natural range <>) of InputProbability_Access_Array_Access;
   type InputProbability_Access_Array_Access_Array_Access is access all InputProbability_Access_Array_Access_Array;

   type InputProbability is new Java_Object with record
      likelyhoodIntegerArray : Integer_Array_Access_Array_Access;
      repeatLikelyhoodIntegerArray : Integer_Array_Access;
      max : Integer;
      timeDelayHelper : TimeDelayHelper_Access;
   end record;
   INPUT_PROBABILITY : Integer;

   procedure Initialize (This : in out InputProbability'Class; likelyhoodIntegerArray : Integer_Array_Access_Array_Access; repeatLikelyhoodIntegerArray : Integer_Array_Access; max : Integer; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class);
   function Create (likelyhoodIntegerArray : Integer_Array_Access_Array_Access; repeatLikelyhoodIntegerArray : Integer_Array_Access; max : Integer; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) return InputProbability_Access;
   function getLikelyhoodIntegerArray (This : in out InputProbability) return Integer_Array_Access_Array_Access;
   function getRepeatLikelyhoodIntegerArray (This : in out InputProbability) return Integer_Array_Access;
   function getMax (This : in out InputProbability) return Integer;
   function getTimeDelayHelper (This : in out InputProbability) return TimeDelayHelper_Access;
   function toHashtable (This : in out InputProbability) return ABHashtable_Access;

end org.allbinary.game.ag.ai.InputProbability_Package;


