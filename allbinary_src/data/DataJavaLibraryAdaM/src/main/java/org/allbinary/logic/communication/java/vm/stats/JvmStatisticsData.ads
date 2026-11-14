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
limited with org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package;
package org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References is
   type JvmStatisticsData_Access is access all org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package.JvmStatisticsData'Class;
   type JvmStatisticsData_Access_Array is array (Natural range <>) of JvmStatisticsData_Access;
   type JvmStatisticsData_Access_Array_Access is access all JvmStatisticsData_Access_Array;
   type JvmStatisticsData_Access_Array_Access_Array is array (Natural range <>) of JvmStatisticsData_Access_Array_Access;
   type JvmStatisticsData_Access_Array_Access_Array_Access is access all JvmStatisticsData_Access_Array_Access_Array;
   type JvmStatisticsData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JvmStatisticsData_Access_Array_Access;
   end record;
   function Java_Box (Value : JvmStatisticsData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JvmStatisticsData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JvmStatisticsData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JvmStatisticsData_Access_Array_Access is (if Value /= null and then Value.all in JvmStatisticsData_Access_Array_Object'Class then JvmStatisticsData_Access_Array_Object'Class (Value.all).Value else null);
   type JvmStatisticsData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JvmStatisticsData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : JvmStatisticsData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JvmStatisticsData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JvmStatisticsData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JvmStatisticsData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in JvmStatisticsData_Access_Array_Access_Array_Object'Class then JvmStatisticsData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References;

with org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype JvmStatisticsData_Access is org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.JvmStatisticsData_Access;
   function "=" (Left, Right : JvmStatisticsData_Access) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References."=";
   subtype JvmStatisticsData_Access_Array is org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.JvmStatisticsData_Access_Array;
   function "=" (Left, Right : JvmStatisticsData_Access_Array) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References."=";
   subtype JvmStatisticsData_Access_Array_Access is org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.JvmStatisticsData_Access_Array_Access;
   function "=" (Left, Right : JvmStatisticsData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References."=";
   function Java_Box (Value : JvmStatisticsData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.Java_Box;
   function Java_Unbox_JvmStatisticsData_Access_Array (Value : access Java_Object'Class) return JvmStatisticsData_Access_Array_Access renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.Java_Unbox_JvmStatisticsData_Access_Array;
   subtype JvmStatisticsData_Access_Array_Access_Array is org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.JvmStatisticsData_Access_Array_Access_Array;
   function "=" (Left, Right : JvmStatisticsData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References."=";
   subtype JvmStatisticsData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.JvmStatisticsData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JvmStatisticsData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References."=";
   function Java_Box (Value : JvmStatisticsData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.Java_Box;
   function Java_Unbox_JvmStatisticsData_Access_Array_Access_Array (Value : access Java_Object'Class) return JvmStatisticsData_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.java.vm.stats.JvmStatisticsData_Package_References.Java_Unbox_JvmStatisticsData_Access_Array_Access_Array;

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


