-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with javax.microedition.rms.RecordComparator_Package; use javax.microedition.rms.RecordComparator_Package;

package org.allbinary.game.configuration.persistance.NullRecordComparator_Package is

   package RecordComparator_Package renames Standard.javax.microedition.rms.RecordComparator_Package;

   type NullRecordComparator is tagged;
   type NullRecordComparator_Access is access all NullRecordComparator'Class;
   type NullRecordComparator_Access_Array is array (Natural range <>) of NullRecordComparator_Access;
   type NullRecordComparator_Access_Array_Access is access all NullRecordComparator_Access_Array;
   type NullRecordComparator_Access_Array_Access_Array is array (Natural range <>) of NullRecordComparator_Access_Array_Access;
   type NullRecordComparator_Access_Array_Access_Array_Access is access all NullRecordComparator_Access_Array_Access_Array;

   type NullRecordComparator is new Java_Object and RecordComparator with null record;
   NULL_RECORD_COMPARATOR : NullRecordComparator_Access;

   procedure Initialize (This : in out NullRecordComparator'Class);
   function Create return NullRecordComparator_Access;
   function compare (This : in out NullRecordComparator; rec1 : Short_Short_Integer_Array_Access; rec2 : Short_Short_Integer_Array_Access) return Integer;
   procedure compare (This : in out NullRecordComparator; rec1 : Short_Short_Integer_Array_Access; rec2 : Short_Short_Integer_Array_Access);

end org.allbinary.game.configuration.persistance.NullRecordComparator_Package;


