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


package body org.allbinary.time.TimeDelayHelper_Package is

   procedure Initialize_Fields (This : in out TimeDelayHelper'Class) is
   begin
      null;
      This.startTime := Long_Long_Integer (-(1));
      This.elapsedTimeAtPause := Long_Package.MIN_VALUE;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TimeDelayHelper'Class; delay_Id : Integer) is
   begin
      Initialize_Fields (This);
        This.delay_Id := delay_Id;
        This.setStartTimeTNT;
   end Initialize;

   function Create (delay_Id : Integer) return TimeDelayHelper_Access is
      This : constant TimeDelayHelper_Access := new TimeDelayHelper;
   begin
      Initialize (This.all, delay_Id);
      return This;
   end Create;

   function isTimeTNT (This : in out TimeDelayHelper) return Boolean is
      currentTime : Long_Long_Integer;
   begin
        currentTime := Java_Current_Time_Millis;
        if ((currentTime) - (This.startTime)) > (Long_Long_Integer (This.delay_Id)) then
            This.startTime := currentTime;
            return True;
        end if;
        return False;
   end isTimeTNT;

   function isTimeSinceTNT (This : in out TimeDelayHelper; delay_Id : Integer) return Boolean is
      currentTime : Long_Long_Integer;
   begin
        currentTime := Java_Current_Time_Millis;
        if ((currentTime) - (This.startTime)) > (Long_Long_Integer (delay_Id)) then
            This.startTime := currentTime;
            return True;
        end if;
        return False;
   end isTimeSinceTNT;

   function isTime (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Boolean is
   begin
        if ((currentTime) - (This.startTime)) > (Long_Long_Integer (This.delay_Id)) then
            This.startTime := currentTime;
            return True;
        end if;
        return False;
   end isTime;

   function isTimeWithoutReset (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Boolean is
   begin
        if ((currentTime) - (This.startTime)) > (Long_Long_Integer (This.delay_Id)) then
            return True;
        end if;
        return False;
   end isTimeWithoutReset;

   function isTimeSince (This : in out TimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer) return Boolean is
   begin
        if ((currentTime) - (This.startTime)) > (Long_Long_Integer (This.delay_Id)) then
            This.startTime := currentTime;
            return True;
        end if;
        return False;
   end isTimeSince;

   function getElapsedTNT (This : in out TimeDelayHelper) return Long_Long_Integer is
   begin
        return (Java_Current_Time_Millis) - (This.startTime);
   end getElapsedTNT;

   function getElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Long_Long_Integer is
   begin
        return (currentTime) - (This.startTime);
   end getElapsed;

   function isElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer; time : Long_Long_Integer) return Boolean is
   begin
        if (This.getElapsed (currentTime)) > (time) then
            return True;
        else
            return False;
        end if;
   end isElapsed;

   function isElapsedTNT (This : in out TimeDelayHelper; time : Long_Long_Integer) return Boolean is
   begin
        if (This.getElapsedTNT) > (time) then
            return True;
        else
            return False;
        end if;
   end isElapsedTNT;

   procedure setStartTime (This : in out TimeDelayHelper; startTime : Long_Long_Integer) is
   begin
        This.startTime := startTime;
   end setStartTime;

   function getStartTime (This : in out TimeDelayHelper) return Long_Long_Integer is
   begin
        return This.startTime;
   end getStartTime;

   procedure setStartTimeTNT (This : in out TimeDelayHelper) is
   begin
        This.startTime := Java_Current_Time_Millis;
   end setStartTimeTNT;

   procedure pause (This : in out TimeDelayHelper) is
   begin
        This.elapsedTimeAtPause := This.getElapsedTNT;
        This.startTime := Long_Package.MAX_VALUE;
   end pause;

   function resume (This : in out TimeDelayHelper) return Boolean is
   begin
        if (This.elapsedTimeAtPause) /= (Long_Package.MIN_VALUE) then
            This.startTime := (Java_Current_Time_Millis) + (This.elapsedTimeAtPause);
            This.elapsedTimeAtPause := Long_Package.MIN_VALUE;
            This.setStartTimeTNT;
            return True;
        end if;
        return False;
   end resume;

   function toStringAt (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) return Unbounded_String is
      elapsed : Long_Long_Integer;
      commonLabels : CommonLabels_Access;
      elapsedAsString : Unbounded_String;
   begin
        elapsed := This.getElapsed (currentTime);
        if (elapsed) > (0) then
            commonLabels := CommonLabels_Package.getInstance;
            elapsedAsString := To_Unbounded_String (Java_Image (elapsed));
            return StringMaker_Package.Create.append (commonLabels.START).appendlong (This.startTime).append (commonLabels.CURRENT).appendlong (currentTime).append (commonLabels.ELAPSED).append (elapsedAsString).toString;
        else
            return StringUtil_Package.getInstance.EMPTY_STRING;
        end if;
   end toStringAt;

   function toString (This : in out TimeDelayHelper) return Unbounded_String is
      currentTime : Long_Long_Integer;
      elapsed : Long_Long_Integer;
      commonLabels : CommonLabels_Access;
      elapsedAsString : Unbounded_String;
   begin
        currentTime := Java_Current_Time_Millis;
        elapsed := This.getElapsed (currentTime);
        if (elapsed) > (0) then
            commonLabels := CommonLabels_Package.getInstance;
            elapsedAsString := To_Unbounded_String (Java_Image (elapsed));
            return StringMaker_Package.Create.append (commonLabels.START).appendlong (This.startTime).append (commonLabels.CURRENT).appendlong (currentTime).append (commonLabels.ELAPSED).append (elapsedAsString).toString;
        else
            return StringUtil_Package.getInstance.EMPTY_STRING;
        end if;
   end toString;

   procedure isTimeTNT (This : in out TimeDelayHelper) is
      Java_Result : constant Boolean := TimeDelayHelper'Class (This).isTimeTNT;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTimeTNT;

   procedure isTimeSinceTNT (This : in out TimeDelayHelper; delay_Id : Integer) is
      Java_Result : constant Boolean := TimeDelayHelper'Class (This).isTimeSinceTNT (delay_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTimeSinceTNT;

   procedure isTime (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) is
      Java_Result : constant Boolean := TimeDelayHelper'Class (This).isTime (currentTime);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTime;

   procedure isTimeWithoutReset (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) is
      Java_Result : constant Boolean := TimeDelayHelper'Class (This).isTimeWithoutReset (currentTime);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTimeWithoutReset;

   procedure isTimeSince (This : in out TimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer) is
      Java_Result : constant Boolean := TimeDelayHelper'Class (This).isTimeSince (delay_Id, currentTime);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTimeSince;

   procedure getElapsedTNT (This : in out TimeDelayHelper) is
      Java_Result : constant Long_Long_Integer := TimeDelayHelper'Class (This).getElapsedTNT;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getElapsedTNT;

   procedure getElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := TimeDelayHelper'Class (This).getElapsed (currentTime);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getElapsed;

   procedure isElapsed (This : in out TimeDelayHelper; currentTime : Long_Long_Integer; time : Long_Long_Integer) is
      Java_Result : constant Boolean := TimeDelayHelper'Class (This).isElapsed (currentTime, time);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isElapsed;

   procedure isElapsedTNT (This : in out TimeDelayHelper; time : Long_Long_Integer) is
      Java_Result : constant Boolean := TimeDelayHelper'Class (This).isElapsedTNT (time);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isElapsedTNT;

   procedure getStartTime (This : in out TimeDelayHelper) is
      Java_Result : constant Long_Long_Integer := TimeDelayHelper'Class (This).getStartTime;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStartTime;

   procedure resume (This : in out TimeDelayHelper) is
      Java_Result : constant Boolean := TimeDelayHelper'Class (This).resume;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end resume;

   procedure toStringAt (This : in out TimeDelayHelper; currentTime : Long_Long_Integer) is
      Java_Result : constant Unbounded_String := TimeDelayHelper'Class (This).toStringAt (currentTime);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringAt;

   procedure toString (This : in out TimeDelayHelper) is
      Java_Result : constant Unbounded_String := TimeDelayHelper'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.time.TimeDelayHelper_Package;


