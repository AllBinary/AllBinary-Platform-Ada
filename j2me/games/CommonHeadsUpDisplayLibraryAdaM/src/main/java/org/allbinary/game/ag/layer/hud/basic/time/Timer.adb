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


package body org.allbinary.game.ag.layer.hud.basic.time.Timer_Package is

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
      Initialize (This.all, maxTime);
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

   procedure get (This : in out Timer) is
      Java_Result : constant Long_Long_Integer := Timer'Class (This).get;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getTimeChars (This : in out Timer) is
      Java_Result : constant Character_Array_Access := Timer'Class (This).getTimeChars;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTimeChars;

   procedure getCurrentTotalDigits (This : in out Timer) is
      Java_Result : constant Integer := Timer'Class (This).getCurrentTotalDigits;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentTotalDigits;

end org.allbinary.game.ag.layer.hud.basic.time.Timer_Package;


