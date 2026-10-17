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


package body org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping_Package is

   procedure Initialize_Fields (This : in out JvmStatisticsMapping'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out JvmStatisticsMapping'Class) is
   begin
        JvmStatistics_Package.Initialize (This);
   end Initialize;

   function Create return JvmStatisticsMapping_Access is
      This : constant JvmStatisticsMapping_Access := new JvmStatisticsMapping;
   begin
      JvmStatisticsMapping_Package.Initialize (This.all);
      return This;
   end Create;

   function toHashMap (This : in out JvmStatisticsMapping) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (JvmStatisticsData_Package.FREE_MEMORY_BYTES, This.getFreeMemoryBytesString);
        hashMap.put (JvmStatisticsData_Package.FREE_MEMORY_KILOBYTES, This.getFreeMemoryKilobytesString);
        hashMap.put (JvmStatisticsData_Package.FREE_MEMORY_MEGABYTES, This.getFreeMemoryMegabytesString);
        hashMap.put (JvmStatisticsData_Package.MAX_MEMORY_BYTES, This.getMaxMemoryBytesString);
        hashMap.put (JvmStatisticsData_Package.MAX_MEMORY_KILOBYTES, This.getMaxMemoryKilobytesString);
        hashMap.put (JvmStatisticsData_Package.MAX_MEMORY_MEGABYTES, This.getMaxMemoryMegabytesString);
        hashMap.put (JvmStatisticsData_Package.NUMBER_OF_THREADS, This.getNumberOfThreadsString);
        hashMap.put (JvmStatisticsData_Package.TOTAL_MEMORY_BYTES, This.getTotalMemoryBytesString);
        hashMap.put (JvmStatisticsData_Package.TOTAL_MEMORY_KILOBYTES, This.getTotalMemoryKilobytesString);
        hashMap.put (JvmStatisticsData_Package.TOTAL_MEMORY_MEGABYTES, This.getTotalMemoryMegabytesString);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function getKey (This : in out JvmStatisticsMapping) return Java_Object_Access is
   begin
        return JvmStatisticsData_Package.NAME;
   end getKey;

   --  throws Exception
   function toVector (This : in out JvmStatisticsMapping) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayListD_Package.Create;
        vector.add (This.getFreeMemoryBytesString);
        vector.add (This.getFreeMemoryKilobytesString);
        vector.add (This.getFreeMemoryMegabytesString);
        vector.add (This.getMaxMemoryBytesString);
        vector.add (This.getMaxMemoryKilobytesString);
        vector.add (This.getMaxMemoryMegabytesString);
        vector.add (This.getNumberOfThreadsString);
        vector.add (This.getTotalMemoryBytesString);
        vector.add (This.getTotalMemoryKilobytesString);
        vector.add (This.getTotalMemoryMegabytesString);
        return vector;
   end toVector;

end org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping_Package;


