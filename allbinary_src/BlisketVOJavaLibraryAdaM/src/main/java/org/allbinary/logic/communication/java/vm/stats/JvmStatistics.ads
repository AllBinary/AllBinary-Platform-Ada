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

with AllBinary_Java;
limited with org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package;
package org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References is
   type JvmStatistics_Access is access all org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package.JvmStatistics'Class;
   type JvmStatistics_Access_Array is array (Natural range <>) of JvmStatistics_Access;
   type JvmStatistics_Access_Array_Access is access all JvmStatistics_Access_Array;
   type JvmStatistics_Access_Array_Access_Array is array (Natural range <>) of JvmStatistics_Access_Array_Access;
   type JvmStatistics_Access_Array_Access_Array_Access is access all JvmStatistics_Access_Array_Access_Array;
   type JvmStatistics_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JvmStatistics_Access_Array_Access;
   end record;
   function Java_Box (Value : JvmStatistics_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JvmStatistics_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JvmStatistics_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JvmStatistics_Access_Array_Access is (if Value /= null and then Value.all in JvmStatistics_Access_Array_Object'Class then JvmStatistics_Access_Array_Object'Class (Value.all).Value else null);
   type JvmStatistics_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JvmStatistics_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : JvmStatistics_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JvmStatistics_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JvmStatistics_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JvmStatistics_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in JvmStatistics_Access_Array_Access_Array_Object'Class then JvmStatistics_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References;

with org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Runtime_Package; use java.lang.Runtime_Package;

package org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package is

   package Runtime_Package renames Standard.java.lang.Runtime_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype JvmStatistics_Access is org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.JvmStatistics_Access;
   function "=" (Left, Right : JvmStatistics_Access) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References."=";
   subtype JvmStatistics_Access_Array is org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.JvmStatistics_Access_Array;
   function "=" (Left, Right : JvmStatistics_Access_Array) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References."=";
   subtype JvmStatistics_Access_Array_Access is org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.JvmStatistics_Access_Array_Access;
   function "=" (Left, Right : JvmStatistics_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References."=";
   function Java_Box (Value : JvmStatistics_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.Java_Box;
   function Java_Unbox_JvmStatistics_Access_Array (Value : access Java_Object'Class) return JvmStatistics_Access_Array_Access renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.Java_Unbox_JvmStatistics_Access_Array;
   subtype JvmStatistics_Access_Array_Access_Array is org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.JvmStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : JvmStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References."=";
   subtype JvmStatistics_Access_Array_Access_Array_Access is org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.JvmStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JvmStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References."=";
   function Java_Box (Value : JvmStatistics_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.Java_Box;
   function Java_Unbox_JvmStatistics_Access_Array_Access_Array (Value : access Java_Object'Class) return JvmStatistics_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package_References.Java_Unbox_JvmStatistics_Access_Array_Access_Array;

   type JvmStatistics is new Java_Object with record
      runtime : Runtime_Access;
   end record;

   procedure Initialize (This : in out JvmStatistics'Class);
   function Create return JvmStatistics_Access;
   function getFreeMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getFreeMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getFreeMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getMaxMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getMaxMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getMaxMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getTotalMemoryBytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getTotalMemoryKilobytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getTotalMemoryMegabytes (This : in out JvmStatistics) return Long_Long_Integer;
   function getFreeMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getFreeMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getFreeMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getMaxMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getMaxMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getMaxMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getTotalMemoryBytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getTotalMemoryKilobytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getTotalMemoryMegabytesLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getFreeMemoryBytesString (This : in out JvmStatistics) return Unbounded_String;
   function getFreeMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String;
   function getFreeMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String;
   function getMaxMemoryBytesString (This : in out JvmStatistics) return Unbounded_String;
   function getMaxMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String;
   function getMaxMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String;
   function getTotalMemoryBytesString (This : in out JvmStatistics) return Unbounded_String;
   function getTotalMemoryKilobytesString (This : in out JvmStatistics) return Unbounded_String;
   function getTotalMemoryMegabytesString (This : in out JvmStatistics) return Unbounded_String;
   function getNumberOfThreads (This : in out JvmStatistics) return Long_Long_Integer;
   function getNumberOfThreadsLong (This : in out JvmStatistics) return Long_Long_Integer;
   function getNumberOfThreadsString (This : in out JvmStatistics) return Unbounded_String;
   procedure collectGarbage (This : in out JvmStatistics);

end org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package;


