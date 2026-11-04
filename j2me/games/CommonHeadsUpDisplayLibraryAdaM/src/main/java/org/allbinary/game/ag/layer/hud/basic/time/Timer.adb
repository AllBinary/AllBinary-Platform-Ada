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


with org.allbinary.logic.math.PrimitiveLongSingleton_Package; use org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;

package body org.allbinary.game.ag.layer.hud.basic.time.Timer_Package is

   package PrimitiveLongSingleton_Package renames Standard.org.allbinary.logic.math.PrimitiveLongSingleton_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   subtype PrimitiveLongUtil_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access;
   function "=" (Left, Right : PrimitiveLongUtil_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   subtype PrimitiveLongUtil_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array;
   function "=" (Left, Right : PrimitiveLongUtil_Access_Array) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   subtype PrimitiveLongUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access;
   function "=" (Left, Right : PrimitiveLongUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   subtype PrimitiveLongUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PrimitiveLongUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   subtype PrimitiveLongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PrimitiveLongUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   procedure Initialize_Fields (This : in out Timer'Class) is
   begin
      null;
      This.startTime := Long_Long_Integer (-(1));
      This.hundredthTime := 0;
      
      This.modifier := 0;
      This.hundrethsString := PrimitiveLongSingleton_Package.getInstance.ZERO;
      This.totalDigits := 1;
      
      This.MAX := new Character_Array'('L', 'O', 'L');
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out Timer'Class; maxTime : Integer) is
   begin
      Initialize_Fields (This);
        This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (maxTime);
        This.maxTime := Long_Long_Integer (maxTime);
   end Initialize;

   function Create (maxTime : Integer) return Timer_Access is
      This : constant Timer_Access := new Timer;
   begin
      Timer_Package.Initialize (This.all, maxTime);
      return This;
   end Create;

   procedure start (This : in out Timer) is
   begin
        This.hundredthTime := 0;
        This.startTime := This.gameTickTimeDelayHelper.startTime;
   end start;

   function get (This : in out Timer) return Long_Long_Integer is
   begin
        return This.hundredthTime;
   end get;

   procedure update (This : in out Timer) is
      lastLowerTime : Long_Long_Integer;
      currentTime : Long_Long_Integer;
   begin
        lastLowerTime := This.hundredthTime;
        currentTime := ((((This.modifier) + (This.gameTickTimeDelayHelper.startTime))) - (This.startTime));
        if (currentTime) < (0) then
            currentTime := 0;
        end if;
        This.hundredthTime := (currentTime) / (100);
        if (This.hundredthTime) >= (This.maxTime) then
            if (This.startTime) > (0) then
                This.hundrethsString := This.MAX;
            end if;
        elsif (lastLowerTime) /= (This.hundredthTime) then
            This.hundrethsString := This.primitiveLongUtil.getCharArray (Integer (This.hundredthTime));
            This.totalDigits := This.primitiveLongUtil.getCurrentTotalDigits;
        end if;
   end update;

   procedure reduce (This : in out Timer; value : Integer) is
   begin
        This.modifier := (This.modifier) - (Long_Long_Integer (value));
   end reduce;

   procedure add (This : in out Timer; value : Integer) is
   begin
        This.modifier := (This.modifier) + (Long_Long_Integer (value));
   end add;

   function getTimeChars (This : in out Timer) return Character_Array_Access is
   begin
        return This.hundrethsString;
   end getTimeChars;

   function getCurrentTotalDigits (This : in out Timer) return Integer is
   begin
        return This.totalDigits;
   end getCurrentTotalDigits;

end org.allbinary.game.ag.layer.hud.basic.time.Timer_Package;


