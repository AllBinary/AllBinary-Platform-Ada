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

with AllBinary_Java;
limited with org.allbinary.canvas.BaseGameStatistics_Package;
package org.allbinary.canvas.BaseGameStatistics_Package_References is
   type BaseGameStatistics_Access is access all org.allbinary.canvas.BaseGameStatistics_Package.BaseGameStatistics'Class;
   type BaseGameStatistics_Access_Array is array (Natural range <>) of BaseGameStatistics_Access;
   type BaseGameStatistics_Access_Array_Access is access all BaseGameStatistics_Access_Array;
   type BaseGameStatistics_Access_Array_Access_Array is array (Natural range <>) of BaseGameStatistics_Access_Array_Access;
   type BaseGameStatistics_Access_Array_Access_Array_Access is access all BaseGameStatistics_Access_Array_Access_Array;
   type BaseGameStatistics_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseGameStatistics_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseGameStatistics_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseGameStatistics_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseGameStatistics_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseGameStatistics_Access_Array_Access is (if Value /= null and then Value.all in BaseGameStatistics_Access_Array_Object'Class then BaseGameStatistics_Access_Array_Object'Class (Value.all).Value else null);
   type BaseGameStatistics_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseGameStatistics_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseGameStatistics_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseGameStatistics_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseGameStatistics_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseGameStatistics_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseGameStatistics_Access_Array_Access_Array_Object'Class then BaseGameStatistics_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.canvas.BaseGameStatistics_Package_References;

with org.allbinary.canvas.BaseGameStatistics_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package_References;
limited with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.canvas.BaseGameStatistics_Package is

   package PrimitiveLongSingleton_Package renames Standard.org.allbinary.logic.math.PrimitiveLongSingleton_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype PrimitiveLongSingleton_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access;
   use type PrimitiveLongSingleton_Access;
   subtype PrimitiveLongSingleton_Access_Array is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array;
   use type PrimitiveLongSingleton_Access_Array;
   subtype PrimitiveLongSingleton_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access;
   use type PrimitiveLongSingleton_Access_Array_Access;
   subtype PrimitiveLongSingleton_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access_Array;
   use type PrimitiveLongSingleton_Access_Array_Access_Array;
   subtype PrimitiveLongSingleton_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access_Array_Access;
   use type PrimitiveLongSingleton_Access_Array_Access_Array_Access;
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   use type GameTickTimeDelayHelper_Access;
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BaseGameStatistics_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access;
   function "=" (Left, Right : BaseGameStatistics_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array;
   function "=" (Left, Right : BaseGameStatistics_Access_Array) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   function Java_Box (Value : BaseGameStatistics_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.BaseGameStatistics_Package_References.Java_Box;
   function Java_Unbox_BaseGameStatistics_Access_Array (Value : access Java_Object'Class) return BaseGameStatistics_Access_Array_Access renames org.allbinary.canvas.BaseGameStatistics_Package_References.Java_Unbox_BaseGameStatistics_Access_Array;
   subtype BaseGameStatistics_Access_Array_Access_Array is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array_Access_Array_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   function Java_Box (Value : BaseGameStatistics_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.BaseGameStatistics_Package_References.Java_Box;
   function Java_Unbox_BaseGameStatistics_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseGameStatistics_Access_Array_Access_Array_Access renames org.allbinary.canvas.BaseGameStatistics_Package_References.Java_Unbox_BaseGameStatistics_Access_Array_Access_Array;

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
   function getTimeDelayHelper (This : in out BaseGameStatistics) return TimeDelayHelper_Access;
   function to2DCharArray (This : in out BaseGameStatistics) return Character_Array_Access_Array_Access;
   function toStringArray (This : in out BaseGameStatistics) return Unbounded_String_Array_Access;
   function toStringAt (This : in out BaseGameStatistics; totalTime : Long_Long_Integer) return Unbounded_String;
   procedure toStringAt (This : in out BaseGameStatistics; totalTime : Long_Long_Integer);
   function toString (This : in out BaseGameStatistics) return Unbounded_String;

end org.allbinary.canvas.BaseGameStatistics_Package;


