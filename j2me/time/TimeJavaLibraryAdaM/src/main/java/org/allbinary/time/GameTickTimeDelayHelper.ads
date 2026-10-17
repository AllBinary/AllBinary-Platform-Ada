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

package org.allbinary.time.GameTickTimeDelayHelper_Package is


   type GameTickTimeDelayHelper is tagged;
   type GameTickTimeDelayHelper_Access is access all GameTickTimeDelayHelper'Class;
   type GameTickTimeDelayHelper_Access_Array is array (Natural range <>) of GameTickTimeDelayHelper_Access;
   type GameTickTimeDelayHelper_Access_Array_Access is access all GameTickTimeDelayHelper_Access_Array;

   type GameTickTimeDelayHelper is new Java_Object with record
      timeDelta : Long_Long_Integer;
      startTime : Long_Long_Integer;
      lastStartTime : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out GameTickTimeDelayHelper'Class; startTime : Long_Long_Integer);
   function Create (startTime : Long_Long_Integer) return GameTickTimeDelayHelper_Access;
   function setStartTime (This : in out GameTickTimeDelayHelper) return Long_Long_Integer;
   procedure loop_Id (This : in out GameTickTimeDelayHelper);
   function getTimeFromStart (This : in out GameTickTimeDelayHelper) return Long_Long_Integer;

end org.allbinary.time.GameTickTimeDelayHelper_Package;


