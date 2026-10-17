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
with org.allbinary.logic.math.PrimitiveLongSingleton_Package; use org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;

package org.allbinary.game.ag.layer.hud.basic.time.Timer_Package is

   package PrimitiveLongSingleton_Package renames Standard.org.allbinary.logic.math.PrimitiveLongSingleton_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;

   type Timer is tagged;
   type Timer_Access is access all Timer'Class;
   type Timer_Access_Array is array (Natural range <>) of Timer_Access;
   type Timer_Access_Array_Access is access all Timer_Access_Array;

   type Timer is new Java_Object with record
      startTime : Long_Long_Integer;
      hundredthTime : Long_Long_Integer;
      maxTime : Long_Long_Integer;
      modifier : Long_Long_Integer;
      hundrethsString : Character_Array_Access;
      totalDigits : Integer;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      MAX : Character_Array_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out Timer'Class; maxTime : Integer);
   function Create (maxTime : Integer) return Timer_Access;
   procedure start (This : in out Timer);
   function get (This : in out Timer) return Long_Long_Integer;
   procedure update (This : in out Timer);
   procedure reduce (This : in out Timer; value : Integer);
   procedure add (This : in out Timer; value : Integer);
   function getTimeChars (This : in out Timer) return Character_Array_Access;
   function getCurrentTotalDigits (This : in out Timer) return Integer;

end org.allbinary.game.ag.layer.hud.basic.time.Timer_Package;


