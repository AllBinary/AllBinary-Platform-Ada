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


package body org.allbinary.debug.AndroidDebug_Package is

   procedure Initialize_Fields (This : in out AndroidDebug'Class) is
   begin
      null;
      This.startTime := Long_Package.MAX_VALUE;
      This.running := False;
      This.bufferSize := ((32) * (1024)) * (1024);
   end Initialize_Fields;

   procedure Initialize (This : in out AndroidDebug'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AndroidDebug_Access is
      This : constant AndroidDebug_Access := new AndroidDebug;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure start (This : in out AndroidDebug) is
   begin
        This.setStartTime (Java_Current_Time_Millis);
        Debug_Package.startMethodTracing (To_Unbounded_String ("trace"), This.bufferSize);
        This.setRunning (True);
   end start;

   procedure stop (This : in out AndroidDebug) is
   begin
        This.startTime := Long_Package.MAX_VALUE;
        Debug_Package.stopMethodTracing;
        This.setRunning (False);
   end stop;

   function getMaxTime (This : in out AndroidDebug) return Long_Long_Integer is
   begin
        return 120000;
   end getMaxTime;

   procedure setStartTime (This : in out AndroidDebug; startTime : Long_Long_Integer) is
   begin
        This.startTime := startTime;
   end setStartTime;

   function getStartTime (This : in out AndroidDebug) return Long_Long_Integer is
   begin
        return This.startTime;
   end getStartTime;

   procedure setRunning (This : in out AndroidDebug; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   function isRunning (This : in out AndroidDebug) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure getMaxTime (This : in out AndroidDebug) is
      Java_Result : constant Long_Long_Integer := AndroidDebug'Class (This).getMaxTime;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxTime;

   procedure getStartTime (This : in out AndroidDebug) is
      Java_Result : constant Long_Long_Integer := AndroidDebug'Class (This).getStartTime;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStartTime;

   procedure isRunning (This : in out AndroidDebug) is
      Java_Result : constant Boolean := AndroidDebug'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

end org.allbinary.debug.AndroidDebug_Package;


