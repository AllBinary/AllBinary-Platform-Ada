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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.canvas.ProfilingRefreshHelper_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out ProfilingRefreshHelper'Class) is
   begin
      null;
      This.firstTime := True;
      This.bestFrameProcessingTime := 0;
      This.worstFrameProcessingTime := 0;
      This.frameProcessingTimeElapsed := 0;
   end Initialize_Fields;


   function getInstance return AndroidGameStatistics_Access is
   begin
        return ProfilingRefreshHelper_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ProfilingRefreshHelper'Class) is
   begin
      AndroidGameStatistics_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ProfilingRefreshHelper_Access is
      This : constant ProfilingRefreshHelper_Access := new ProfilingRefreshHelper;
   begin
      ProfilingRefreshHelper_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initView (This : in out ProfilingRefreshHelper; view_Param : access View_Package.View'Class) is
      view : constant View_Access := View_Access (view_Param);
   begin
        AndroidGameStatistics (This).initView (view);
        This.frameProcessingTimeElapsed := ProfilingRefreshHelper'Class (This).getTimeDelayHelper.getStartTime;
        This.bestFrameProcessingTime := Integer'Last;
        This.worstFrameProcessingTime := 0;
   end initView;

   procedure nextFrame (This : in out ProfilingRefreshHelper) is
   begin
        This.frameProcessingTimeElapsed := (Java_Current_Time_Millis) - (This.frameProcessingTimeElapsed);
        if (This.firstTime) /= (True) then
            if (This.frameProcessingTimeElapsed) > (Long_Long_Integer (This.worstFrameProcessingTime)) then
                This.worstFrameProcessingTime := Integer (This.frameProcessingTimeElapsed);
            end if;
            if (This.frameProcessingTimeElapsed) < (Long_Long_Integer (This.bestFrameProcessingTime)) then
                This.bestFrameProcessingTime := Integer (This.frameProcessingTimeElapsed);
            end if;
        else
            This.firstTime := False;
        end if;
        AndroidGameStatistics (This).nextFrame;
   end nextFrame;

   function toString (This : in out ProfilingRefreshHelper) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (AndroidGameStatistics (This).toString).append (To_Unbounded_String (" Worst: ")).appendint (This.worstFrameProcessingTime).append (To_Unbounded_String (" Best: ")).appendint (This.bestFrameProcessingTime).toString;
   end toString;

begin
   null;
   instance := ProfilingRefreshHelper_Package.Create;

end org.allbinary.canvas.ProfilingRefreshHelper_Package;


