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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package is


   type JvmStatisticsData is tagged;
   type JvmStatisticsData_Access is access all JvmStatisticsData'Class;
   type JvmStatisticsData_Access_Array is array (Natural range <>) of JvmStatisticsData_Access;
   type JvmStatisticsData_Access_Array_Access is access all JvmStatisticsData_Access_Array;

   type JvmStatisticsData is new Java_Object with null record;
   JVM_STATISTICS : Unbounded_String;
   NAME : Unbounded_String;
   TOTAL_MEMORY_BYTES : Unbounded_String;
   TOTAL_MEMORY_KILOBYTES : Unbounded_String;
   TOTAL_MEMORY_MEGABYTES : Unbounded_String;
   FREE_MEMORY_BYTES : Unbounded_String;
   FREE_MEMORY_KILOBYTES : Unbounded_String;
   FREE_MEMORY_MEGABYTES : Unbounded_String;
   MAX_MEMORY_BYTES : Unbounded_String;
   MAX_MEMORY_KILOBYTES : Unbounded_String;
   MAX_MEMORY_MEGABYTES : Unbounded_String;
   NUMBER_OF_THREADS : Unbounded_String;

   procedure Initialize (This : in out JvmStatisticsData'Class);
   function Create return JvmStatisticsData_Access;

end org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package;


