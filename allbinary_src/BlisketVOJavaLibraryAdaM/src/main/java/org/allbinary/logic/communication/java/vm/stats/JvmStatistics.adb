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



package body org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package is

   procedure Initialize_Fields (This : in out JvmStatistics'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out JvmStatistics'Class) is
   begin
      Initialize_Fields (This);
        This.runtime := Runtime_Package.getRuntime;
   end Initialize;

   function Create return JvmStatistics_Access is
      This : constant JvmStatistics_Access := new JvmStatistics;
   begin
      JvmStatistics_Package.Initialize (This.all);
      return This;
   end Create;

   function getFreeMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.runtime.freeMemory;
   end getFreeMemoryBytes;

   function getFreeMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (JvmStatistics'Class (This).getFreeMemoryBytes) / (1024);
   end getFreeMemoryKilobytes;

   function getFreeMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (JvmStatistics'Class (This).getFreeMemoryKilobytes) / (1024);
   end getFreeMemoryMegabytes;

   function getMaxMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.runtime.maxMemory;
   end getMaxMemoryBytes;

   function getMaxMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (JvmStatistics'Class (This).getMaxMemoryBytes) / (1024);
   end getMaxMemoryKilobytes;

   function getMaxMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (JvmStatistics'Class (This).getMaxMemoryKilobytes) / (1024);
   end getMaxMemoryMegabytes;

   function getTotalMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.runtime.totalMemory;
   end getTotalMemoryBytes;

   function getTotalMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (JvmStatistics'Class (This).getTotalMemoryBytes) / (1024);
   end getTotalMemoryKilobytes;

   function getTotalMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (JvmStatistics'Class (This).getTotalMemoryKilobytes) / (1024);
   end getTotalMemoryMegabytes;

   function getFreeMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getFreeMemoryBytes;
   end getFreeMemoryBytesLong;

   function getFreeMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getFreeMemoryKilobytes;
   end getFreeMemoryKilobytesLong;

   function getFreeMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getFreeMemoryMegabytes;
   end getFreeMemoryMegabytesLong;

   function getMaxMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getMaxMemoryBytes;
   end getMaxMemoryBytesLong;

   function getMaxMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getMaxMemoryKilobytes;
   end getMaxMemoryKilobytesLong;

   function getMaxMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getMaxMemoryMegabytes;
   end getMaxMemoryMegabytesLong;

   function getTotalMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getTotalMemoryBytes;
   end getTotalMemoryBytesLong;

   function getTotalMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getTotalMemoryKilobytes;
   end getTotalMemoryKilobytesLong;

   function getTotalMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getTotalMemoryMegabytes;
   end getTotalMemoryMegabytesLong;

   function getFreeMemoryBytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getFreeMemoryBytesLong.toString;
   end getFreeMemoryBytesString;

   function getFreeMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getFreeMemoryKilobytesLong.toString;
   end getFreeMemoryKilobytesString;

   function getFreeMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getFreeMemoryMegabytesLong.toString;
   end getFreeMemoryMegabytesString;

   function getMaxMemoryBytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getMaxMemoryBytesLong.toString;
   end getMaxMemoryBytesString;

   function getMaxMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getMaxMemoryKilobytesLong.toString;
   end getMaxMemoryKilobytesString;

   function getMaxMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getMaxMemoryMegabytesLong.toString;
   end getMaxMemoryMegabytesString;

   function getTotalMemoryBytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getTotalMemoryBytesLong.toString;
   end getTotalMemoryBytesString;

   function getTotalMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getTotalMemoryKilobytesLong.toString;
   end getTotalMemoryKilobytesString;

   function getTotalMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getTotalMemoryMegabytesLong.toString;
   end getTotalMemoryMegabytesString;

   function getNumberOfThreads (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return Thread_Package.activeCount;
   end getNumberOfThreads;

   function getNumberOfThreadsLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return JvmStatistics'Class (This).getNumberOfThreads;
   end getNumberOfThreadsLong;

   function getNumberOfThreadsString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return JvmStatistics'Class (This).getNumberOfThreadsLong.toString;
   end getNumberOfThreadsString;

   procedure collectGarbage (This : in out JvmStatistics) is
   begin
        This.runtime.gc;
   end collectGarbage;

end org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package;


