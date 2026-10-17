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

package org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package is


   type JvmStatistics is tagged;
   type JvmStatistics_Access is access all JvmStatistics'Class;
   type JvmStatistics_Access_Array is array (Natural range <>) of JvmStatistics_Access;
   type JvmStatistics_Access_Array_Access is access all JvmStatistics_Access_Array;

   type JvmStatistics is new Java_Object with record
      runtime : Runtime_Access;
   end record;

   procedure Initialize (This : in out JvmStatistics'Class);
   function Create return JvmStatistics_Access;
   function getFreeMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getFreeMemoryBytes (This : in out JvmStatistics);
   function getFreeMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getFreeMemoryKilobytes (This : in out JvmStatistics);
   function getFreeMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getFreeMemoryMegabytes (This : in out JvmStatistics);
   function getMaxMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getMaxMemoryBytes (This : in out JvmStatistics);
   function getMaxMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getMaxMemoryKilobytes (This : in out JvmStatistics);
   function getMaxMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getMaxMemoryMegabytes (This : in out JvmStatistics);
   function getTotalMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getTotalMemoryBytes (This : in out JvmStatistics);
   function getTotalMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getTotalMemoryKilobytes (This : in out JvmStatistics);
   function getTotalMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getTotalMemoryMegabytes (This : in out JvmStatistics);
   function getFreeMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getFreeMemoryBytesLong (This : in out JvmStatistics);
   function getFreeMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getFreeMemoryKilobytesLong (This : in out JvmStatistics);
   function getFreeMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getFreeMemoryMegabytesLong (This : in out JvmStatistics);
   function getMaxMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getMaxMemoryBytesLong (This : in out JvmStatistics);
   function getMaxMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getMaxMemoryKilobytesLong (This : in out JvmStatistics);
   function getMaxMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getMaxMemoryMegabytesLong (This : in out JvmStatistics);
   function getTotalMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getTotalMemoryBytesLong (This : in out JvmStatistics);
   function getTotalMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getTotalMemoryKilobytesLong (This : in out JvmStatistics);
   function getTotalMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getTotalMemoryMegabytesLong (This : in out JvmStatistics);
   function getFreeMemoryBytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getFreeMemoryBytesString (This : in out JvmStatistics);
   function getFreeMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getFreeMemoryKilobytesString (This : in out JvmStatistics);
   function getFreeMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getFreeMemoryMegabytesString (This : in out JvmStatistics);
   function getMaxMemoryBytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getMaxMemoryBytesString (This : in out JvmStatistics);
   function getMaxMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getMaxMemoryKilobytesString (This : in out JvmStatistics);
   function getMaxMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getMaxMemoryMegabytesString (This : in out JvmStatistics);
   function getTotalMemoryBytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getTotalMemoryBytesString (This : in out JvmStatistics);
   function getTotalMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getTotalMemoryKilobytesString (This : in out JvmStatistics);
   function getTotalMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String;
   procedure getTotalMemoryMegabytesString (This : in out JvmStatistics);
   function getNumberOfThreads (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getNumberOfThreads (This : in out JvmStatistics);
   function getNumberOfThreadsLong (This : in out JvmStatistics) return Long_Long_Integer;
   procedure getNumberOfThreadsLong (This : in out JvmStatistics);
   function getNumberOfThreadsString (This : in out JvmStatistics) return Unbounded_String;
   procedure getNumberOfThreadsString (This : in out JvmStatistics);
   procedure collectGarbage (This : in out JvmStatistics);

end org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package;


