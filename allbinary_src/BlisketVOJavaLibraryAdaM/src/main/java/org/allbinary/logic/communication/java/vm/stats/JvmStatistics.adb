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
      Initialize (This.all);
      return This;
   end Create;

   function getFreeMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.runtime.freeMemory;
   end getFreeMemoryBytes;

   function getFreeMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (This.getFreeMemoryBytes) / (1024);
   end getFreeMemoryKilobytes;

   function getFreeMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (This.getFreeMemoryKilobytes) / (1024);
   end getFreeMemoryMegabytes;

   function getMaxMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.runtime.maxMemory;
   end getMaxMemoryBytes;

   function getMaxMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (This.getMaxMemoryBytes) / (1024);
   end getMaxMemoryKilobytes;

   function getMaxMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (This.getMaxMemoryKilobytes) / (1024);
   end getMaxMemoryMegabytes;

   function getTotalMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.runtime.totalMemory;
   end getTotalMemoryBytes;

   function getTotalMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (This.getTotalMemoryBytes) / (1024);
   end getTotalMemoryKilobytes;

   function getTotalMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return (This.getTotalMemoryKilobytes) / (1024);
   end getTotalMemoryMegabytes;

   function getFreeMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getFreeMemoryBytes;
   end getFreeMemoryBytesLong;

   function getFreeMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getFreeMemoryKilobytes;
   end getFreeMemoryKilobytesLong;

   function getFreeMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getFreeMemoryMegabytes;
   end getFreeMemoryMegabytesLong;

   function getMaxMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getMaxMemoryBytes;
   end getMaxMemoryBytesLong;

   function getMaxMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getMaxMemoryKilobytes;
   end getMaxMemoryKilobytesLong;

   function getMaxMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getMaxMemoryMegabytes;
   end getMaxMemoryMegabytesLong;

   function getTotalMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getTotalMemoryBytes;
   end getTotalMemoryBytesLong;

   function getTotalMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getTotalMemoryKilobytes;
   end getTotalMemoryKilobytesLong;

   function getTotalMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getTotalMemoryMegabytes;
   end getTotalMemoryMegabytesLong;

   function getFreeMemoryBytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getFreeMemoryBytesLong.toString;
   end getFreeMemoryBytesString;

   function getFreeMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getFreeMemoryKilobytesLong.toString;
   end getFreeMemoryKilobytesString;

   function getFreeMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getFreeMemoryMegabytesLong.toString;
   end getFreeMemoryMegabytesString;

   function getMaxMemoryBytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getMaxMemoryBytesLong.toString;
   end getMaxMemoryBytesString;

   function getMaxMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getMaxMemoryKilobytesLong.toString;
   end getMaxMemoryKilobytesString;

   function getMaxMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getMaxMemoryMegabytesLong.toString;
   end getMaxMemoryMegabytesString;

   function getTotalMemoryBytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getTotalMemoryBytesLong.toString;
   end getTotalMemoryBytesString;

   function getTotalMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getTotalMemoryKilobytesLong.toString;
   end getTotalMemoryKilobytesString;

   function getTotalMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getTotalMemoryMegabytesLong.toString;
   end getTotalMemoryMegabytesString;

   function getNumberOfThreads (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return Thread_Package.activeCount;
   end getNumberOfThreads;

   function getNumberOfThreadsLong (This : in out JvmStatistics) return Long_Long_Integer is
   begin
        return This.getNumberOfThreads;
   end getNumberOfThreadsLong;

   function getNumberOfThreadsString (This : in out JvmStatistics) return Unbounded_String is
   begin
        return This.getNumberOfThreadsLong.toString;
   end getNumberOfThreadsString;

   procedure collectGarbage (This : in out JvmStatistics) is
   begin
        This.runtime.gc;
   end collectGarbage;

   procedure getFreeMemoryBytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getFreeMemoryBytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryBytes;

   procedure getFreeMemoryKilobytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getFreeMemoryKilobytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryKilobytes;

   procedure getFreeMemoryMegabytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getFreeMemoryMegabytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryMegabytes;

   procedure getMaxMemoryBytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getMaxMemoryBytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryBytes;

   procedure getMaxMemoryKilobytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getMaxMemoryKilobytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryKilobytes;

   procedure getMaxMemoryMegabytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getMaxMemoryMegabytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryMegabytes;

   procedure getTotalMemoryBytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getTotalMemoryBytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryBytes;

   procedure getTotalMemoryKilobytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getTotalMemoryKilobytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryKilobytes;

   procedure getTotalMemoryMegabytes (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getTotalMemoryMegabytes;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryMegabytes;

   procedure getFreeMemoryBytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getFreeMemoryBytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryBytesLong;

   procedure getFreeMemoryKilobytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getFreeMemoryKilobytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryKilobytesLong;

   procedure getFreeMemoryMegabytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getFreeMemoryMegabytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryMegabytesLong;

   procedure getMaxMemoryBytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getMaxMemoryBytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryBytesLong;

   procedure getMaxMemoryKilobytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getMaxMemoryKilobytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryKilobytesLong;

   procedure getMaxMemoryMegabytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getMaxMemoryMegabytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryMegabytesLong;

   procedure getTotalMemoryBytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getTotalMemoryBytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryBytesLong;

   procedure getTotalMemoryKilobytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getTotalMemoryKilobytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryKilobytesLong;

   procedure getTotalMemoryMegabytesLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getTotalMemoryMegabytesLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryMegabytesLong;

   procedure getFreeMemoryBytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getFreeMemoryBytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryBytesString;

   procedure getFreeMemoryKilobytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getFreeMemoryKilobytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryKilobytesString;

   procedure getFreeMemoryMegabytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getFreeMemoryMegabytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFreeMemoryMegabytesString;

   procedure getMaxMemoryBytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getMaxMemoryBytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryBytesString;

   procedure getMaxMemoryKilobytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getMaxMemoryKilobytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryKilobytesString;

   procedure getMaxMemoryMegabytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getMaxMemoryMegabytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxMemoryMegabytesString;

   procedure getTotalMemoryBytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getTotalMemoryBytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryBytesString;

   procedure getTotalMemoryKilobytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getTotalMemoryKilobytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryKilobytesString;

   procedure getTotalMemoryMegabytesString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getTotalMemoryMegabytesString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalMemoryMegabytesString;

   procedure getNumberOfThreads (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getNumberOfThreads;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberOfThreads;

   procedure getNumberOfThreadsLong (This : in out JvmStatistics) is
      Java_Result : constant Long_Long_Integer := JvmStatistics'Class (This).getNumberOfThreadsLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberOfThreadsLong;

   procedure getNumberOfThreadsString (This : in out JvmStatistics) is
      Java_Result : constant Unbounded_String := JvmStatistics'Class (This).getNumberOfThreadsString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNumberOfThreadsString;

end org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package;


