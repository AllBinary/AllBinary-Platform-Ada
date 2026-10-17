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
with org.allbinary.logic.math.ScaleFactorFactory_Package; use org.allbinary.logic.math.ScaleFactorFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.canvas.BaseGameStatistics_Package is

   package PrimitiveLongSingleton_Package renames org.allbinary.logic.math.PrimitiveLongSingleton_Package;
   package ScaleFactorFactory_Package renames org.allbinary.logic.math.ScaleFactorFactory_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package GameTickTimeDelayHelper_Package renames org.allbinary.time.GameTickTimeDelayHelper_Package;
   package GameTickTimeDelayHelperFactory_Package renames org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames org.allbinary.time.TimeDelayHelper_Package;

   type BaseGameStatistics is tagged;
   type BaseGameStatistics_Access is access all BaseGameStatistics'Class;
   type BaseGameStatistics_Access_Array is array (Natural range <>) of BaseGameStatistics_Access;
   type BaseGameStatistics_Access_Array_Access is access all BaseGameStatistics_Access_Array;

   type BaseGameStatistics is new Java_Object with record
      timeDelayHelper : TimeDelayHelper_Access;
      updateDelayHelper : TimeDelayHelper_Access;
      totalRefreshes : Long_Long_Integer;
      totalFrames : Long_Long_Integer;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
      DEFAULT_SCALE_FACTOR : Integer;
      NOT_Id : Unbounded_String;
      EMPTY_STRING : Unbounded_String;
      STRING_ARRAY : Unbounded_String_Array_Access;
      SPACE_CHAR : Character;
      PLUS_CHAR : Character;
      X_CHAR : Character;
      CHAR_ARRAY : Character_Array_Access_Array_Access;
      primitiveLongSingleton : PrimitiveLongSingleton_Access;
   end record;

   procedure Initialize (This : in out BaseGameStatistics'Class);
   function Create return BaseGameStatistics_Access;
   procedure init (This : in out BaseGameStatistics);
   procedure add (This : in out BaseGameStatistics; string_Id : Unbounded_String);
   procedure process (This : in out BaseGameStatistics);
   procedure nextFrame (This : in out BaseGameStatistics);
   procedure nextRefresh (This : in out BaseGameStatistics);
   function getRefreshRate (This : in out BaseGameStatistics) return Short_Integer;
   procedure getRefreshRate (This : in out BaseGameStatistics);
   function getTimeDelayHelper (This : in out BaseGameStatistics) return TimeDelayHelper_Access;
   procedure getTimeDelayHelper (This : in out BaseGameStatistics);
   function to2DCharArray (This : in out BaseGameStatistics) return Character_Array_Access_Array_Access;
   procedure to2DCharArray (This : in out BaseGameStatistics);
   function toStringArray (This : in out BaseGameStatistics) return Unbounded_String_Array_Access;
   procedure toStringArray (This : in out BaseGameStatistics);
   function toStringAt (This : in out BaseGameStatistics; totalTime : Long_Long_Integer) return Unbounded_String;
   procedure toStringAt (This : in out BaseGameStatistics; totalTime : Long_Long_Integer);
   function toString (This : in out BaseGameStatistics) return Unbounded_String;
   procedure toString (This : in out BaseGameStatistics);

end org.allbinary.canvas.BaseGameStatistics_Package;


