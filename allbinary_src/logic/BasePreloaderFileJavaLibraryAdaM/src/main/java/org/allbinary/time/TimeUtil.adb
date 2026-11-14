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


with java.util.Calendar_Package; use java.util.Calendar_Package;

package body org.allbinary.time.TimeUtil_Package is

   procedure Initialize_Fields (This : in out TimeUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TimeUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TimeUtil_Access is
      This : constant TimeUtil_Access := new TimeUtil;
   begin
      TimeUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TimeUtil_Access is
   begin
        return TimeUtil_Package.instance;
   end getInstance;

   procedure setCalendar (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String) is
      calendar : constant Calendar_Access := Calendar_Access (calendar_Param);
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
   begin
        year := Integer (Integer'Value (To_String (yearString)));
        month := Integer (Integer'Value (To_String (monthString)));
        day := Integer (Integer'Value (To_String (dayString)));
        hour := Integer (Integer'Value (To_String (hourString)));
        calendar.set (year, month, day, hour, 0);
   end setCalendar;

   procedure setCalendarWithTime (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String) is
      calendar : constant Calendar_Access := Calendar_Access (calendar_Param);
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
   begin
        year := Integer (Integer'Value (To_String (yearString)));
        month := Integer (Integer'Value (To_String (monthString)));
        day := Integer (Integer'Value (To_String (dayString)));
        hour := Integer (Integer'Value (To_String (hourString)));
        minute := Integer (Integer'Value (To_String (minuteString)));
        second := Integer (Integer'Value (To_String (secondString)));
        calendar.set (year, month, day, hour, minute, second);
   end setCalendarWithTime;

   procedure setExpirationCalendar (This : in out TimeUtil; calendar_Param : access Calendar_Package.Calendar'Class; yearsString : Unbounded_String; monthsString : Unbounded_String; daysString : Unbounded_String; hoursString : Unbounded_String; minutesString : Unbounded_String; secondsString : Unbounded_String) is
      calendar : constant Calendar_Access := Calendar_Access (calendar_Param);
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
   begin
        year := (calendar.get (Calendar_Package.YEAR)) + (Integer (Integer'Value (To_String (yearsString))));
        month := (calendar.get (Calendar_Package.MONTH)) + (Integer (Integer'Value (To_String (monthsString))));
        day := (calendar.get (Calendar_Package.DAY_OF_MONTH)) + (Integer (Integer'Value (To_String (daysString))));
        hour := (calendar.get (Calendar_Package.HOUR)) + (Integer (Integer'Value (To_String (hoursString))));
        minute := (calendar.get (Calendar_Package.MINUTE)) + (Integer (Integer'Value (To_String (minutesString))));
        second := (calendar.get (Calendar_Package.SECOND)) + (Integer (Integer'Value (To_String (secondsString))));
        calendar.set (year, month, day, hour, minute, second);
   end setExpirationCalendar;

   function getTotalTime (This : in out TimeUtil; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String) return Long_Long_Integer is
      time : Long_Long_Integer;
      timeDelta : Long_Long_Integer;
   begin
        time := TimeUtil_Package.calendar.getTimeInMillis;
        TimeUtil'Class (This).setExpirationCalendar (TimeUtil_Package.calendar, yearString, monthString, dayString, hourString, minuteString, secondString);
        timeDelta := TimeUtil_Package.calendar.getTimeInMillis;
        return (timeDelta) - (time);
   end getTotalTime;

   procedure getTotalTime (This : in out TimeUtil; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String) is
      Java_Result : constant Long_Long_Integer := TimeUtil'Class (This).getTotalTime (yearString => yearString, monthString => monthString, dayString => dayString, hourString => hourString, minuteString => minuteString, secondString => secondString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalTime;

begin
   null;
   instance := TimeUtil_Package.Create;
   calendar := Calendar_Package.getInstance;

end org.allbinary.time.TimeUtil_Package;


