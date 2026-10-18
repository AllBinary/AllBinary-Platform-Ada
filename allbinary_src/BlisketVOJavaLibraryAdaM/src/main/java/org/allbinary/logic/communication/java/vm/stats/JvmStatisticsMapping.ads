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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package; use org.allbinary.logic.communication.java.vm.stats.JvmStatistics_Package;

package org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;

   type JvmStatisticsMapping is tagged;
   type JvmStatisticsMapping_Access is access all JvmStatisticsMapping'Class;
   type JvmStatisticsMapping_Access_Array is array (Natural range <>) of JvmStatisticsMapping_Access;
   type JvmStatisticsMapping_Access_Array_Access is access all JvmStatisticsMapping_Access_Array;
   type JvmStatisticsMapping_Access_Array_Access_Array is array (Natural range <>) of JvmStatisticsMapping_Access_Array_Access;
   type JvmStatisticsMapping_Access_Array_Access_Array_Access is access all JvmStatisticsMapping_Access_Array_Access_Array;

   type JvmStatisticsMapping is new JvmStatistics and TableMappingInterface with null record;

   procedure Initialize (This : in out JvmStatisticsMapping'Class);
   function Create return JvmStatisticsMapping_Access;
   function toHashMap (This : in out JvmStatisticsMapping) return HashMap_Access;
   function getKey (This : in out JvmStatisticsMapping) return Java_Object_Access;
   function toVector (This : in out JvmStatisticsMapping) return BasicArrayList_Access;

end org.allbinary.logic.communication.java.vm.stats.JvmStatisticsMapping_Package;


