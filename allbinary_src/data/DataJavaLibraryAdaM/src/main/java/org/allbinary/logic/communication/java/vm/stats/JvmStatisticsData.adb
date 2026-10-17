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


package body org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package is

   procedure Initialize_Fields (This : in out JvmStatisticsData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out JvmStatisticsData'Class) is
   begin
        null;
   end Initialize;

   function Create return JvmStatisticsData_Access is
      This : constant JvmStatisticsData_Access := new JvmStatisticsData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   JVM_STATISTICS := To_Unbounded_String ("JVM_STATISTICS_");
   NAME := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("NAME");
   TOTAL_MEMORY_BYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("TOTAL_MEMORY_BYTES");
   TOTAL_MEMORY_KILOBYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("TOTAL_MEMORY_KILOBYTES");
   TOTAL_MEMORY_MEGABYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("TOTAL_MEMORY_MEGABYTES");
   FREE_MEMORY_BYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("FREE_MEMORY_BYTES");
   FREE_MEMORY_KILOBYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("FREE_MEMORY_KILOBYTES");
   FREE_MEMORY_MEGABYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("FREE_MEMORY_MEGABYTES");
   MAX_MEMORY_BYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("MAX_MEMORY_BYTES");
   MAX_MEMORY_KILOBYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("MAX_MEMORY_KILOBYTES");
   MAX_MEMORY_MEGABYTES := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("MAX_MEMORY_MEGABYTES");
   NUMBER_OF_THREADS := Java_Image (JvmStatisticsData_Package.JVM_STATISTICS) & To_Unbounded_String ("NUMBER_OF_THREADS");

end org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package;


