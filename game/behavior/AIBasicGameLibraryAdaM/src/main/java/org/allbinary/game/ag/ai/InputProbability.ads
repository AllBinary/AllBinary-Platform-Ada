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

limited with org.allbinary.game.ag.ai.InputProbability_Package;
package org.allbinary.game.ag.ai.InputProbability_Package_References is
   type InputProbability_Access is access all org.allbinary.game.ag.ai.InputProbability_Package.InputProbability'Class;
   type InputProbability_Access_Array is array (Natural range <>) of InputProbability_Access;
   type InputProbability_Access_Array_Access is access all InputProbability_Access_Array;
   type InputProbability_Access_Array_Access_Array is array (Natural range <>) of InputProbability_Access_Array_Access;
   type InputProbability_Access_Array_Access_Array_Access is access all InputProbability_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.InputProbability_Package_References;

with org.allbinary.game.ag.ai.InputProbability_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.ag.ai.InputProbability_Package is

   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputProbability_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access;
   function "=" (Left, Right : InputProbability_Access) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
   subtype InputProbability_Access_Array is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array;
   function "=" (Left, Right : InputProbability_Access_Array) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
   subtype InputProbability_Access_Array_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access;
   function "=" (Left, Right : InputProbability_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
   subtype InputProbability_Access_Array_Access_Array is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access_Array;
   function "=" (Left, Right : InputProbability_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
   subtype InputProbability_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputProbability_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";

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


