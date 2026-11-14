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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package; use org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;

package body org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
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
        hashMap := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
        hashMap.put (JvmStatisticsData_Package.FREE_MEMORY_BYTES, Java_Box (JvmStatisticsMapping'Class (This).getFreeMemoryBytesString));
        hashMap.put (JvmStatisticsData_Package.FREE_MEMORY_KILOBYTES, Java_Box (JvmStatisticsMapping'Class (This).getFreeMemoryKilobytesString));
        hashMap.put (JvmStatisticsData_Package.FREE_MEMORY_MEGABYTES, Java_Box (JvmStatisticsMapping'Class (This).getFreeMemoryMegabytesString));
        hashMap.put (JvmStatisticsData_Package.MAX_MEMORY_BYTES, Java_Box (JvmStatisticsMapping'Class (This).getMaxMemoryBytesString));
        hashMap.put (JvmStatisticsData_Package.MAX_MEMORY_KILOBYTES, Java_Box (JvmStatisticsMapping'Class (This).getMaxMemoryKilobytesString));
        hashMap.put (JvmStatisticsData_Package.MAX_MEMORY_MEGABYTES, Java_Box (JvmStatisticsMapping'Class (This).getMaxMemoryMegabytesString));
        hashMap.put (JvmStatisticsData_Package.NUMBER_OF_THREADS, Java_Box (JvmStatisticsMapping'Class (This).getNumberOfThreadsString));
        hashMap.put (JvmStatisticsData_Package.TOTAL_MEMORY_BYTES, Java_Box (JvmStatisticsMapping'Class (This).getTotalMemoryBytesString));
        hashMap.put (JvmStatisticsData_Package.TOTAL_MEMORY_KILOBYTES, Java_Box (JvmStatisticsMapping'Class (This).getTotalMemoryKilobytesString));
        hashMap.put (JvmStatisticsData_Package.TOTAL_MEMORY_MEGABYTES, Java_Box (JvmStatisticsMapping'Class (This).getTotalMemoryMegabytesString));
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
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getFreeMemoryBytesString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getFreeMemoryKilobytesString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getFreeMemoryMegabytesString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getMaxMemoryBytesString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getMaxMemoryKilobytesString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getMaxMemoryMegabytesString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getNumberOfThreadsString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getTotalMemoryBytesString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getTotalMemoryKilobytesString));
        vector.add (Java_Box (JvmStatisticsMapping'Class (This).getTotalMemoryMegabytesString));
        return vector;
   end toVector;

end org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping_Package;


