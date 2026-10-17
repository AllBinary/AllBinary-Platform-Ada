-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.time.GameTickTimeDelayHelper_Package is

   procedure Initialize_Fields (This : in out GameTickTimeDelayHelper'Class) is
   begin
      null;
      This.timeDelta := 0;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameTickTimeDelayHelper'Class; startTime : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.startTime := startTime;
        This.lastStartTime := 0;
   end Initialize;

   function Create (startTime : Long_Long_Integer) return GameTickTimeDelayHelper_Access is
      This : constant GameTickTimeDelayHelper_Access := new GameTickTimeDelayHelper;
   begin
      GameTickTimeDelayHelper_Package.Initialize (This.all, startTime);
      return This;
   end Create;

   function setStartTime (This : in out GameTickTimeDelayHelper) return Long_Long_Integer is
   begin
        This.startTime := Java_Current_Time_Millis;
        return This.startTime;
   end setStartTime;

   procedure loop_Id (This : in out GameTickTimeDelayHelper) is
   begin
        if (This.lastStartTime) = (Long_Package.MIN_VALUE) then
            This.timeDelta := 0;
        else
            This.timeDelta := (Java_Current_Time_Millis) - (This.lastStartTime);
        end if;
   end loop_Id;

   function getTimeFromStart (This : in out GameTickTimeDelayHelper) return Long_Long_Integer is
   begin
        return (This.startTime) - (This.lastStartTime);
   end getTimeFromStart;

end org.allbinary.time.GameTickTimeDelayHelper_Package;


