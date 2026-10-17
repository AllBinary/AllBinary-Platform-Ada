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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return TimeUtil_Access is
   begin
        return TimeUtil_Package.instance;
   end getInstance;

   procedure setCalendar (This : in out TimeUtil; calendar : Calendar_Access; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String) is
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
   begin
        year := yearString.intValue;
        month := monthString.intValue;
        day := dayString.intValue;
        hour := hourString.intValue;
        calendar.set (year, month, day, hour, 0);
   end setCalendar;

   procedure setCalendar (This : in out TimeUtil; calendar : Calendar_Access; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String) is
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
   begin
        year := yearString.intValue;
        month := monthString.intValue;
        day := dayString.intValue;
        hour := hourString.intValue;
        minute := minuteString.intValue;
        second := secondString.intValue;
        calendar.set (year, month, day, hour, minute, second);
   end setCalendar;

   procedure setExpirationCalendar (This : in out TimeUtil; calendar : Calendar_Access; yearsString : Unbounded_String; monthsString : Unbounded_String; daysString : Unbounded_String; hoursString : Unbounded_String; minutesString : Unbounded_String; secondsString : Unbounded_String) is
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
   begin
        year := (calendar.get (Calendar_Package.YEAR)) + (yearsString.intValue);
        month := (calendar.get (Calendar_Package.MONTH)) + (monthsString.intValue);
        day := (calendar.get (Calendar_Package.DAY_OF_MONTH)) + (daysString.intValue);
        hour := (calendar.get (Calendar_Package.HOUR)) + (hoursString.intValue);
        minute := (calendar.get (Calendar_Package.MINUTE)) + (minutesString.intValue);
        second := (calendar.get (Calendar_Package.SECOND)) + (secondsString.intValue);
        calendar.set (year, month, day, hour, minute, second);
   end setExpirationCalendar;

   function getTotalTime (This : in out TimeUtil; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String) return Long_Long_Integer is
      time : Long_Long_Integer;
      timeDelta : Long_Long_Integer;
   begin
        time := TimeUtil_Package.calendar.getTimeInMillis;
        This.setExpirationCalendar (TimeUtil_Package.calendar, yearString, monthString, dayString, hourString, minuteString, secondString);
        timeDelta := TimeUtil_Package.calendar.getTimeInMillis;
        return (timeDelta) - (time);
   end getTotalTime;

   procedure getInstance is
      Java_Result : constant TimeUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getTotalTime (This : in out TimeUtil; yearString : Unbounded_String; monthString : Unbounded_String; dayString : Unbounded_String; hourString : Unbounded_String; minuteString : Unbounded_String; secondString : Unbounded_String) is
      Java_Result : constant Long_Long_Integer := TimeUtil'Class (This).getTotalTime (yearString, monthString, dayString, hourString, minuteString, secondString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalTime;

begin
   null;
   instance := TimeUtil_Package.Create;
   calendar := Calendar_Package.getInstance;

end org.allbinary.time.TimeUtil_Package;


